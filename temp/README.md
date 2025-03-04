# Temp dev

At the end of Chapter 7 we create a full backup from temporary system.
so in case of any reboot or messing up we can use or backup archive.

In order to achieve this first of all 
* provide new partition for lfs system
* restore backup archive in root of file system
* set environment varibles, change permission to root, mount virtual file system, enter chroot environment
* continue to Chapter 8 as chroot environmet

# Latest steps to build donya

1. restore archive to /home/lfs/DONYA
after mount the partition

2. continue from chapter 7 steps

enter chroot absoluth path

usr/sbin/chroot "$LFS" /usr/bin/env -i       HOME=/root                      TERM="$TERM"                    PS1='(lfs chroot) \u:\w\$ '     PATH=/usr/bin:/usr/sbin         MAKEFLAGS="-j$(nproc)"          TESTSUITEFLAGS="-j$(nproc)"     /bin/bash --login




