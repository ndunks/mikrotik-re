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

// Using 32 Bit syscall, because the kernel is compiled with IA32 FLAG. and I targeting IT
// https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/entry/syscalls/syscall_32.tbl
// 1	i386	exit			sys_exit			__ia32_sys_exit
// 5	i386	open			sys_open			__ia32_compat_sys_open
// 54	i386	ioctl			sys_ioctl			__ia32_compat_sys_ioctl
// 11	i386	execve			sys_execve			__ia32_compat_sys_execve
#define nr_ioctl32 54

typedef asmlinkage long (*syscall_fun_t)(struct pt_regs *pt_regs);
typedef void (*fun)(void);

/** x32 sys_call_table: https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/entry/syscalls/syscall_32.tbl */
static fun *ia32_sys_call_table;

static syscall_fun_t old_ioctl32;
static char *fakeModel = "VMware Virtual IDE Hard Drive           "; // size 40
static char *fakeSerial = "00000000000000000001";                    // size 20
static char originalModel[41], originalSerial[21];
static const char fakeAtta[512] = 
    "\x40\x00\x79\x00\x00\x00\x10\x00\x00\x7e\x00\x02\x3f\x00\x00\x00\x00\x00\x00\x00\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x30\x31\x30\x03\x00\x00\x02\x04\x00\x2e\x32\x2b\x35\x20\x20\x20\x20\x4d\x56\x61\x77\x65\x72\x56\x20\x72\x69\x75\x74\x6c\x61\x49\x20\x45\x44\x48\x20\x72\x61\x20\x64\x72\x44\x76\x69\x20\x65\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x10\x80\x01\x00\x00\x0b\x00\x00\x00\x02\x00\x02\x07\x00\x79\x00\x10\x00\x3f\x00\x70\xdc\x01\x00\x10\x01\x00\xe0\x01\x00\x07\x00\x07\x04"
    "\x03\x00\x78\x00\x78\x00\x78\x00\x78\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\x00\x16\x00\x21\x40\x00\x74\x00\x40\x21\x40\x00\x34\x00\x40\x3f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x60\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00";

static int find_syscall_table64_ia32(void)
{
    struct desc_ptr idtr;
    gate_desc *idt_table, *system_call_gate;
    unsigned char *entry_INT80 = NULL;
    unsigned char *do_int80_syscall = NULL;
    unsigned long offset;
    int i;
    u_char *off;

    //  Get CPU IDT table
    asm("sidt %0"
        : "=m"(idtr));

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
    for (i = 0; i < 256; i++)
    {
        entry_INT80++;
        if (*(entry_INT80) == 0xe8)
        {
            // 32 bit adress in x64 system
            offset = *(entry_INT80 + 1) |
                     (*(entry_INT80 + 2) << 8) |
                     (*(entry_INT80 + 3) << 16) |
                     (*(entry_INT80 + 4) << 24);
            // Adjust for $RIP of 5 byte (1 instruction )
            entry_INT80 += 5;
            do_int80_syscall = entry_INT80 + offset;
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
        return 0; // Found through call pattern
    }

    do_int80_syscall = off;
    // Finding array access to sys_call_table
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
            ia32_sys_call_table = (void *)((0xffffffff00000000U) | *((u32 *)do_int80_syscall));
            return 0;
        }
    }
    return -1;
}

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

asmlinkage int sg_ata_put_chars(u_int16_t *word_arr, int start_word,
                                int num_words, int is_big_endian, char *ichars)
{
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
    // if( pt_regs->bx < 8 ){
    //     printk("ioctl32: %lx, %lx, %px\n", pt_regs->bx, pt_regs->cx, pt_regs->dx);
    // }
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

        // printk("ioctl32 HDIO_DRIVE_CMD ( %lx, %lx, %px )\n", pt_regs->bx, pt_regs->cx, (void *)pt_regs->dx);
        args = (void *)pt_regs->dx;

        if (args[0] == 0xec && args[2] == 0 && args[3] > 0)
        {
            // HDD SIZE is not from atainfo
            //printk("FAKED \n");
            memcpy((u_int16_t *)(args + 4), fakeAtta, 512);
            // printk("RETA %512pEh\n", (void *)(pt_regs->dx + 4));
            // sg_ata_put_chars((u_int16_t *)(args + 4), 10, 10, 0, fakeSerial);
            // sg_ata_put_chars((u_int16_t *)(args + 4), 27, 20, 0, fakeModel);
            // printk("RETB %512pEh\n", (void *)(pt_regs->dx + 4));
        }
        break;
    }
    return ret;
}

