#!/bin/bash

URL=https://github.com/solana-labs/solana/archive/refs/tags/v1.8.12.tar.gz
VERSION=1.8.12

export PATH="/root/.cargo/bin:$PATH"
echo $PATH
cd /root
wget $URL
tar -xvf v$VERSION.tar.gz
cd solana-$VERSION
./scripts/cargo-install-all.sh .
cp -r /root/solana-$VERSION/bin /tmp/
