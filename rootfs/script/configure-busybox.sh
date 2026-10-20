#!/bin/sh
set -e
chmod +x ./scripts/config

make allnoconfig

./scripts/config --enable CONFIG_LFS
./scripts/config --enable CONFIG_BUSYBOX
./scripts/config --enable CONFIG_FEATURE_SUID
./scripts/config --enable CONFIG_STATIC
./scripts/config --enable CONFIG_FEATURE_EDITING
./scripts/config --enable CONFIG_FEATURE_TAB_COMPLETION

./scripts/config --enable CONFIG_GZIP
./scripts/config --enable CONFIG_TAR
./scripts/config --enable CONFIG_UNZIP

./scripts/config --enable CONFIG_CAT
./scripts/config --enable CONFIG_CHMOD
./scripts/config --enable CONFIG_CHOWN
./scripts/config --enable CONFIG_CP
./scripts/config --enable CONFIG_ECHO
./scripts/config --enable CONFIG_FALSE
./scripts/config --enable CONFIG_HEAD
./scripts/config --enable CONFIG_LN
./scripts/config --enable CONFIG_LS
./scripts/config --enable CONFIG_MKDIR
./scripts/config --enable CONFIG_MV
./scripts/config --enable CONFIG_PWD
./scripts/config --enable CONFIG_RM
./scripts/config --enable CONFIG_SLEEP
./scripts/config --enable CONFIG_TAIL
./scripts/config --enable CONFIG_TEST
./scripts/config --enable CONFIG_TRUE

./scripts/config --enable CONFIG_CLEAR

./scripts/config --enable CONFIG_AWK
./scripts/config --enable CONFIG_SED

./scripts/config --enable CONFIG_FIND
./scripts/config --enable CONFIG_GREP

./scripts/config --enable CONFIG_POWEROFF
./scripts/config --enable CONFIG_REBOOT
./scripts/config --enable CONFIG_INIT

./scripts/config --enable CONFIG_MDEV
./scripts/config --enable CONFIG_MORE
./scripts/config --enable CONFIG_MOUNT
./scripts/config --enable CONFIG_UMOUNT

./scripts/config --enable CONFIG_LESS
./scripts/config --enable CONFIG_TREE

./scripts/config --enable CONFIG_IP
./scripts/config --enable CONFIG_IPADDR
./scripts/config --enable CONFIG_IPLINK
./scripts/config --enable CONFIG_IPROUTE
./scripts/config --enable CONFIG_NSLOOKUP
./scripts/config --enable CONFIG_WGET
./scripts/config --enable CONFIG_FEATURE_WGET_HTTPS

./scripts/config --enable CONFIG_KILL
./scripts/config --enable CONFIG_PKILL
./scripts/config --enable CONFIG_PS
./scripts/config --enable CONFIG_TOP

./scripts/config --enable CONFIG_ASH
./scripts/config --enable CONFIG_ASH_OPTIMIZE_FOR_SIZE
./scripts/config --enable CONFIG_ASH_INTERNAL_GLOB
./scripts/config --enable CONFIG_ASH_BASH_COMPAT
./scripts/config --enable CONFIG_FEATURE_SH_EXTRA_QUIET

yes "" | make oldconfig
