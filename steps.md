# Donya OS stages to build

## Download all required packages.
All steps suppose we work on Debian stable as host.

### Download latest version of lfs-packages tar file
```
$ aria2c https://mirror.koddos.net/lfs/lfs-packages/lfs-packages-12.2.tar
```

Extract archive file
```
mkdir sources
tar xvf lfs-packages-12.2.tar --strip-components=1  -C sources 
```


Check archive integrity with this script
```
LFS=/home/user/dny

pushd $LFS/sources
  md5sum -c md5sums | grep -v ": OK"
popd
```

* Move Sonya development to dockerize solution.
* how to export docker output to real iso.
* 


