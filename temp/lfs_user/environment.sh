
cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF

cat > ~/.bashrc << "EOF"
set +h
umask 022

# LFS=/mnt/lfs

DONYA_PATH=/mnt/lfs 
LFS=$DONYA_PATH

LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
EOF

cat >> ~/.bashrc << "EOF"
# export MAKEFLAGS=-j$(nproc)
export MAKEFLAGS=-j$(($(nproc) - 2))
EOF

source ~/.bash_profile


