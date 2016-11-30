#!/bin/bash


url="http://us.download.nvidia.com/XFree86/Linux-x86_64/375.20/NVIDIA-Linux-x86_64-375.20.run"

filename=$(basename $url)
wget $url
chmod +x $filename
service lightdm stop || true
init 3 || true
./$filename
rm -rf $filename

nvidia-smi -c 0


