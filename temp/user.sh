# Run below commands as superuser to create lfs user



# Pass from bash?
source general_env.sh
echo $LFS
###

### Create user and group
# groupadd lfs
# useradd -s /bin/bash -g lfs -m -k /dev/null lfs
# passwd lfs
###


# before run this LFS must set



chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac




# su - lfs



