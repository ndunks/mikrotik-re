#!/bin/bash

qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
    -bios /usr/share/ovmf/OVMF.fd \
	-drive file=fat:rw:mt7.6/partition-boot \
	-net none \
	-serial mon:stdio \
	-drive format=raw,file=disk.img \
    $*

# -drive if=none,id=disk00,format=qcow2,file=tmp/disk1.qcow2 \
#    -device "ide-hd,drive=disk00,bus=ide.0,serial=00000000000000000001,model=VMware Virtual IDE Hard Drive" \

# software ID: NSZI-C6LK
