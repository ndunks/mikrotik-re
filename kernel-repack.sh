#!/bin/bash

set -e

LINUX_SRC=$HOME/app/linux-5.6.3
MT=$PWD/mt7.6

cd ${LINUX_SRC}/arch/x86

[ -f vmlinux ] || cp ${MT}/vmlinux ./

make --no-silent -w srctree=$LINUX_SRC bzImage

cd -
# Compiling head
