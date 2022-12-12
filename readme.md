
## String to search in Static Analysis

```
in init:
Demo license expired!
Please reinstall the router.
```
### Software ID based on

- Installation ID ?
- Storage Type: HDD/Removable
- HDD Model
- HDD Serial



### Notes
- Same serial of storage will get different "Software ID" if it emulated as USB or as HDD
- Same serial but different installation will get different serial
- https://github.com/Ygnecz/MTLic - Mikrotik license file structure
- https://elixir.bootlin.com/linux/v5.6.3/C/ident/__le16 - Usefull to explore Linux sources

## Linux Kernel

    Linux version 5.6.3-64 (agent@cicd-a06.mt.lv) (gcc version 11.1.0 (GCC)) #1 SMP Mon Oct 17 11:05:29 UTC 2022


Kernel boot vmlinuz:

Setup -> efi/vmlinuz -> extract -> run vmlinux -> mount ramdisk -> run init

### 0. Bootloader setup realmode

### 1. vmLinuz / bzImane

- Structure: https://github.com/torvalds/linux/blob/v5.6/Documentation/x86/boot.rst#the-real-mode-kernel-header
- Header code: https://github.com/torvalds/linux/blob/v5.6/arch/x86/boot/header.S

### 2. Extract 

Vmlinuz text section source: (head_64.S)[https://github.com/torvalds/linux/blob/v5.6/arch/x86/boot/compressed/head_64.S#L488]

``` asm
/*
 * Do the extraction, and jump to the new kernel..
 */
	pushq	%rsi			/* Save the real mode argument */
	movq	%rsi, %rdi		/* real mode address */
	leaq	boot_heap(%rip), %rsi	/* malloc area for uncompression */
	leaq	input_data(%rip), %rdx  /* input_data */
	movl	$z_input_len, %ecx	/* input_len */
	movq	%rbp, %r8		/* output target address */
	movq	$z_output_len, %r9	/* decompressed length, end of relocs */
	call	extract_kernel		/* returns kernel location in %rax */
	popq	%rsi
```


### 3. Run vmlinux/ELF in protected mode

- Switch to protected mode: https://elixir.bootlin.com/linux/v5.6.3/source/arch/x86/boot/pm.c#L102

## Goal: Spoof HDD Serial Number

Kernel module for overide syscall:
https://github.com/sizet/fake_hd_sn

Using ptrace:
https://www.linuxjournal.com/article/6100

https://forums.tomshardware.com/threads/where-is-hdd-serial-number-stored-and-how-to-access.663413/

The drive's model number, serial number, capacity, feature set, etc are returned in a 512-byte information block in response to an ATA Identify Device command.

Working Draft AT Attachment 8 - ATA/ATAPI Command Set (ATA8-ACS):
http://www.t13.org/documents/UploadedDocuments/docs2008/D1699r6a-ATA8-ACS.pdf


## Other Refs
- https://docs.kernel.org/admin-guide/efi-stub.html
- https://github.com/torvalds/linux/blob/v5.6/arch/x86/boot/compressed/head_32.S
- https://github.com/torvalds/linux/blob/v5.6/arch/x86/boot/compressed/eboot.c

