#!/bin/sh
set -e

rm -f kernel.tar.gz
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.57.tar.gz -O kernel.tar.gz

rm -rf kernel
mkdir kernel

tar -zxf kernel.tar.gz -C kernel --strip-components=1
rm -f kernel.tar.gz
