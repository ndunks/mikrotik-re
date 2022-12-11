#!/bin/bash
[ $UID = "0" ] || exec sudo $0 $*

if [ "$1" = "u" ]; then
    echo "Unmounting.."
    umount ./part_boot
    umount ./part_root
    #qemu-nbd --disconnect /dev/nbd0
    losetup -D

else
    echo "Mounting.."
    #modprobe nbd max_part=3
    #qemu-nbd --connect=/dev/nbd0 disk.qcow2
    #mount /dev/nbd0p1 ./part_boot
    #mount /dev/nbd0p2 ./part_root
    losetup -f ./disk.img
    partprobe /dev/loop0
    fsck -y /dev/loop0p1
    fsck -y /dev/loop0p2
    mkdir -p -m 0777 part_boot part_root
    mount -o umask=0022,gid=$SUDO_GID,uid=$SUDO_UID /dev/loop0p1 ./part_boot
    mount /dev/loop0p2 ./part_root
fi

