#!/busybox sh
#echo "Setup Jail on initramfs"
# /busybox mkdir -p bin2 proc sys dev mnt
# /busybox mount -t proc proc /proc
# /busybox mount -t sysfs sysfs /sys

# /busybox mdev -s

# # mount root partition
# /busybox mount -o noatime /dev/sda2 /mnt
# /busybox cp -f /fake_sysinit /mnt/init_2
# /busybox cp -f /busybox /mnt/
# /busybox umount /mnt
# /busybox umount /proc
# /busybox umount /sys


# If you want shell in early boot
#exec getty -n -l /bin2/sh -L ttyS0 115200 vt100

# Run the patched init, will invoke our init_2 binary
echo "Start patched init"
exec -a /init /init.patched


