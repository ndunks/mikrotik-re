#!/bin/bash

if [ ! -f ./tmp/disk.img ]; then
    if ! mount grep $PWD/tmp; then
        echo "Mount tmpfs for fast development.."
        sudo mount -t tmpfs tmpfs ./tmp
        sudo chown $USER:$USER ./tmp
        mkdir -p -m 0777 ./tmp/boot
    fi
    echo "Setup disk image.."
    [ -f disk-mt7.6-gpt-licensed.img ] || tar xzf disk-mt7.6-gpt-licensed.tar.gz
    cp disk-mt7.6-gpt-licensed.img ./tmp/disk.img
fi

echo "Mounting Boot Partition.."
LOOP=`sudo losetup --show -f ./tmp/disk.img`
sudo partprobe ${LOOP}
sudo mount ${LOOP}p1 ./tmp/boot

if [ "$1" == "force" ] || [ ! -f ./tmp/boot/EFI/BOOT/refind.conf ]; then
    echo "Installing rEFInd bootloader.."
    cat <<EOF | sudo sh
    mv ./tmp/boot/EFI/BOOT/BOOTX64.EFI ./tmp/boot/EFI/BOOT/BOOTX64_ORI.efi
    cp mt7.6/partition-boot/EFI/BOOT/BOOTX64.EFI ./tmp/boot/EFI/BOOT/
    cp -f mt7.6/partition-boot/EFI/BOOT/refind.conf ./tmp/boot/EFI/BOOT/
    # Kernel from MT7 ISO installation media
    cp -f mt7.6/partition-boot/linux.x86_64 ./tmp/boot/
EOF
fi

echo "Building rootkit.."
cd rootkit
make
cd -

echo "Creating initrd.."
cd mt7.6/custom-initram
find | cpio -o -R root:root -H newc > ../../tmp/initrd.cpio
cd -

echo "Copying initrd and start script.."
cat <<EOF | sudo bash
cp -f ./tmp/initrd* ./tmp/boot/
cp -f mt7.6/partition-boot/start.sh ./tmp/boot/start.sh
sync
umount ./tmp/boot
losetup -d ${LOOP}
EOF

echo "Done."

