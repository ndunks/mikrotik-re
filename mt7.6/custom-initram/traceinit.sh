#!/bin/sh
set -e

mount /dev/sdb /mnt
rm -rf /mnt/traces*

exec ./strace -yy -v -s 1024 -i -ff -o /mnt/traces -D ./init.ori