# rv64linux

tiny riscv64 linux

## requirements

QEMU emulator version 10.2.1 or later

## quick start

```shell
rm -rf test
mkdir test && cd test

wget https://github.com/runoneall/rv64linux/releases/latest/download/kernel.bin
wget https://github.com/runoneall/rv64linux/releases/latest/download/rootfs.ext4

qemu-system-riscv64 \
    -M virt \
    -kernel kernel.bin \
    -append "rootwait root=/dev/vda ro" \
    -drive file=rootfs.ext4,format=raw,if=none,id=hd0,readonly=on \
    -device virtio-blk-pci,drive=hd0 \
    -netdev user,id=net0 \
    -device virtio-net-pci,netdev=net0 \
    -nographic
```
