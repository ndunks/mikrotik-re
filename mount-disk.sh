#!/bin/bash
[ $UID = "0" ] || exec sudo $0 $*

if [ "$1" = "u" ]; then
    echo "Unmounting.."
    umount ./mount_boot
    umount ./mount_fs
    qemu-nbd --disconnect /dev/nbd0
else
    echo "Mounting.."
    modprobe nbd max_part=3
    qemu-nbd --connect=/dev/nbd0 disk.qcow2
    mkdir -p -m 0777 mount_boot mount_fs
    mount /dev/nbd0p1 ./mount_boot
    mount /dev/nbd0p2 ./mount_fs
fi

