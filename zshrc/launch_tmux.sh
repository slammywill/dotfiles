#!/bin/bash

in_ide() {
    [[ "$TERM_PROGRAM" == "vscode" ]] || [[ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]]
}

has_attached_sessions() {
    tmux list-sessions -F '#{session_attached}' 2>/dev/null | grep -q '^1$'
}

if [ -z "$TMUX" ] && ! in_ide && ! has_attached_sessions; then
    tmux attach || tmux new
fi
