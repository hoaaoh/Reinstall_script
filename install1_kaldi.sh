#!/bin/bash 
dir=$(pwd)
git clone https://github.com/kaldi-asr/kaldi.git kaldi --origin upstream
cd kaldi

### tools ###
cd tools
./extras/check_dependencies.sh
make -j 8
cd ..
### src ### 
cd src
./configure --shared
make depend -j 8
make -j 8
cd ..
