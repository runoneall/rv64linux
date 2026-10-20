#!/bin/sh
set -e

sudo apt update
sudo apt install -y e2fsprogs gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
go install github.com/emmanuel-deloget/fsforge/cmd/fsforge@latest
