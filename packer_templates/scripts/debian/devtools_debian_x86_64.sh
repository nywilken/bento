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

GHPKG=gh_2.27.0_linux_amd64.deb
wget https://github.com/cli/cli/releases/download/v2.27.0/${GHPKG}
dpkg -i /path/to/deb/file ${GHPKG} 
apt-get install install -f -y
rm ${GHPKG} 

