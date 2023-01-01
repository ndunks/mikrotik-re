#!/bin/bash
[ $UID = "0" ] || exec sudo $0 $*

if [ "$1" = "u" ]; then
    echo "Unmounting.."
    umount ./storage
    losetup -D
    rmdir ./storage
else
    echo "Mounting.."
    losetup -f ./storage.img
    partprobe /dev/loop0
    fsck -y /dev/loop0
    mkdir -p -m 0777 storage
    mount -o umask=0022,gid=$SUDO_GID,uid=$SUDO_UID /dev/loop0 ./storage
fi

