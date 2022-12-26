#!/bin/bash
set -e

cd rootkit
make
cd -

cd mt7.6/custom-initram
gcc -m32 -s -static -o x fake_sysinit.c
#gcc -m32 -s -static -o init init.c
gcc -nostdlib -Wl,--build-id=none -static -o init -s init.S
#gcc -m32 -nostdlib -Wl,--build-id=none -static -o init -s init32.S
cd ..
./make-initram.sh

cd ..
./install-jb.sh