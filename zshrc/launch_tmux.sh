#!/bin/bash

in_ide() {
    [[ "$TERM_PROGRAM" == "vscode" ]] || [[ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]]
}

if [ -z "$TMUX" ] && ! in_ide; then
    tmux attach || tmux new
fi
