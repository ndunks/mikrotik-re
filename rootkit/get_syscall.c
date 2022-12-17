#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/linkage.h>
#include <linux/slab.h>
#include <linux/version.h>
#include <asm/pgtable.h>
#include "get_syscall.h"

typedef void (*fun)(void);
static fun *table;

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

    pr_info("Finding sys_call_table x86_64 IA32..\n");
    // Get CPU IDT table
    asm("sidt %0"
        : "=m"(idtr));

    pr_info("IDT address %px  %u\n", (void *)idtr.address, idtr.size);
    // IDT address fffffe0000000000  4095

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

    pr_info("Syscall Gates %px\n", entry_INT80);

    // Syscall Gates ffffffff816012b0 / entry_INT80_compat
    // entry_INT80_compat: 0xffffffff81002f21

    pr_info("finding call OPCODE..\n");
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
            table = (void *)((0xffffffff00000000U) | *((u32 *)do_int80_syscall));
            return 0;
        }
    }

    if (table != NULL)
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

            table = (void *)((0xffffffff00000000U) | *((u32 *)do_int80_syscall));
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
#define nr_ioctl 54
#define nr_execve 11
#define HDIO_GET_IDENTITY	0x030d	/* get IDE identification info */

typedef asmlinkage long (*syscall_fun_t)(struct pt_regs *pt_regs);
static syscall_fun_t old_ioctl, old_execve;
static struct hd_driveid *hd;
// maks 40
static char * fakeModel = "ASDFG";
// maks 20
static char * fakeSerial = "000220002220002";
static char * execve_str = "/sbin/kexec";
asmlinkage long fake_ioctl(struct pt_regs *pt_regs)
{
    int ret = old_ioctl(pt_regs);
    if( pt_regs->cx == HDIO_GET_IDENTITY ){
        // https://www.kernel.org/doc/Documentation/printk-formats.txt
        hd = (void *) pt_regs->dx;
        printk("Hooked ioctl ( %lx, %lx, %px )\n", pt_regs->bx, pt_regs->cx, hd);
        // LEN + 1
        memcpy((hd->model), fakeModel, 6);
        memcpy((hd->serial_no), fakeSerial, 18);
    }
    return ret;
}

asmlinkage long fake_execve(struct pt_regs *pt_regs)
{
    unsigned int * args = (void *) pt_regs->cx;
    if( args[0] && args[1] && args[2]) {
        char *arg0 = (void *) args[0];
        char *arg1 = (void *) args[1];
        char *arg2 = (void *) args[2];
        printk("Hooked execve %s: %s %s %s\n", (void *) pt_regs->bx, arg0, arg1, arg2);
        if( strncmp( (void *) pt_regs->bx, execve_str, 11 ) == 0){
            printk(" *** FAKED KEXEC ***\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
            return 0;
        }
    }
    // if( args && (*args)[0] && (*args)[1] && (*args)[2] && strncmp( (*args)[2], execve_str, 10 ) ){
    //     printk("Hooked execve kexec %s: %s\n", (void *) pt_regs->bx, (*args)[2]);
    //     return 0;
    // }else {
        return old_execve(pt_regs);
    // }
}

unsigned int level;
pte_t *pte;
static int override_syscall(void)
{
    old_ioctl = (syscall_fun_t)table[nr_ioctl];
    pr_info("ORIGINAL %i : %px\n", nr_ioctl, old_ioctl);
    pr_info("FAKE     %i : %px\n", nr_ioctl, fake_ioctl);
    old_execve = (syscall_fun_t)table[nr_execve];
    pr_info("ORIGINAL %i : %px\n", nr_execve, old_execve);
    pr_info("FAKE     %i : %px\n", nr_execve, fake_execve);
    // unprotect sys_call_table memory page
    pte = lookup_address((unsigned long)table, &level);
    // change PTE to allow writing
    set_pte_atomic(pte, pte_mkwrite(*pte));
    table[nr_ioctl] = (void *)fake_ioctl;
    table[nr_execve] = (void *)fake_execve;
    // reprotect page
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));
    pr_info("override_syscall done");
    return 0;
}

static int restore_syscall(void)
{
    // change PTE to allow writing
    set_pte_atomic(pte, pte_mkwrite(*pte));
    pr_info("sys_call_table writable");
    table[nr_ioctl] = (fun)old_ioctl;
    table[nr_execve] = (fun)old_execve;
    // reprotect page
    set_pte_atomic(pte, pte_clear_flags(*pte, _PAGE_RW));
    return 0;
}

static int main_init(void)
{
    if (find_syscall_table64_ia32())
    {
        // Show all available symbols
        // kallsyms_on_each_symbol(prsyms_print_symbol, NULL);
    }

    if (table == NULL)
    {
        pr_err("Cannot find sys_call_table\n");
        return -1;
    }
    // pr_info("Current EIP:  %px\n", __builtin_return_address(1));
    pr_info("Found sys_call_table: %px\n", table);

    return override_syscall();
    return 0;
}

static void main_exit(void)
{
    if (old_ioctl != NULL)
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