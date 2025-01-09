
lsblk -f 
fdisk /dev/sdb
sudo fdisk /dev/sdb
lsblk -f 
pvcreate /dev/sdb1
suod pvcreate /dev/sdb1
sudo pvcreate /dev/sdb1
pvdisplay
sudo pvdisplay
sudp pvs 
sudp pvs
sudo pvs
sudo vgcreate donya_vg /dev/sdb1 
sudo lvcreate -l +80%FREE -n donya_build donya_vg 
sudo pvs 
sudo lvs 

