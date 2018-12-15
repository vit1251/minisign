#!/bin/sh

set -x

wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py
sudo python3.6 ./get-pip.py
