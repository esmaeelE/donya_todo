# Donya new release based on LFS 12.2 develop on Ubuntu 24.04 LTS

```
sudo apt install g++ bison gawk yacc make texinfo

readlink -f /bin/sh
sudo unlink /bin/sh

bash version-check.sh
```

Output
```
OK:    Coreutils 9.4    >= 8.1
OK:    Bash      5.2.21 >= 3.2
OK:    Binutils  2.42   >= 2.13.1
OK:    Bison     3.8.2  >= 2.7
OK:    Diffutils 3.10   >= 2.8.1
OK:    Findutils 4.9.0  >= 4.2.31
OK:    Gawk      5.2.1  >= 4.0.1
OK:    GCC       13.2.0 >= 5.2
OK:    GCC (C++) 13.2.0 >= 5.2
OK:    Grep      3.11   >= 2.5.1a
OK:    Gzip      1.12   >= 1.3.12
OK:    M4        1.4.19 >= 1.4.10
OK:    Make      4.3    >= 4.0
OK:    Patch     2.7.6  >= 2.5.4
OK:    Perl      5.38.2 >= 5.8.8
OK:    Python    3.12.3 >= 3.4
OK:    Sed       4.9    >= 4.1.5
OK:    Tar       1.35   >= 1.22
OK:    Texinfo   7.1    >= 5.0
OK:    Xz        5.4.5  >= 5.0.0
OK:    Linux Kernel 6.8.0 >= 4.19
OK:    Linux Kernel supports UNIX 98 PTY
Aliases:
OK:    awk  is GNU
OK:    yacc is Bison
OK:    sh   is Bash
Compiler check:
OK:    g++ works
OK: nproc reports 2 logical cores are available
```

## Partition

```
with lvm
lsblk -f
/dev/sdb

sudo fdisk /dev/sdb
n w

Now we have one partition on it
create physical volume 
$ sudo pvcreate /dev/sdb1
  Physical volume "/dev/sdb1" successfully created.

$ sudo pvs 
  PV         VG        Fmt  Attr PSize   PFree  
  /dev/sda3  ubuntu-vg lvm2 a--  <36.95g   3.47g
  /dev/sdb1            lvm2 ---  <25.00g <25.00g

$ sudo lvs
[sudo] password for user: 
  LV        VG        Attr       LSize  Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  ubuntu-lv ubuntu-vg -wi-ao---- 18.47g                                                    
  var       ubuntu-vg -wi-ao---- 15.00g


## Create new lv partition
$ sudo vgcreate donya /dev/sdb1 

$ sudo vgs 
  VG        #PV #LV #SN Attr   VSize   VFree  
  donya       1   0   0 wz--n- <25.00g <25.00g
  ubuntu-vg   1   2   0 wz--n- <36.95g   3.47g

$ sudo lvcreate -L 20G -n root donya
  Logical volume "root" created.

$ sudo lvs
  LV        VG        Attr       LSize  Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  root      donya     -wi-a----- 20.00g                                                    
  ubuntu-lv ubuntu-vg -wi-ao---- 18.47g                                                    
  var       ubuntu-vg -wi-ao---- 15.00g         

DONYA_PATH=$HOME/donya/DONYA
mkdir -p $DONYA_PATH

## format new partitio and mount
$ sudo mkfs -v -t ext4 /dev/donya/root
$ sudo mount /dev/donya/root $DONYA_PATH
```

# Build
```
export DONYA_PATH=$HOME/donya/DONYA
export LFS=$DONYA_PATH

# Change in future
sudo mkdir -v $LFS/sources
sudo chmod -v a+wt $LFS/sources
```
## Download packages
wget https://www.linuxfromscratch.org/lfs/downloads/stable/wget-list
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources


Check md5sum
```
wget https://www.linuxfromscratch.org/lfs/downloads/stable/md5sums

pushd $LFS/sources
  md5sum -c md5sums
popd

```

# Find a bug in lfs change download link 

```
https://prdownloads.sourceforge.net/expat/expat-2.6.2.tar.xz
to
https://altushost-swe.dl.sourceforge.net/project/expat/expat/2.6.4/expat-2.6.4.tar.xz
```


