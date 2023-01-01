#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/linkage.h>
#include <linux/slab.h>
#include <linux/sysfs.h>
#include <linux/fs.h>
#include <linux/path.h>
#include <linux/namei.h>
#include <linux/hdreg.h>
#include <linux/version.h>
#include <asm/pgtable.h>
#include <linux/device.h>
#include <linux/of_platform.h>
#include <scsi/scsi_device.h>
#include <scsi/scsi_ioctl.h>
#include <scsi/sg.h>
#include "get_syscall.h"

static int fake_atta_info(char *buf, int len);

typedef void (*fun)(void);
/** x64 sys_call_table: https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/entry/syscalls/syscall_64.tbl */
static fun *x64_sys_call_table;
/** x32 sys_call_table: https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/entry/syscalls/syscall_32.tbl */
static fun *ia32_sys_call_table;

// 64 bit kernel that support Binary Emulations
// CONFIG_IA32_EMULATION=y
static int find_syscall_table64_ia32(void)
{
    struct desc_ptr idtr;
    gate_desc *idt_table, *system_call_gate;
    unsigned char *entry_INT80 = NULL;
    unsigned char *do_int80_syscall = NULL;
    unsigned long offset;
    int i;
    u_char *off;

    // pr_info("Finding sys_call_table x86_64 IA32..\n");
    //  Get CPU IDT table
    asm("sidt %0"
        : "=m"(idtr));

    // pr_info("IDT address %px  %u\n", (void *)idtr.address, idtr.size);
    //  IDT address fffffe0000000000  4095

    if (idtr.size == 0 || idtr.address == 0)
    {
        pr_err("Can't get idtr value");
        return -1;
    }

    // set table pointer
    idt_table = (void *)idtr.address;

    // set gate_desc for int 0x80
    system_call_gate = &idt_table[0x80];

    // get int 0x80 handler offset
    entry_INT80 = (void *)gate_offset(system_call_gate);

    // pr_info("Syscall Gates %px\n", entry_INT80);
    // pr_info("finding call OPCODE..\n");
    for (i = 0; i < 256; i++)
    {
        entry_INT80++;
        if (*(entry_INT80) == 0xe8)
        {
            // e8 fe 04 60 ff  call   0xffffffff81001bb0 <do_int80_syscall_32>
            pr_info("Found at (%i) %px : %02x %02x %02x %02x %02x\n", i,
                    entry_INT80, *(entry_INT80), *(entry_INT80 + 1), *(entry_INT80 + 2), *(entry_INT80 + 3), *(entry_INT80 + 4));
            // 32 bit adress in x64 system
            offset = *(entry_INT80 + 1) |
                     (*(entry_INT80 + 2) << 8) |
                     (*(entry_INT80 + 3) << 16) |
                     (*(entry_INT80 + 4) << 24);
            // Adjust for $RIP of 5 byte (1 instruction )
            entry_INT80 += 5;
            do_int80_syscall = entry_INT80 + offset;
            pr_info("do_int80_syscall offset %08lx at %px\n", offset, do_int80_syscall);
            break;
        }
    }
    if (do_int80_syscall == NULL)
    {
        pr_err("Unable to locate do_int80_syscall\n");
        return -1;
    }

    off = do_int80_syscall;
    // Direct call from sys_call_table
    pr_info("finding direct call from sys_call_table\n");
    for (i = 0; i < 256; i++)
    {
        do_int80_syscall++;
        // ff 14 c5 a0 11 a0 81   call   *-0x7e5fee60(,%rax,8)
        if (*(do_int80_syscall) == 0xff &&
            *(do_int80_syscall + 1) == 0x14 &&
            *(do_int80_syscall + 2) == 0xc5)
        {
            // syscall address is here
            do_int80_syscall += 3;
            ia32_sys_call_table = (void *)((0xffffffff00000000U) | *((u32 *)do_int80_syscall));
            return 0;
        }
    }

    if (ia32_sys_call_table != NULL)
    {
        // Found through call pattern
        return 0;
    }
    do_int80_syscall = off;
    // Finding array access to sys_call_table
    pr_info("Finding sys_call_table array access\n");
    for (i = 0; i < 256; i++)
    {
        do_int80_syscall++;
        // 48 8b 04 c5 a0 11 e0 81 mov    -0x7e1fee60(,%rax,8),%rax
        if (*(do_int80_syscall) == 0x48 &&
            *(do_int80_syscall + 1) == 0x8b &&
            *(do_int80_syscall + 2) == 0x04 &&
            *(do_int80_syscall + 3) == 0xc5)
        {
            // syscall address is here
            do_int80_syscall += 4;
            pr_info("Found at (%i) %px : %02x %02x %02x %02x\n", i,
                    do_int80_syscall, *(do_int80_syscall), *(do_int80_syscall + 1), *(do_int80_syscall + 2), *(do_int80_syscall + 3));

            ia32_sys_call_table = (void *)((0xffffffff00000000U) | *((u32 *)do_int80_syscall));
            return 0;
        }
    }
    return -1;
}

