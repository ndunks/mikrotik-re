/**
Custom sys init
Compile:
    gcc -m32 -s -static -o fake_sysinit fake_sysinit.c

Install/copy to root partition:
    in disk.img /init_2

or in root project run:
    ./install.sh
*/
#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>

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
                    printf("\n***** WAITING /flash/boot/start in *****\n\n");
                    sleep(1);
                }
                printf("\n***** STARTING /flash/boot/start *****\n\n");
                char * args[] = {
                    "sh",
                    "flash/boot/start.sh",
                };
                execve("/flash/busybox", args, environ);
                // file exists
                printf("\n !!! FAKE START: Cannot invoke /flash/boot/start.sh\n");
                return 0;
            }
        }
    }
    // just pass it
    return execve("/sbin/sysinit", argv, environ);
}