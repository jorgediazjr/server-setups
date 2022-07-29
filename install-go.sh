#!/usr/bin/bash

rm -rf /usr/local/go

wget https://go.dev/dl/go1.18.3.linux-amd64.tar.gz

sudo tar -C /usr/local/ -xzf go1.18.3.linux-amd64.tar.gz

cd /usr/local/
ls

cd /root
tee -a .bashrc << EOF
export PATH="$PATH:/usr/local/go/bin"
EOF

source ~/.bashrc

go version
