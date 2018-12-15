#!/bin/sh

set -x

wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py
python3.6 ./get-pip.py