// Using 32 Bit syscall, because the kernel is compiled with IA32 FLAG. and I targeting IT
// https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/entry/syscalls/syscall_32.tbl
// 1	i386	exit			sys_exit			__ia32_sys_exit
// 5	i386	open			sys_open			__ia32_compat_sys_open
// 54	i386	ioctl			sys_ioctl			__ia32_compat_sys_ioctl
// 11	i386	execve			sys_execve			__ia32_compat_sys_execve
// 16	64	ioctl			__x64_sys_ioctl
// #define nr_open32 5
#define nr_ioctl32 54
#define nr_ioctl64 16
#define nr_execve32 11
#define HDIO_GET_IDENTITY 0x030d /* get IDE identification info */

typedef asmlinkage long (*syscall_fun_t)(struct pt_regs *pt_regs);
static syscall_fun_t old_ioctl32, old_ioctl64, old_execve32;
static struct hd_driveid *hd;
static struct sg_io_hdr *sg;
// size 40
static char *fakeModel = "ASDF ASDF ASDF ASDF                     ";
// size 20
static char *fakeSerial = "X3RH-3XRC00222000212";
// "software ID": RVG6-Z5IM
static char *execve_str = "/sbin/kexec";
//"software ID": N7AC-TPGP

asmlinkage int sg_ata_get_chars(const u_int16_t *word_arr, int start_word,
                                int num_words, int is_big_endian, char *ochars)
{
    int k;
    u_int16_t s;
    char a, b;
    char *op = ochars;

    for (k = start_word; k < (start_word + num_words); ++k)
    {
        s = word_arr[k];
        if (is_big_endian)
        {
            a = s & 0xff;
            b = (s >> 8) & 0xff;
        }
        else
        {
            a = (s >> 8) & 0xff;
            b = s & 0xff;
        }
        if (a == 0)
            break;
        *op++ = a;
        if (b == 0)
            break;
        *op++ = b;
    }
    return op - ochars;
}

