#!/bin/bash

. ./setup.sh

echo "${yellow}Installing node latest stable${reset}"

echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc

source $HOME/.bashrc

mkdir $HOME/local
mkdir $HOME/node-latest-install
cd $HOME/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=$HOME/local
make install

# Source our bash in order to have node at our path.
# Otherwise, the npm script will fail.
source $HOME/.bashrc
export PATH=$HOME/local/bin:$PATH

curl -L https://www.npmjs.org/install.sh | sh

echo "${green}>>>" 
echo ">>> Finished installing node latest stable." 
echo ">>>"
echo "${reset}"

