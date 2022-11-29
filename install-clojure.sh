#!/usr/bin/bash

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