asmlinkage int sg_ata_put_chars(const u_int16_t *word_arr, int start_word,
                                int num_words, int is_big_endian, char *ichars)
{
    u_int16_t s;
    char a, b;
    int k = 0;
    u_int16_t *op = word_arr + start_word;

    while (k < (num_words * 2))
    {
        a = ichars[k++];
        b = ichars[k++];
        if (is_big_endian)
        {
            *op = (b << 8) | a;
        }
        else
        {
            *op = (a << 8) | b;
        }
        op++;
        if (a == 0 || b == 0)
            break;
    }
    return (op - (word_arr + start_word + num_words));
}
asmlinkage long fake_ioctl32(struct pt_regs *pt_regs)
{
    // printk("ioctl32: %lx, %lx, %px\n", pt_regs->bx, pt_regs->cx, pt_regs->dx);
    uint8_t *args;
    int ret;
    ret = old_ioctl32(pt_regs);
    switch (pt_regs->cx)
    {
    // https://www.kernel.org/doc/Documentation/ioctl/hdio.txt
    case HDIO_DRIVE_CMD:
        /*
          args[] buffer is filled with register values followed by any
          data returned by the disk.
            args[0]	status
            args[1]	error
            args[2]	NSECTOR
            args[3]	undefined
            args[4+]	NSECTOR * 512 bytes of data returned by the command.
        */
        printk("ioctl32 HDIO_DRIVE_CMD ( %lx, %lx, %px )\n", pt_regs->bx, pt_regs->cx, pt_regs->dx);
        // printk("REQ %8ph\n", pt_regs->dx);
        // ret = old_ioctl32(pt_regs);
        printk("RET %8ph : ", pt_regs->dx);
        args = (void *)pt_regs->dx;
        // printk("RET %516pEhp\n", pt_regs->dx + 4);
        //  https://elixir.bootlin.com/linux/v5.6.3/source/include/uapi/linux/hdreg.h#L239
        //  WIN_IDENTIFY = 0xEC /* ask drive to identify itself	*/

        if (args[0] == 0xec && args[2] == 0 && args[3] > 0)
        {
            printk("FAKED \n");
            // int size = args[3] * 512;
            printk("RET %512pEhp\n", pt_regs->dx + 4);
            sg_ata_put_chars((const unsigned short *)(args + 4), 10, 10, 0, fakeSerial);
            sg_ata_put_chars((const unsigned short *)(args + 4), 27, 20, 0, fakeModel);
            printk("RET %512pEhp\n", pt_regs->dx + 4);
            // print_hex_dump(KERN_DEFAULT, "", DUMP_PREFIX_OFFSET, 16, 2, pt_regs->dx + 4, size, true);
        }
        else
        {
            printk("Ignored \n");
        }
        break;
    // case HDIO_GET_IDENTITY:
    //     hd = (void *)pt_regs->dx;
    //     printk("ioctl32 HDIO_GET_IDENTITY ( %lx, %lx, %px )\n", pt_regs->bx, pt_regs->cx, hd);
    //     if (pt_regs->bx == 3)
    //     { // file handle may vary
    //         memcpy((void *)hd->model, fakeModel, 40);
    //         memcpy((void *)hd->serial_no, fakeSerial, 20);
    //     }
    //     break;

    // case SG_IO:
    //     sg = (void *)pt_regs->dx;
    //     printk("ioctl32 SG_IO: 0x%x 0x%x 0x%x 0x%x\n", sg->cmdp[0], sg->cmdp[1], sg->cmdp[2], sg->cmdp[3]);
    //     break;
    }
    return ret;
}
asmlinkage long fake_ioctl64(struct pt_regs *pt_regs)
{
    int ret = old_ioctl64(pt_regs);
    switch (pt_regs->si)
    {
    case HDIO_DRIVE_CMD:

        printk("ioctl64 HDIO_DRIVE_CMD ( %lx, %lx, %px )\n", pt_regs->di, pt_regs->si, pt_regs->dx);

        break;
    case HDIO_GET_IDENTITY:
        // https://www.kernel.org/doc/Documentation/printk-formats.txt
        printk("ioctl64 HDIO_GET_IDENTITY ( %lx, %lx, %px )\n", pt_regs->di, pt_regs->si, pt_regs->dx);
        hd = (void *)pt_regs->dx;
        memcpy(&(hd->model), fakeModel, 40);
        memcpy(&(hd->serial_no), fakeSerial, 20);
        break;

    case SG_IO:
        sg = (void *)pt_regs->dx;
        char *buf = sg->dxferp;
        printk("ioctl64 SG_IO: 0x%x 0x%x 0x%x 0x%x\n", sg->cmdp[0], sg->cmdp[1], sg->cmdp[2], sg->cmdp[3]);
        // https://elixir.bootlin.com/linux/v5.6.3/source/include/scsi/scsi_proto.h#L32
        // https://github.com/hreinecke/sg3_utils/blob/master/src/sg_vpd.c
        // https://www.seagate.com/files/staticfiles/support/docs/manual/Interface%20manuals/100293068j.pdf
        if (sg->cmdp[0] == 0x12) // OP CODE 0x12h = inquiry
        {
            int evpd = sg->cmdp[2] & 0b10000000;
            switch (sg->cmdp[2])
            {
            case 0x80:      // Unit serial number
                if (buf[3]) // len
                {
                    buf[3] = (char)20;
                    memcpy(&(buf[4]), fakeSerial, 20);
                }
                break;

            case 0x83: // VPD_DEVICE_ID

                break;
            case 0x89: // VPD_ATA_INFO
                if (sg->dxfer_len >= 36)
                {
                }

                break;
            }
            printk("ioctl64 SG_IO 0x12 ( %lx, 0x%x 0x%x ) %i\n%*pEhp\n", pt_regs->di, sg->cmdp[0], sg->cmdp[2], sg->dxfer_len, sg->dxfer_len, sg->dxferp);
        }
        else if (sg->cmdp[0] == 0x85)
        {
            struct scsi_vpd *vpd = (void *)sg->dxferp;
            if (sg->cmdp[2] == 0xe)
            { // ATA INFO
                int cc;
                char tmp[80];
                const char *cp;
                cc = sg_ata_get_chars((const unsigned short *)buf, 27, 20, 0, tmp);
                tmp[cc] = '\0';
                printk("ioctl64 SG_IO 0x85 MODEL  %s\n", tmp);
                cc = sg_ata_get_chars((const unsigned short *)buf, 10, 10, 0, tmp);
                tmp[cc] = '\0';
                printk("ioctl64 SG_IO 0x85 SERIAL %s\n", tmp);
                cc = sg_ata_get_chars((const unsigned short *)buf, 23, 4, 0, tmp);
                tmp[cc] = '\0';
                printk("ioctl64 SG_IO 0x85 FIRMRV %s\n", tmp);
                // Fake it
                sg_ata_put_chars((const unsigned short *)buf, 27, 20, 0, fakeModel);
                sg_ata_put_chars((const unsigned short *)buf, 10, 10, 0, fakeSerial);
            }
        }
        break;
    }

    return ret;
}
asmlinkage long fake_execve32(struct pt_regs *pt_regs)
{
    unsigned int *args = (void *)pt_regs->cx;
    if (args[0] && args[1] && args[2])
    {
        char *arg0 = (void *)args[0];
        char *arg1 = (void *)args[1];
        char *arg2 = (void *)args[2];
        printk("execve32 %s: %s %s %s\n", (char *)pt_regs->bx, arg0, arg1, arg2);
        if (strncmp((void *)pt_regs->bx, execve_str, 11) == 0)
        {
            printk(" *** FAKED KEXEC ***\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
            return 0;
        }
    }
    return old_execve32(pt_regs);
}

// VPD PAGE 0x83
static int fake_dev_ids(u_int8_t *buf, int buf_len)
{
    int off, desig_type, i_len;
    const u_int8_t *bp;
    u_int8_t *ip;
    const char oriSn[21];
    off = -1;
    while ((off + 3) < buf_len)
    {
        if (off < 0)
        {
            off = 0;
        }
        else
        {
            off = (off + buf[off + 3] + 4);
        }
        if ((off + 4) > buf_len)
        {
            break;
        }
        bp = buf + off;
        i_len = bp[3];
        ip = bp + 4;
        desig_type = (bp[1] & 0xf);
        printk("desig_type %d, len %d, %s 8pEhp \n", desig_type, i_len, ip);
        if (desig_type == 0 && i_len == 20)
        {
            // fake serial
            printk("0x83 Serial ori: %.*s\n", i_len, ip);
            memcpy(oriSn, ip, i_len);
            memcpy(ip, fakeSerial, i_len);
            // return 0;
        }
        else if (desig_type == 1 && i_len > 20)
        {
            // check for last 20 byte is SN, fake it too
            if (strncmp(ip + i_len - 20, oriSn, 20) == 0)
            {
                memcpy(ip + i_len - 20, fakeSerial, i_len);
            }
        }
    }
    // printk("0x83 NOT FOUND\n");
    return 0;
}

static int fake_atta_info(char *buf, int len)
{
    int cc;
    char tmp[80];

    if (buf[56] == 0)
    {
        printk("No atta data found\n");
        return -1;
    }
    sg_ata_put_chars((const unsigned short *)(buf + 60), 10, 10, 0, fakeSerial);
    sg_ata_put_chars((const unsigned short *)(buf + 60), 27, 20, 0, fakeModel);
    cc = sg_ata_get_chars((const unsigned short *)(buf + 60), 27, 20,
                          0, tmp);
    tmp[cc] = '\0';
    // printk("    model: %s\n", tmp);
    cc = sg_ata_get_chars((const unsigned short *)(buf + 60), 10, 10,
                          0, tmp);
    tmp[cc] = '\0';
    // printk("    serial number: %s\n", tmp);
    return 0;
}

/** Find root dev by path */
static struct block_device *find_root_dev(const char *path)
{
    struct path root_path;
    struct kstat root_stat;
    if (kern_path(path, 0, &root_path) < 0)
    {
        printk("Fail get root path\n");
        return NULL;
    }
    if (0 != vfs_getattr(&root_path, &root_stat, STATX_ALL, AT_NO_AUTOMOUNT | AT_SYMLINK_NOFOLLOW))
    {
        printk("Fail get root attr\n");
        return NULL;
    }
    path_put(&root_path);
    if ((MAJOR(root_stat.rdev) | MINOR(root_stat.rdev)))
    {
        // its a special device like /dev/sda
        return bdget(root_stat.rdev);
    }
    else
    {
        return bdget(root_stat.dev);
    }
}
// https://elixir.bootlin.com/linux/v5.6.3/source/drivers/scsi/scsi_sysfs.c#L512
static int override_sysfs(void)
{
    struct block_device *root_device;
    struct device *dev, *dev2;
    struct scsi_device *sdev;
    // struct scsi_disk *sdisk;
    struct scsi_vpd *vpd_buf;
    const int vpd_len = 64;
    unsigned char *buf;

    root_device = find_root_dev("/dev/sda");

    if (root_device)
    {
        dev = part_to_dev(root_device->bd_part);
        printk("Root /dev/%s\n", dev_name(dev));
        // dev2 = get_device(dev->parent);
        // printk("Root SCSI %s %s\n", dev->parent->type->name, dev->class->name);
        //  sdisk = to_scsi_disk(dev);

        sdev = to_scsi_device(dev->parent);
        // printk("Root SCSI Disk %s, %s\n", dev->parent->type->name, sdev->model);
        //  printk("Root SCSI %px %8pEhp\n", sdev->vpd_pg80, sdev->vpd_pg80);
        //   sdev = (void *)root_device;

        if (scsi_device_supports_vpd(sdev))
        {

            // faking 0x80
            memcpy(sdev->vpd_pg80->data + 4, fakeSerial, 20);
            // printk("Root VPD %s\n", sdev->vpd_pg80->data + 4);

            // faking 0x83
            fake_dev_ids(sdev->vpd_pg83->data + 4, sdev->vpd_pg83->len - 4);

            // fakinf 0x89
            fake_atta_info(sdev->vpd_pg89->data, sdev->vpd_pg89->len);

            buf = kmalloc(vpd_len, GFP_KERNEL);
            if (scsi_get_vpd_page(sdev, 0x80, buf, vpd_len) == 0)
            {
                printk("Root SCSI %8pEhp\n", buf + 4);
            }
            else
            {
                printk("Can't get vpd buf\n");
            }
            kfree(buf);
        }
        else
        {
            printk("Not support SCSI Page\n");
        }
        // put_device(dev2);
        bdput(root_device);
    }
    else
    {
        printk("Fail bdget\n");
    }
    return 0;
}

static int override_syscall(void)
{
    unsigned int level;
    pte_t *pte;
    old_ioctl32 = (syscall_fun_t)ia32_sys_call_table[nr_ioctl32];
    // old_open32 = (syscall_fun_t)ia32_sys_call_table[nr_open32];
    old_ioctl64 = (syscall_fun_t)x64_sys_call_table[nr_ioctl64];
    old_execve32 = (syscall_fun_t)ia32_sys_call_table[nr_execve32];

    pte = lookup_address((unsigned long)ia32_sys_call_table, &level);
    // change PTE to allow writing
    set_pte_atomic(pte, pte_mkwrite(*pte));
    // ia32_sys_call_table[nr_open32] = (void *)fake_open32;
    ia32_sys_call_table[nr_ioctl32] = (void *)fake_ioctl32;
    ia32_sys_call_table[nr_execve32] = (void *)fake_execve32;
    // reprotect page
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));

    pte = lookup_address((unsigned long)x64_sys_call_table, &level);
    // change PTE to allow writing
    set_pte_atomic(pte, pte_mkwrite(*pte));
    x64_sys_call_table[nr_ioctl64] = (void *)fake_ioctl64;
    // reprotect page
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));

    pr_info("override_syscall done");
    return 0;
}

