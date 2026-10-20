#!/bin/sh
set -e

rm -f busybox.tar.bz2
wget https://busybox.net/downloads/busybox-1.36.1.tar.bz2 -O busybox.tar.bz2

rm -rf rootfs
mkdir rootfs

tar -jxf busybox.tar.bz2 -C rootfs --strip-components=1
rm -f busybox.tar.bz2
