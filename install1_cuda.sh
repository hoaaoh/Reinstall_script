#!/bin/bash -ex

url="https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run"

filename=$(basename $url)
tmp=$(mktemp)

rm -rf $filename
wget $url
chmod +x $filename
init 3
./$filename
init 3
rm -rf $file

ldconfig /usr/local/cuda/lib64
echo "/usr/local/cuda/lib64" > $tmp
cp $tmp /etc/ld.so.conf.d/cuda-x86_64.conf

rm -rf $tmp
