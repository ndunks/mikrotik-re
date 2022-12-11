#!/bin/bash
set -e
./mount-disk.sh || true
if [ ! -f part_boot/EFI/BOOT/refind.conf ]; then
    echo "Installing bootloader.."
    mv part_boot/EFI/BOOT/BOOTX64.EFI part_boot/EFI/BOOT/KernelOriginal.efi
    cp mt7.6/partition-boot/EFI/BOOT/BOOTX64.EFI part_boot/EFI/BOOT/
    cp mt7.6/partition-boot/EFI/BOOT/refind.conf part_boot/EFI/BOOT/
    cp mt7.6/partition-boot/linux* part_boot/
fi

cp -f mt7.6/partition-boot/initrd* part_boot/
cp -f mt7.6/partition-boot/start.sh part_boot/start.sh
sudo sync
./mount-disk.sh u