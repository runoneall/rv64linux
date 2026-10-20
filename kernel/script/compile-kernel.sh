#!/bin/sh
set -e

make -j$(nproc) Image
cp arch/riscv/boot/Image kernel.bin
cp .config kernel.config
