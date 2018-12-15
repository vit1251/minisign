#!/bin/sh

set -x

wget https://www.python.org/ftp/python/3.6.7/Python-3.6.7.tar.xz
tar xf Python-3.6.7.tar.xz
cd Python-3.6.7
./configure --enable-optimizations
make -j 2
sudo make altinstall
