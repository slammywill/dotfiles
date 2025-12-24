#!/bin/sh

source "$HOME/.cache/wal/colors.sh"

if [ "$SENDER" = "mouse.entered" ]; then
    sketchybar --animate sin 10             \
        --set "$NAME"                       \
            icon.color="0xff${foreground:1}"
fi

if [ "$SENDER" = "mouse.exited" ]; then
    sketchybar --animate sin 10             \
        --set "$NAME"                       \
            icon.color="$1"
fi
