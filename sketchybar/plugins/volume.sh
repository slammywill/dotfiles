#!/bin/sh

source "$HOME/.cache/wal/colors.sh"

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  case "$VOLUME" in
    [6-9][0-9]|100) ICON="󰕾 "
    ;;
    [3-5][0-9]) ICON="󰖀 "
    ;;
    [1-9]|[1-2][0-9]) ICON="󰕿 "
    ;;
    *) ICON="󰖁 "
  esac

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi

if [ "$SENDER" = "mouse.clicked" ]; then
    SLIDER_WIDTH=$(sketchybar --query volume.slider | jq -r '.slider.width')

    if [ $SLIDER_WIDTH = 0 ]; then
        sketchybar --animate sin 10         \
            --set volume.slider             \
                slider.width=80             \
                slider.knob=" "
    else
        sketchybar --animate sin 10         \
            --set volume.slider             \
                slider.width=0              \
                slider.knob=""
    fi
fi

if [ "$SENDER" = "mouse.entered" ]; then
    sketchybar --animate sin 10             \
        --set volume                        \
            icon.color="0xff${foreground:1}"
fi

if [ "$SENDER" = "mouse.exited" ]; then
    sketchybar --animate sin 10             \
        --set volume                        \
            icon.color="0xff${color3:1}"
fi
