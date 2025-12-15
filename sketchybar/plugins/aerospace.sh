#!/bin/sh

source "$HOME/.cache/wal/colors.sh"

FOCUSED=$(aerospace list-workspaces --focused)

if [ "$1" = "$FOCUSED" ]; then
    sketchybar --animate sin 5 \
               --set "$NAME" icon.color icon.color="0xff${color4:1}"
else
    sketchybar --animate sin 5 \
               --set "$NAME"  icon.color icon.color="0xff${foreground:1}"
fi
