#!/bin/bash


# Install essential packages
sudo sh setup.sh

# Setup favorite terminal theme
echo ">>> Setting terminal theme"
git clone https://gist.github.com/f321e3d76d89806b3507.git terminal-theme
sh terminal-theme/theme.sh

# Java
if hash java 2>/dev/null;then
  echo ">>> Java is installed. Skipping"
else
  sudo sh setup-java.sh
fi

# Ruby
if hash rbenv 2>/dev/null;then
  echo ">>> Ruby is installed. Skipping"
else
  sudo sh setup-ruby.sh
fi

# Set zsh with oh-my-zsh
echo ">>> Downloading zsh"
sudo apt-get install zsh -y
echo ">>> Setting up custom oh-my-zsh"
# wget --no-check-certificate http://install.ohmyz.sh -O oh-my-zsh.sh
sh oh-my-zsh.sh
