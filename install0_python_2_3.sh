#!/bin/bash -ex
url_2="https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz"
filename=$(basename $url_2)
wget $url_2
tar -xvf $filename
rm -rf $filename

cd ./Python-2.7.12
./configure
make
make install
cd ../

url_3="https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tar.xz"
filename=$(basename $url_3)
wget $url_3
tar -xvf $filename
rm -rf $filename
cd ./Python-3.5.2
./configure --with-ensurepip=upgrade
make
make test
make altinstall 
cd ../

