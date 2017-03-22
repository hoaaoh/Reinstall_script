#!/bin/bash


url="http://us.download.nvidia.com/XFree86/Linux-x86_64/375.39/NVIDIA-Linux-x86_64-375.39.run"

filename=$(basename $url)
wget $url
chmod +x $filename
service lightdm stop || true
init 3
./$filename
rm -rf $filename

nvidia-smi -c 0


