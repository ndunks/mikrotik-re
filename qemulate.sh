#!/bin/bash

#    -bios /usr/share/ovmf/OVMF.fd \
# Dont use KVM or breakpoint not work in gdb
#	-enable-kvm \
qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
    -bios /usr/share/ovmf/OVMF.fd \
    -nodefaults \
    -vga std \
    -net none \
	-drive if=none,id=disk0,format=raw,file=disk.img \
    -device "ide-hd,model=ADATA XHD,drive=disk0,serial=00000000000000000001,bootindex=1" \
    -netdev user,id=net0,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
    -device e1000,netdev=net0 \
	-serial mon:stdio \
    $*

exit 0

# no set serial
#	-drive format=qcow2,file=disk.qcow2 \
# software ID: NSZI-C6LK

# as HDD QCOW2 (Model=QEMU HARDDISK)
#	-drive if=none,id=disk0,format=qcow2,file=disk.qcow2 \
#   -device "ide-hd,drive=disk0,serial=00000000000000000001" \
# software ID: B7LV-GU8M

# as HDD Raw (Model=QEMU HARDDISK)
#	-drive if=none,id=disk0,format=raw,file=disk.img \
#   -device "ide-hd,drive=disk0,serial=00000000000000000001,bootindex=1" \
# software ID: FQDW-3XFP

# as HDD Raw (Model=ADATA XHD)
#    -device "ide-hd,model=ADATA XHD,drive=disk0,serial=00000000000000000001,bootindex=1" \
#   -device "ide-hd,drive=disk0,serial=00000000000000000001,bootindex=1" \
# software ID: MDBC-57MQ

# as USB and set serial
#	-usb -device qemu-xhci,id=xhci \
#	-drive if=none,id=disk0,format=qcow2,file=disk.qcow2 \
#	-device "usb-storage,drive=disk0,removable=true,serial=00000000000000000001" \
# software ID: I2E0-C69K
