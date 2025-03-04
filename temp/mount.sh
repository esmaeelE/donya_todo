# source this and run below
DONYA_PATH=/home/lfs/DONYA
LFS=$DONYA_PATH

mount /dev/mapper/donya_vg-donya_build $LFS


# chapter 7

mount -v --bind /dev $LFS/dev
mount -vt devpts devpts -o gid=5,mode=0620 $LFS/dev/pts
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run

source chroot.sh

