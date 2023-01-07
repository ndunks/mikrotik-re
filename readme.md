# Mikrotik Rootkit

```
./qemulate.sh
```

user: admin, pass: q


## String to search in Static Analysis

```
in init:
Demo license expired!
Please reinstall the router.
```
### Software ID based on

- Installation ID ?
- Storage Type: HDD/Removable
- HDD Model (Can be faked)
- HDD Serial (Can be faked)
- HDD size (Fake it too?)
- If hdd 128MB, will make 2 partition. if 60MB just one partition
- MT <6, can use 60MB, MT 7 require at least 128MB


## Known license MT 6
```
 â `☻  ¶00000000000000000001☻☺ DATA     VMware Virtual IDE Hard Drive           00000000000000000001

 â `☻  ¶VB72f35e39-804cf5ec ☻☺ DATA     VBOX HARDDISK                           VB72f35e39-804cf5ec

DISK 'RAW'. UUID: b67e0cf4-805a-4790-906b-1a7521b70d64

ZJ3M-ESHW

License:

-----BEGIN MIKROTIK SOFTWARE KEY------------
nn4EPKerddfjpKWvoBx3diWxAm/NzvDHUnAQs0clu1PO
C6VGKyxT9JYIslckCx7DJC2gedmQi4VLNrWRqaFGGA==
-----END MIKROTIK SOFTWARE KEY--------------

```

### Clone License on HDD

``` bash
# Licensed disk (60MB capacity)
dd if=disk-mt6.40.1.img bs=1 count=$((0x80)) skip=$((0x100)) of=mbr-license.bin
# Target disk (60MB capacity) must have same capacity, or Software ID will changed
dd conv=notrunc if=mbr-license.bin bs=1 seek=$((0x100)) of=disk.img

# in qemu, use this paramater to matche HDD indo with the licensed disk
qemu... \
-drive if=none,id=disk0,format=raw,file='disk.img' \
-device "ide-hd,drive=disk0,bootindex=1,ver=DATA,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \

```

Other script
``` bash
# append disk
dd  conv=notrunc if=disk.img of=disk2.img
```

### Notes
- Same serial of storage will get different "Software ID" if it emulated as USB or as HDD
- Same serial but different installation will get different serial
- https://github.com/Ygnecz/MTLic - Mikrotik license file structure
- https://elixir.bootlin.com/linux/v5.6.3/C/ident/__le16 - Usefull to explore Linux sources


### MBR INFO

- offset `0x10c` (4 bytes ?) is boot counter in mt7 ?

``` sh
dd if=disk-mt6.40.1.img bs=1 count=446 of=mbr.bin
objcopy --rename-section .data=.text --set-section-flags .data=alloc,code,load raw$$.elf

objdump -D -b binary -mi386 -Maddr16,data16 --adjust-vma=0x7c00
```

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

on v7.6 no KASLR found

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

