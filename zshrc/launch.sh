#!/bin/bash

# Run neofetch user user input
neofetch
read -n 1

# Attach to tmux session if one exists else create one
if [ "$TMUX" = "" ];
  then tmux attach || tmux new;
fi

