#!/bin/bash

# Run this script to install Mikrotik to disk.img

# Create disk.img if not exist
if [ ! -f tmp/disk.img ]; then
    SIZE="128"
    echo "Creating disk.img ($SIZE MiB)"
    dd if=/dev/zero bs=1024 count=$(( $SIZE * 1024 )) of=tmp/disk.img
fi

# Run emulator with installer cd
qemu-system-x86_64 \
	-m 128 \
	-bios /usr/share/ovmf/OVMF.fd \
	-smp 1,sockets=1,cores=1,threads=1 \
    -no-user-config -nodefaults -vga std \
    -cdrom installer/mikrotik-7.6.iso \
    -boot d \
    -drive if=none,id=disk0,format=raw,file='tmp/disk.img' \
	-device "ide-hd,drive=disk0,bootindex=2,ver=DATA,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \
    -netdev user,id=net0,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
    -device e1000,netdev=net0 \
    $*

