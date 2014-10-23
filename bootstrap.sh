#!/bin/bash

. ./setup.sh

# Install essential packages
sudo sh install-essentials.sh

# Setup favorite terminal theme
if [ -d $TERMINAL_THEME_DIR ]; then
  echo "${blue}Deleting terminal theme directory${reset}"
  rm -rf $TERMINAL_THEME_DIR
fi

echo "${green}>>> Setting terminal theme${reset}"
git clone https://gist.github.com/f321e3d76d89806b3507.git ~/terminal-theme
sh ~/terminal-theme/theme.sh

# Setting up vim.rc

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

