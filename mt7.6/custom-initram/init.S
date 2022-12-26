# Compiling:
# gcc -nostdlib -Wl,--build-id=none -static -o init -s init.S
# Checking:
# objdump -d init

#include <sys/syscall.h>
.global _start

.text
_start:
    mov     $SYS_execve, %rax
    mov     $arg0, %rdi
    mov     $argv, %rsi
    xor     %rdx, %rdx
    syscall
    mov     $SYS_exit, %rax 
    xor     %rdi, %rdi
    syscall
arg0: .asciz "busybox"
arg1: .asciz "sh"
arg2: .asciz "init.sh"
argv: .quad arg1, arg2, 0x0
