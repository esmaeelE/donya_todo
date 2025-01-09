# We add disk as sdb

lsblk -f 
fdisk /dev/sdb

# partition sdb, create sdb1
sudo fdisk /dev/sdb

# Create physical volume
sudo pvcreate /dev/sdb1
sudo pvdisplay
sudo pvs

# Create volume group
sudo vgcreate donya_vg /dev/sdb1 

# Create logical volume
sudo lvcreate -l +80%FREE -n donya_build donya_vg 

sudo pvs 
sudo lvs 

# format file system
```
sudo mkfs.ext4 /dev/sdb1
```

```
sudo mkfs.ext4 -m 0 /dev/mapper/donya_vg-donya_build
```

Create user script, set env


