#!/usr/bin/bash

#https://github.com/janet-lang/janet/releases/download/v1.25.1/janet-v1.25.1-linux-x64.tar.gz

cd ~/
git clone https://github.com/janet-lang/janet.git
cd janet
make -j 4
make test
sudo make install

# This assumes you have git and a gcc installed.
# https://stackoverflow.com/questions/62951461/how-to-install-janet-language-on-ubuntu
#
# Install Janet Package Manager
# git clone git@github.com:janet-lang/jpm.git
# cd jpm
# janet bootstrap.janet
#
# if you already have an installation of jpm configured, you can update jpm with
#
# jpm install jpm
#
#
