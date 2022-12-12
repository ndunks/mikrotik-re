
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <linux/hdreg.h>
#include <sys/ioctl.h>
#include <sys/types.h>
/*
Compile:
gcc -o hddserial hddserial.c
*/ 

int main(void){
    static struct hd_driveid hd;
    int fd;

    if ((fd = open("/dev/sda", O_RDONLY | O_NONBLOCK)) < 0) {
        printf("ERROR opening /dev/hda\n");
        exit(1);
    }

    if (!ioctl(fd, HDIO_GET_IDENTITY, &hd)) {
        printf("%.20s %.20s\n", hd.model, hd.serial_no);
    } else if (errno == -ENOMSG) {
        printf("No serial number available\n");
    } else {
        perror("ERROR: HDIO_GET_IDENTITY");
        exit(1);
    }
}