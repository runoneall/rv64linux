#!/bin/sh
set -e

riscv64-linux-gnu-strip bin/busybox
mkdir -p proc sys dev tmp etc etc/init.d

cp $GITHUB_WORKSPACE/rootfs/files/rcS etc/init.d/
chmod +x etc/init.d/rcS

echo "nameserver 10.0.2.3" >etc/resolv.conf
