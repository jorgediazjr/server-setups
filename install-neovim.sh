#!/usr/bin/bash
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mv nvim-linux64 /usr/bin/
echo "export PATH='/usr/bin/nvim-linux64/bin:$PATH'" >> ~/.bashr
