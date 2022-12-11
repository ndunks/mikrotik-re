#!/bin/bash

qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
	-serial mon:stdio \
	-bios /usr/share/ovmf/OVMF.fd \
	-drive file=fat:rw:mt7.6/partition-boot \
	-drive format=raw,file=disk.img \
	-net user,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
     $*

# qemu-system-x86_64 \
# 	-m 128 \
# 	-smp 1 \
# 	-serial mon:stdio \
# 	-kernel mt7.6/vmlinuz \
# 	-append "debug earlyprintk=ttyS0 console=ttyS0" \
# 	-initrd mt7.6/partition-boot/initrd.cpio \
# 	-drive format=raw,file=disk.img \
# 	-net nic,model=virtio-net-pci \
# 	-net user,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
#       $*

# Fake serial number
#    -device "ide-hd,drive=disk00,bus=ide.0,serial=00000000000000000001,model=VMware Virtual IDE Hard Drive" \

# software ID: NSZI-C6LK
