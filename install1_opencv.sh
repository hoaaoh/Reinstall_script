#!/bin/bash -ex 

apt-get install build-essential
apt-get install cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev 

cd ~
git clone https://github.com/opencv/opencv.git

dir=release
mkdir $dir
cd $dir
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local /home/hoa/opencv

make 
make install
