#!/bin/sh
set -e

fsforge mkfs -type ext4 -source ./_install -output rootfs.ext4 -size 1G
e2fsck -fy rootfs.ext4
resize2fs -M rootfs.ext4
