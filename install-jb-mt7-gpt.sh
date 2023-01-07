#!/bin/bash
[ $UID = "0" ] || exec sudo $0 $*

echo "Mounting Boot Partition.."
if [ ! -f ./tmp/disk.img ]; then
    mount grep $PWD || mount -t tmpfs tmpfs ./tmp || true
    [ -f disk-mt7.6-gpt-licensed.img ] || tar xzf disk-mt7.6-gpt-licensed.tar.gz
    cp disk-mt7.6-gpt-licensed.img ./tmp/disk.img
fi

LOOP=`losetup --show -f ./tmp/disk.img`
partprobe ${LOOP}
mkdir -p -m 0777 ./tmp/boot
mount ${LOOP}p1 ./tmp/boot

if [ ! -f ./tmp/boot/EFI/BOOT/refind.conf ]; then
    echo "Installing rEFInd bootloader.."
    mv ./tmp/boot/EFI/BOOT/BOOTX64.EFI ./tmp/boot/EFI/BOOT/BOOTX64_ORI.efi
    cp mt7.6/partition-boot/EFI/BOOT/BOOTX64.EFI ./tmp/boot/EFI/BOOT/
    cp -f mt7.6/partition-boot/EFI/BOOT/refind.conf ./tmp/boot/EFI/BOOT/
    cp -f mt7.6/partition-boot/linux* ./tmp/boot/
fi

cp -f mt7.6/partition-boot/initrd* ./tmp/boot/
cp -f mt7.6/partition-boot/start.sh ./tmp/boot/start.sh
sudo sync

umount ./tmp/boot
losetup -d ${LOOP}

