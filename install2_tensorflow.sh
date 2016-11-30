#!/bin/bash -ex

url_2.7=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl
url_3.5=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0-cp35-cp35m-linux_x86_64.whl

file=$(basename $url_2.7)
rm -rf $file
wget $url_2.7

pip install --upgrade $file

rm -rf $file

file=$(basename $url_3.5)
rm -rf $file
wget $url_3.5

pip3 install --upgrade $file

rm -rf $file
