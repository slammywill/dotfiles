#!/bin/bash

source ~/dotfiles/zshrc/launch_tmux.sh
   
neofetch

fortune -a | cowthink -f $(find /usr/share/cowsay/cows -type f | shuf -n 1)

