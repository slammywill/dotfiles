#!/bin/zsh

source "$HOME/.cache/wal/colors.sh"
source "$HOME/.config/sketchybar/plugins/app_icons.sh"

NUM_WS=$(aerospace list-workspaces --all --count)
FOCUSED_WS=$(aerospace list-workspaces --focused)

for i in {1..$NUM_WS}; do
    WINDOWS=("${(@f)$(aerospace list-windows --workspace $i --json \
        | jq -r '.[].["app-name"]' )}")
    
    ICONS=""
    for j in {1..$#WINDOWS}; do
        ICON=$(get_icon_for_app "${WINDOWS[j]}")
        ICONS+="$ICON"
    done
    if [ "$i" = "$FOCUSED_WS" ]; then
        sketchybar --animate sin 5      \
            --set space.$i              \
                icon="$ICONS"           \
                icon.color="0xff${foreground:1}"
    else
        color_var="color$i"
        color_value="${(P)color_var}"

        sketchybar --animate sin 5      \
            --set space.$i              \
                icon="$ICONS"           \
                icon.color="0xff${color_value:1}"
    fi
done

