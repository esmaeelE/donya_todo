###########################################################
#
#
###########################################################

# add LFS environment
source environment.sh

echo our env variable is: $LFS

###
# Change ownership and create user/group
###
sudo bash user.sh
###

sudo cp /home/user/donya/lfs_user/environment.sh /home/lfs/
sudo -H -u lfs bash -c 'bash /home/lfs/environment.sh' 

# su - lfs
# su -c 'bash /home/user/donya/lfs_user/environment.sh' -l -P lfs
# ./lfs_user/environment.sh


