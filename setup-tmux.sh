#!/bin/bash

echo "${yellow}>>> Creating .tmux-conf symlink${reset}"
ln -s dotfiles-master/tmux.conf $HOME/.tmux.conf

