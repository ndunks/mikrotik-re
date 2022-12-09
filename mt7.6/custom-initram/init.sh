#!/busybox sh

echo "Init script: $0 $*"
/busybox mkdir -p bin proc sys dev tmp
/busybox mount -t proc proc /proc
/busybox mount -t sysfs sysfs /sys
/busybox --install -s /bin
mdev -s

exec getty -n -l /bin/sh -L ttyS0 115200 vt100
