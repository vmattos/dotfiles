#!/bin/bash

. ./setup.sh

wget https://raw.githubusercontent.com/xlucas/go-vim-install/master/install.sh
chmod +x install.sh

./install.sh -go https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz

echo "${green}>>>"
echo ">>> Finished installing Go"
echo ">>>"
echo "${reset}"

. $HOME/.profile

./install.sh -vim

. $HOME/.profile

./install.sh -work ~/Workspace/go

. $HOME/.profile


