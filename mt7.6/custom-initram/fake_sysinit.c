#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/types.h>
#include <stdlib.h>
#include <sys/syscall.h>

/**
Custom sysinit
Compile:
    gcc -m32 -s -static -o x fake_sysinit.c

Install initrd run:
    ./install-jb.sh
*/

extern char** environ;

int main(int argc, char * argv[]){
    printf("\n***** FAKE INIT *****\n\n");
    
    if( argc > 1 ){
        // check the first arg
        if ( strncmp(argv[1],"start", 5) == 0 ){
            printf("\n***** FAKE START *****\n\n");
            if( fork() == 0 ){
                // Make sure the /boot partition is mounted
                while ( access("/flash/boot/start.sh", F_OK) != 0 ) {
                    printf("\n***** WAITING start.sh script *****\n\n");
                    sleep(1);
                }
                char * args[] = {
                    "sh",
                    "flash/boot/start.sh",
                };
                // busybox is on initrd, our root is /system
                execve("proc/1/root/busybox", args, environ);
                printf("\n !!! FAKE START: Cannot invoke start.sh\n\n");
                return 0;
            }
        }
    }
    // just pass it
    return execve("/sbin/sysinit", argv, environ);
}