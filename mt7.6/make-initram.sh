#!/bin/bash

cd custom-initram
find | cpio -o -R root:root -H newc | xz -9 --format=lzma > ../partition-boot/initrd.xz
cd -
