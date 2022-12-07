#!/bin/bash

# Run this script to install Mikrotik to disk.img

# Create disk.img if not exist
if [ ! -f disk.img ]; then
    SIZE="128"
    echo "Creating disk.img ($SIZE MiB)"
    dd if=/dev/zero bs=1024 count=$(( $SIZE * 1024 )) of=disk.img
    #qemu-img create -f qcow2 disk.qcow2 ${SIZE}M
fi

# Run emulator with installer cd
qemu-system-x86_64 \
	-m 128 \
	-smp 1 \
	-enable-kvm \
    -bios /usr/share/ovmf/OVMF.fd \
    -cdrom installer/mikrotik-7.6.iso \
	-drive format=raw,file=disk.img \
    $*

