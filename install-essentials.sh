#!/bin/bash

. ./setup.sh

apt-get update
apt-get install -y --ignore-missing git pkg-config build-essential curl gcc g++ checkinstall openssh-server vim xclip p8zip-full p7zip-rar ekg2 libevent-dev libncurses5-dev tmux

echo "${green}>>>"
echo "${green}>>> Finished installing basics."
echo "${green}>>>"
echo "${reset}"
