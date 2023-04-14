#!/bin/sh -eux

## Install Go 
PKG=go1.19.8.linux-amd64.tar.gz

apt-get update
apt-get install wget -y 
wget https://golang.org/dl/${PKG}
tar -xzf ${PKG} -C /usr/local/
echo "export PATH=/usr/local/go/bin:${PATH}" | tee /etc/profile.d/go.sh
rm ${PKG}

## Install needed dev tools
apt-get install git zsh vim-nox build-essential ack -y

