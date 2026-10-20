#!/bin/sh
set -e
chmod +x ./scripts/config

make allnoconfig

./scripts/config --enable CONFIG_FPU
./scripts/config --enable CONFIG_BINFMT_ELF

./scripts/config --enable CONFIG_SERIAL_8250
./scripts/config --enable CONFIG_SERIAL_8250_CONSOLE
./scripts/config --enable CONFIG_SERIAL_OF_PLATFORM

./scripts/config --enable CONFIG_VIRTIO_MENU

./scripts/config --enable CONFIG_PCI
./scripts/config --enable CONFIG_PCI_HOST_GENERIC
./scripts/config --enable CONFIG_VIRTIO_PCI

./scripts/config --enable CONFIG_BLOCK
./scripts/config --enable CONFIG_BLK_DEV
./scripts/config --enable CONFIG_VIRTIO_BLK

./scripts/config --enable CONFIG_NET
./scripts/config --enable CONFIG_NETDEVICES
./scripts/config --enable CONFIG_VIRTIO_NET

./scripts/config --enable CONFIG_EXT4_FS
./scripts/config --enable CONFIG_PROC_FS
./scripts/config --enable CONFIG_SYSFS
./scripts/config --enable CONFIG_TMPFS
./scripts/config --enable CONFIG_DEVTMPFS

./scripts/config --enable CONFIG_INET
./scripts/config --enable CONFIG_UNIX

make olddefconfig
