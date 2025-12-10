#!/bin/sh

source "$HOME/.cache/wal/colors.sh"

if [ "$SELECTED" = "true" ]; then
    sketchybar --animate linear 5 \
               --set "$NAME" icon.color="0xff${foreground:1}" icon.color="0xff${color4:1}"
else
    sketchybar --animate linear 5 \
               --set "$NAME"  icon.color="0xff${color4:1}" icon.color="0xff${foreground:1}"
fi
