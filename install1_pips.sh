#!/bin/bash -ex
apt-get install python-pip
pip install --upgrade pip

apt-get install python3-setuptools
sudo python3.5 /usr/local/lib/python3.5/dist-packages/easy_install.py pip
pip3 install --upgrade pip3
