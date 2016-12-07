#!/bin/bash -ex
url_2="https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz"
filename=$(basename $url_2)
wget $url_2
tar -xvf $filename
rm -rf $filename

cd ./Python-2.7.12
./configure --enable-shared --enable-unicode=ucs4 --with-ensurepip=install --enable-ipv6 --prefix=/usr/local
LD_RUN_PATH=/usr/local/lib make
make install
cd ../

url_3="https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tar.xz"
filename=$(basename $url_3)
wget $url_3
tar -xvf $filename
rm -rf $filename
cd ./Python-3.5.2
./configure --enable-shared --with-ensurepip=install --enable-ipv6 
LD_RUN_PATH=/usr/local/lib make
make test
make altinstall 
cd ../

