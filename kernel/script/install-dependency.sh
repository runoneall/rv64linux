#!/bin/sh
set -e

sudo apt update
sudo apt install -y bison flex gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu
