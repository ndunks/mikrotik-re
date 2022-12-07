#!/bin/bash

qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
	-net none \
	-serial mon:stdio \
	-kernel mt7.6/vmlinuz \
	-append "root=/dev/sda debug earlyprintk=ttyS0 console=ttyS0 initrd=/initrd.xz init=/asdff load_ramdisk=1" \
	-initrd mt7.6/partition-boot/initrd.xz \
    $*

#	-drive format=raw,file=disk.img \
    # -bios /usr/share/ovmf/OVMF.fd \
	# -drive file=fat:rw:mt7.6/partition-boot \
# -drive if=none,id=disk00,format=qcow2,file=tmp/disk1.qcow2 \
#    -device "ide-hd,drive=disk00,bus=ide.0,serial=00000000000000000001,model=VMware Virtual IDE Hard Drive" \

# software ID: NSZI-C6LK
