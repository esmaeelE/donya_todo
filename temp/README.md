# Temp dev

At the end of Chapter 7 we create a full backup from temporary system.
so in case of any reboot or messing up we can use or backup archive.

In order to achieve this first of all 
* provide new partition for lfs system
* restore backup archive in root of file system
* set environment varibles, change permission to root, mount virtual file system, enter chroot environment
* continue to Chapter 8 as chroot environmet
