#!/bin/sh

set -x

export NINJA_LATEST=$(curl -s https://api.github.com/repos/ninja-build/ninja/releases/latest | grep browser_download_url | cut -d '"' -f 4 | grep ninja-linux.zip)
wget "$NINJA_LATEST" -O ninja-linux.zip
sudo unzip -q ninja-linux.zip -d /usr/local/bin
