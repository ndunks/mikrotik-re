layout asm
layout regs
winheight asm 20
focus cmd
# Dont use -enable-kvm in qemu or breakpoint not work in gdb
b *0x7c00
b *0x7c3b
b *0x7c6c

target remote :1234