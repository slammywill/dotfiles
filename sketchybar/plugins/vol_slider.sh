#!/bin/sh

if [ "$SENDER" = "volume_change" ]; then
    VOLUME="$INFO"

    sketchybar --set volume.slider      \
        slider.percentage=$VOLUME
fi

if [ "$SENDER" = "mouse.clicked" ]; then
    osascript -e "set volume output volume $PERCENTAGE"
fi
