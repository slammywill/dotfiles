#!/bin/bash

source ~/dotfiles/zshrc/launch_tmux.sh
   
neofetch

OS=$(uname)
if [[ $OS == "Darwin" ]]; then
    COW_PATH=$(brew --prefix cowsay)/share/cowsay/cows/
    fortune | cowthink -f "$(find "$COW_PATH" -type f | shuf -n 1)"
elif [[ $OS == "Linux" ]]; then
    fortune -a | cowthink -f $(find /usr/share/cowsay/cows -type f | shuf -n 1)
fi

