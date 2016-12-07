#!/bin/bash -ex

url_27="https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.0rc0-cp27-none-linux_x86_64.whl"
url_35="https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.0rc0-cp35-cp35m-linux_x86_64.whl"

file=$(basename $url_27)
rm -rf $file
wget $url_27

pip2 install --upgrade $file

rm -rf $file

file=$(basename $url_35)
rm -rf $file
wget $url_35

pip3 install --upgrade $file

rm -rf $file
