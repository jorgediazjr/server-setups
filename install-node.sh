#!/usr/bin/bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

# use `sudo` on Ubuntu or run this as root on debian
apt-get install -y build-essential

node --version
npm --version
