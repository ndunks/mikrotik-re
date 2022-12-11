export PATH="$PATH:/flash/bb"
# This script will be invoked after mikrotik boot up

/flash/busybox mkdir -p /flash/bb
/flash/busybox mount -t tmpfs tmpfs /flash/bb
/flash/busybox cp -f /flash/busybox /flash/bb/
/flash/bb/busybox --install -s /flash/bb/

# just for starting our remote shell
nc -lk -p 1212 -e /flash/bb/sh &
telnetd -F -l /flash/bb/sh -b 0.0.0.0:1213  &
