#!/bin/bash

#    -bios /usr/share/ovmf/OVMF.fd \
# Dont use KVM or breakpoint not work in gdb
#	-enable-kvm \
qemu-system-i386 \
    -M q35,sata=off \
	-m 512M \
	-smp 1 \
    -nodefaults \
    -vga std \
    -device piix4-ide \
	-drive if=none,id=disk0,format=raw,file='disk2.img' \
	-device "ide-hd,drive=disk0,bootindex=1,ver=DATA,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \
    -netdev user,id=net0,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
    -device e1000,netdev=net0 \
	-serial mon:stdio \
    $*
#    -device "ide-hd,model=QEMU HARDDISK,drive=disk0,serial=00000000000000000001,bootindex=1" \
exit 0

# no set serial
#	-drive format=qcow2,file=disk.qcow2 \
# software ID: NSZI-C6LK

# Mt 6 known license (differs in mt 7)
# -device "ide-hd,drive=disk0,bootindex=1,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \
# Current installation "software ID": 48QX-ALEW
#     in MT 6 (Target) 60 MB HDD "software ID": ZJ3M-ESHW ( partition 1 is 121967 sector)
#              in MT 6 80 MB HDD "software ID": WZV7-VETG 

# as HDD QCOW2 (Model=QEMU HARDDISK)
#	-drive if=none,id=disk0,format=qcow2,file=disk.qcow2 \
#   -device "ide-hd,drive=disk0,serial=00000000000000000001" \
# software ID: B7LV-GU8M

# 	-device "ide-hd,drive=disk0,bootindex=1,model=AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA,serial=AAAAAAAAAAAAAAAAAAAA" \
# "software ID": WD31-ALEP


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
