#!/bin/bash

cd custom-initram
find | cpio -o -R root:root -H newc > ../partition-boot/initrd.cpio
cd -
