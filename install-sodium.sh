#!/bin/sh

set -x

git clone https://github.com/jedisct1/libsodium.git --branch=stable
cd libsodium
env CPPFLAGS=-DED25519_NONDETERMINISTIC ./configure --disable-dependency-tracking
sudo make install
sudo ldconfig
cd ..
