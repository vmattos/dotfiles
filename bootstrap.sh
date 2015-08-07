#!/bin/bash

. ./setup.sh

sudo sh install-essentials.sh

# Setup favorite terminal theme
sudo sh setup-terminal-preferences.sh

# Java
if hash java 2>/dev/null;then
  echo "${red}>>> Java is installed. Skipping${reset}"
else
  sudo sh setup-java.sh
fi

# Ruby
if hash rbenv 2>/dev/null;then
  echo "${red}>>> Ruby is installed. Skipping${reset}"
else
  sudo sh setup-ruby.sh
fi

# NodeJS
if hash node 2>/dev/null;then
  echo "${red}>>> NodeJS is installed. SKipping${reset}"
else
  sudo sh setup-node.sh
  sudo sh setup-node-link-sudo.sh
fi

# Go
sudo sh setup-go.sh

# Set zsh with oh-my-zsh
echo "${green}>>> Downloading zsh${reset}"
sudo apt-get install zsh -y
echo "${green}>>> Setting up custom oh-my-zsh${reset}"
# wget --no-check-certificate http://install.ohmyz.sh -O oh-my-zsh.sh
sh oh-my-zsh.sh

# Creating files symlinks
for file in $DOTFILES; do
  echo "${green}>>> Configuring $file preferences${reset}"
  sh setup-$file.sh
done

