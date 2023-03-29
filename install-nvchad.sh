#!/usr/bin/bash

cd /root/

mv ~/.config/nvim ~/.config/backup-nvim/

rm -r ~/.local/share/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

git clone git@github.com:jorgediazjr/nvchad-custom.git

ln -Ts ~/nvchad-custom ~/.config/nvim/lua/custom


#
# Install nvm:
#   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
#   nvm install --lts
#
# Install unzip:
#   apt install unzip
#
# then open nvim
#
# run :PackerSync
#
# exit
#
# go back in and run :MasonInstallAll
#
# It is worth clearing share/nvim dir
#
# Run :TSInstall vim
#
# Install rust
#   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#
# Install exa:
#   https://github.com/ogham/exa
#   cargo install exa
#
# When adding a new plugin, runs :PackerSync afterwards
#
