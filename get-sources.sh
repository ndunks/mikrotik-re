#!/bin/sh

# Download vanilla kernel 5.6.3 sources
[ -f ~/app/linux-5.6.3.tar.xz ] || \
    wget -O ~/app/linux-5.6.3.tar.xz https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.6.3.tar.xz

[ -d ~/app/linux-5.6.3 ] || tar -C ~/app -xvf ~/app/linux-5.6.3.tar.xz

[ -f ~/app/gcc-11.1.0.tar.xz ] || \
    wget -O ~/app/gcc-11.1.0.tar.xz http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-11.1.0/gcc-11.1.0.tar.xz

[ -d ~/app/gcc-11.1.0 ] || tar -C ~/app -xvf ~/app/gcc-11.1.0.tar.xz

# cd ~/app/gcc-11.1.0
#  ./contrib/download_prerequisites
 
# mkdir -p build && cd build

# ../configure --program-prefix=v11- --enable-languages=c,c++ --prefix=$HOME/app/gcc1
# make -j3
