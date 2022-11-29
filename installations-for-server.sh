#!/usr/bin/bash
##############################
#
# INSTALL NODEJS
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

# use `sudo` on Ubuntu or run this as root on debian
apt-get install -y build-essential

node --version
npm --version

##############################
#
# install ELM in root
cd ~/

# Download the 0.19.1 binary for Linux.
#
# +-----------+----------------------+
# | FLAG      | MEANING              |
# +-----------+----------------------+
# | -L        | follow redirects     |
# | -o elm.gz | name the file elm.gz |
# +-----------+----------------------+
#
curl -L -o elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz

# There should now be a file named `elm.gz` on your Desktop.
#
# The downloaded file is compressed to make it faster to download.
# This next command decompresses it, replacing `elm.gz` with `elm`.
#
gunzip elm.gz

# There should now be a file named `elm` on your Desktop!
#
# Every file has "permissions" about whether it can be read, written, or executed.
# So before we use this file, we need to mark this file as executable:
#
chmod +x elm

# The `elm` file is now executable. That means running `~/Desktop/elm --help`
# should work. Saying `./elm --help` works the same.
#
# But we want to be able to say `elm --help` without specifying the full file
# path every time. We can do this by moving the `elm` binary to one of the
# directories listed in your `PATH` environment variable:
#
sudo mv elm /usr/local/bin/

# Now it should be possible to run the `elm` binary just by saying its name!
#
elm --help

##############################
#
# Install NEOVIM
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mv nvim-linux64 /usr/bin/
echo "export PATH='/usr/bin/nvim-linux64/bin:$PATH'" >> ~/.bashrc

##############################
#
# install elm-format
npm install -g elm-format

##############################
#
# install go
cd ~/
rm -rf /usr/local/go
wget https://go.dev/dl/go1.18.3.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go1.18.3.linux-amd64.tar.gz
cd /usr/local/
ls
cd /root
echo "export PATH='$PATH:/usr/local/go/bin'" >> ~/.bashrc
source ~/.bashrc
rm ~/go1.18.3.linux-amd64.tar.gz
go version

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


##############################
#
# install clojure
cd ~/

rm /usr/local/bin/lein

# Step 1: Install java first

sudo apt-get install -y software-properties-common wget apt-transport-https

sudo mkdir -p /etc/apt/keyrings
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | sudo tee /etc/apt/keyrings/adoptium.asc

sudo apt-get update

sudo apt-get install -y temurin-17-jdk

java -version


# Step 2: Install Leiningen

sudo apt-get install -y curl

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > lein

sudo mv lein /usr/local/bin/lein

sudo chmod a+x /usr/local/bin/lein

lein version

# Step 3: Install CLI for Clojure

sudo apt-get install -y bash curl rlwrap

curl -O https://download.clojure.org/install/linux-install-1.10.2.774.sh

chmod +x linux-install-1.10.2.774.sh

sudo ./linux-install-1.10.2.774.sh

clj

# resources
# https://ericnormand.me/guide/how-to-install-clojure#linux-java-1
