#!/bin/bash

# Run this script to install Mikrotik to disk.img

# Create disk.img if not exist
if [ ! -f disk.img ]; then
    SIZE="60"
    echo "Creating disk.img ($SIZE MiB)"
    dd if=/dev/zero bs=1024 count=$(( $SIZE * 1024 )) of=disk.img
    #qemu-img create -f qcow2 disk.qcow2 ${SIZE}M
fi

# Run emulator with installer cd
qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
    -no-user-config -nodefaults -vga std \
    -cdrom installer/mikrotik-6.48.6.iso \
    -drive if=none,id=disk0,format=raw,file='disk.img' \
	-device "ide-hd,drive=disk0,bootindex=1,ver=DATA,model=VMware Virtual IDE Hard Drive,serial=00000000000000000001" \
    -netdev user,id=net0,hostfwd=tcp::8080-:80,hostfwd=tcp::8022-:22,hostfwd=tcp::8291-:8291,hostfwd=tcp::1212-:1212,hostfwd=tcp::1213-:1213 \
    -device e1000,netdev=net0 \
    $*

