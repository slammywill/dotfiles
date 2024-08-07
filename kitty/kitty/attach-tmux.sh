#!/bin/bash

if tmux ls &>/dev/null; then
  exec tmux attach
else
  exec tmux
fi
