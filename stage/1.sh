#################################################################################################                                                                                                                  
#################################################################################################                                                                                                                  
#################################################################################################                                                                                                                  
#################################################################################################                                                                                                                  
                                                                                                                                                                                                                   
# Prerequestics                                                                                                                                                                                                    
                                                                                                                                                                                                                   
# Stage One                                                                                                                                                                                                        
                                                                                                                                                                                                                   
## Change user to root                                                                                                                                                                                             
                                                                                                                                                                                                                   
### Become root                                                                                                                                                                                                    
                                                                                                                                                                                                                   
sudo su                                                                                                                                                                                                            
                                                                                                                                                                                                                   
---                                                                                                                                                                                                                
                                                                                                                                                                                                                   
## Moved to continue                                                                                                                                                                                               
# export DONYA_PATH=$HOME/donya/DONYA                                                                                                                                                                              
# export LFS=$DONYA_PATH                                                                                                                                                                                           
# mount /dev/donya/root $DONYA_PATH                                                                                                                                                                                
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
sudo mkdir -v $LFS/sources                                                                                                                                                                                         
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
chmod -v a+wt $LFS/sources                                                                                                                                                                                         
                                                                                                                                                                                                                   
                                                                                                                                                                                                                   
# Change in future                                                                                                                                                                                                 
# mkdir -v $LFS/sources                                                                                                                                                                                            
                                                                                                                                                                                                                   
download this file manualy                                                                                                                                                                                         
https://altushost-swe.dl.sourceforge.net/project/expat/expat/2.6.4/expat-2.6.4.tar.xz                                                                                                                              
                                                                                                                              

                                                                                      ## Build

## Stage One also run as root

mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac


################################################################################################# 


mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
  x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools


groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs


passwd lfs

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac


Login as new user

su - lfs

## Run in lfs environment

export MAKEFLAGS=-j32

Inside lfs environment run all command on sources directory

exclude source directory from build stage
exclude to generate backup



                                                                                                                              
                                                                                                                              
