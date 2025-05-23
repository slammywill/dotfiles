#!/bin/sh

source "$HOME/.cache/wal/colors.sh"

if [ "$SELECTED" = "true" ]; then
    sketchybar --set "$NAME" icon.color="0xff${color2:1}" background.drawing=on
else
    sketchybar --set "$NAME" icon.color="0xff${foreground:1}" background.drawing=off
fi
