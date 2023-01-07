#!/bin/bash


qemu-system-i386 \
	-m 128 \
	-smp 1 \
    -nographic \
	-serial mon:stdio \
	-drive if=none,id=disk0,format=raw,file='../disk.img' \
	-device "ide-hd,drive=disk0,bootindex=1,ver=DATA,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \
	-netdev user,id=net0,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
	-device e1000,netdev=net0 \
	-kernel boot/vmlinuz \
	-append "debug earlyprintk=ttyS0 console=ttyS0" \
	-initrd initrd.cpio \
    $*

#	-drive format=raw,file=disk.img \

