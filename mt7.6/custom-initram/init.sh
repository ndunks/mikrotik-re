
/busybox mkdir -p mnt proc sys dev

/busybox mount -t proc proc /proc
/busybox mount -t sysfs sysfs /sys

/busybox mdev -s

# FS must be mounted first before activate rootkit
/busybox mount /dev/sda1 /mnt
/busybox insmod /rootkit.ko

# If you want shell in early boot
#exec getty -n -l /bin2/sh -L ttyS0 115200 vt100

/busybox umount /mnt
/busybox umount /proc
/busybox umount /sys

# Mount second hdd to store data
# if [ -e /dev/sdb ]; then
#     /busybox mkdir -p /storage
#     /busybox mount /dev/sdb /storage
#     /busybox rm -rf /storage/*
#     echo -e "Tracing init\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
#     exec -a /init /strace -r -s 256 -i -ff -o /storage/2trace -D /init.patched
# fi


# Run the patched init, will invoke our init_2 binary
exec -a /init /init.patched