static int restore_syscall(void)
{
    unsigned int level;
    pte_t *pte;
    pte = lookup_address((unsigned long)ia32_sys_call_table, &level);
    set_pte_atomic(pte, pte_mkwrite(*pte));
    pr_info("sys_call_table writable");
    // ia32_sys_call_table[nr_open32] = (fun)old_open32;
    ia32_sys_call_table[nr_ioctl32] = (fun)old_ioctl32;
    ia32_sys_call_table[nr_execve32] = (fun)old_execve32;
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));

    pte = lookup_address((unsigned long)x64_sys_call_table, &level);
    set_pte_atomic(pte, pte_mkwrite(*pte));
    pr_info("sys_call_table writable");
    x64_sys_call_table[nr_ioctl64] = (fun)old_ioctl64;
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));
    return 0;
}

static int main_init(void)
{
    override_sysfs();
    if (find_syscall_table64_ia32())
    {
        // Show all available symbols
        // kallsyms_on_each_symbol(prsyms_print_symbol, NULL);
    }

    if (ia32_sys_call_table == NULL)
    {
        pr_err("Cannot find sys_call_table\n");
        return -1;
    }
    x64_sys_call_table = (void *)((unsigned long)ia32_sys_call_table - 4032lu);
    pr_info("Found ia32_sys_call_table: %px\n", ia32_sys_call_table);
    pr_info("Found x64_sys_call_table : %px\n", x64_sys_call_table);

    return override_syscall();
    return 0;
}

static void main_exit(void)
{
    if (old_ioctl32 != NULL)
    {
        pr_info("Restoring hook..\n");
        restore_syscall();
    }
    pr_info("Exit..\n");
    return;
}

module_init(main_init);
module_exit(main_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("xxx");
MODULE_DESCRIPTION("Sample.");
MODULE_VERSION("0.01");