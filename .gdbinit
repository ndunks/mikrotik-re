layout asm
layout regs
winheight asm 20
focus cmd
# Dont use -enable-kvm in qemu or breakpoint not work in gdb
#b *0x7c00
#b *0x7c3b
#b *0x7c6c
file mt7.6/BOOTX64.EFI
# EFI Entrypoint
b *0x2ffa80

# Linux kernel
#b *0x1000000
target remote :1234