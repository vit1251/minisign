#!/bin/sh

set -x

wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
tar xf Python-3.6.1.tar.xz
cd Python-3.6.1
./configure --enable-optimizations
make -j 8
sudo make altinstall
