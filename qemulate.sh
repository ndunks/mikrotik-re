#!/bin/bash

#    -bios /usr/share/ovmf/OVMF.fd \
# Dont use KVM or breakpoint not work in gdb
#	-enable-kvm \
qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
    -bios /usr/share/ovmf/OVMF.fd \
	-drive if=none,id=disk0,format=raw,file=disk.img \
    -device "ide-hd,drive=disk0,serial=00000000000000000001,bootindex=1" \
    $*

exit 0

# no set serial
#	-drive format=qcow2,file=disk.qcow2 \
# software ID: NSZI-C6LK

# as HDD
#	-drive if=none,id=disk0,format=qcow2,file=disk.qcow2 \
#   -device "ide-hd,drive=disk0,serial=00000000000000000001" \
# software ID: B7LV-GU8M

# as USB and set serial
#	-usb -device qemu-xhci,id=xhci \
#	-drive if=none,id=disk0,format=qcow2,file=disk.qcow2 \
#	-device "usb-storage,drive=disk0,removable=true,serial=00000000000000000001" \
# software ID: I2E0-C69K
