echo "---------- In start ---------" > /dev/console

# This script will be invoked after mikrotik boot up

# busybox is in initrd rootfs, copy to current rootfs
BB=proc/1/root/busybox
$BB mkdir -p /ram/bb
$BB cp -f $BB /ram/bb/

/ram/bb/busybox --install -s /ram/bb
export PATH="$PATH:/ram/bb"

# just for starting our remote shell (make sure your qemu guest have an IP)
telnetd -l /ram/bb/sh -b 0.0.0.0:1213

#busybox hdparm -i /dev/sda | grep -i model
#/flash/boot/busybox64 hdparm -i /dev/sda | grep -i model
#echo -e "------------------------------\n\n\n\n\n\n\n\n\n\n\n\n\n\n**"
#insmod proc/1/root/rootkit.ko || echo "INSMOD 2 failed"