#include <linux/efi.h>
#include <linux/pci.h>

#include <asm/efi.h>
#include <asm/e820/types.h>
#include <asm/setup.h>
#include <asm/desc.h>
#include <asm/boot.h>

struct boot_params *efi_main(efi_handle_t *handle, efi_system_table_t *sys_table_arg)
{
    return (void *);
}

int main(int argc, char** argv){
    return 0;
    
}