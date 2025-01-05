# Just enough to run this script for continue development

DONYA_PATH=/home/lfs/DONYA
LFS=$DONYA_PATH

sudo mount /dev/donya/root $DONYA_PATH

# sudo mount /dev/donya/root $DONYA_PATH
# mount /dev/donya/root $DONYA_PATH
## above mount source in lvm disk

# user: lfs
# password: lfs

# show env, why env | grep not work
# declare -p | grep DONYA

# To continue development run below command

```
# sudo mount /dev/donya/root /home/lfs/DONYA
# su - lfs
```
