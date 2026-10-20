#!/bin/sh
set -e

make -j$(nproc)
make install
cp .config rootfs.config
