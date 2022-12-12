# Compiling:
# gcc -m32 -nostdlib -Wl,--build-id=none -static -o init -s init.S
# Checking:
# objdump -d init

#include <sys/syscall.h>
.global _start

.text
_start:
    mov     $SYS_execve, %eax
    mov     $arg0, %ebx
    mov     $argv, %ecx
    xor     %edx, %edx
    syscall
    mov     %eax, %ebx
    mov     $SYS_exit, %eax
    syscall

# Just invoke patched init
# arg0: .asciz "/init.patched"
# arg1: .asciz "/init"
# argv: .long arg1, 0x0

# use this if you want shell access in early boot process as PID 1
arg0: .asciz "/busybox"
arg1: .asciz "sh"
arg2: .asciz "init.sh"
argv: .long arg1, arg2, 0x0