// VPD PAGE 0x83
static int fake_dev_ids(u_int8_t *buf, int buf_len)
{
    int off, desig_type, i_len;
    u_int8_t *bp, *ip;
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
        //printk("desig_type %d, len %d, %s 8pEhp \n", desig_type, i_len, ip);
        if (desig_type == 0 && i_len == 20)
        {
            // fake serial
            memcpy(ip, fakeSerial, i_len);
        }
        // check for last 20 byte is SN, fake it too
        else if (desig_type == 1 && i_len > 20 &&
                 strncmp(ip + i_len - 20, originalSerial, 20) == 0)
        {
            memcpy(ip + i_len - 20, fakeSerial, i_len);
        }
    }
    return 0;
}
// 0x89
static int fake_atta_info(char *buf, int len)
{
    int cc;

    if (buf[56] == 0)
    {
        printk("No atta data found\n");
        return -1;
    }
    cc = sg_ata_get_chars((u_int16_t *)(buf + 60), 27, 20, 0, originalModel);
    originalModel[cc] = '\0';
    cc = sg_ata_get_chars((u_int16_t *)(buf + 60), 10, 10, 0, originalSerial);
    originalSerial[cc] = '\0';
    printk(" *** Original Model : %s\n *** Original Serial: %s\n", originalModel, originalSerial);

    sg_ata_put_chars((u_int16_t *)(buf + 60), 10, 10, 0, fakeSerial);
    sg_ata_put_chars((u_int16_t *)(buf + 60), 27, 20, 0, fakeModel);

    // dump 512 byte, and set as fakeAtta value
    // printk("FakeAtta Dump 1: %128pEh\n", &fakeAtta[0]);
    // printk("FakeAtta Dump 2: %128pEh\n", &fakeAtta[128]);
    // printk("FakeAtta Dump 3: %128pEh\n", &fakeAtta[256]);
    // printk("FakeAtta Dump 4: %128pEh\n", &fakeAtta[384]);

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
    // Check if its a special device like /dev/sda then use rdev, dev otherwise.
    return bdget((MAJOR(root_stat.rdev) | MINOR(root_stat.rdev)) ? root_stat.rdev : root_stat.dev);
}
// https://elixir.bootlin.com/linux/v5.6.3/source/drivers/scsi/scsi_sysfs.c#L512
static int override_sysfs(void)
{
    struct block_device *root_device;
    struct device *dev;
    struct scsi_device *sdev;
    const int vpd_len = 64;
    unsigned char *buf;

    root_device = find_root_dev("/dev/sda");

    if (root_device)
    {
        dev = part_to_dev(root_device->bd_part);
        printk("Root /dev/%s\n", dev_name(dev));
        sdev = to_scsi_device(dev->parent);
        if (scsi_device_supports_vpd(sdev))
        {
            // faking 0x89 and get original model/serial
            fake_atta_info(sdev->vpd_pg89->data, sdev->vpd_pg89->len);
            // faking 0x83
            fake_dev_ids(sdev->vpd_pg83->data + 4, sdev->vpd_pg83->len - 4);
            // faking 0x80
            memcpy(sdev->vpd_pg80->data + 4, fakeSerial, 20);

            buf = kmalloc(vpd_len, GFP_KERNEL);
            if (scsi_get_vpd_page(sdev, 0x80, buf, vpd_len) != 0)
            {
                printk("Can't get vpd buf\n");
            }
            kfree(buf);
        }
        else
        {
            printk("Not support SCSI Page\n");
        }

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

    pte = lookup_address((unsigned long)ia32_sys_call_table, &level);
    // change PTE to allow writing
    set_pte_atomic(pte, pte_mkwrite(*pte));
    ;
    ia32_sys_call_table[nr_ioctl32] = (void *)fake_ioctl32;
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
    ia32_sys_call_table[nr_ioctl32] = (fun)old_ioctl32;
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));
    return 0;
}

static int main_init(void)
{
    override_sysfs();
    find_syscall_table64_ia32();

    if (ia32_sys_call_table == NULL)
    {
        pr_err("Cannot find sys_call_table\n");
        return -1;
    }
    return override_syscall();
}

static void main_exit(void)
{
    if (old_ioctl32 != NULL)
    {
        restore_syscall();
    }
    return;
}

module_init(main_init);
module_exit(main_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("xxx");
MODULE_DESCRIPTION("MT7 Rootkit");
MODULE_VERSION("0.02");