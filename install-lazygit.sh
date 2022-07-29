#!/usr/bin/bash

##############################
#
# install lazygit
go install github.com/jesseduffield/lazygit@latest
if [ -f "~/vim_setup/.bash_aliases" ]; then
    echo "alias lg='lazygit'" >> ~/vim_setup/.bash_aliases
else
    echo "alias lg='lazygit'" >> ~/.bashrc
fi
cp ~/go/bin/lazygit /usr/local/bin/
