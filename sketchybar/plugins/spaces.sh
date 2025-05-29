#!/bin/sh

source ~/.config/sketchybar/plugins/app_icons.sh

sleep 0.02
focused_space=$(yabai -m query --spaces --space | jq '.index')

yabai -m query --spaces | jq -c '.[]' | while read -r space; do
  index=$(echo "$space" | jq '.index')
  windows=$(echo "$space" | jq '.windows')

  if [ "$(echo "$windows" | jq 'length')" -gt 0 ]; then
    first_window_id=$(echo "$windows" | jq '.[0]')
    app_name=$(yabai -m query --windows --window "$first_window_id" | jq -r '.app')
    icon=$(get_icon_for_app "$app_name")
    sketchybar --set space."$index" icon="$icon" drawing=on
  elif [ "$index" -eq "$focused_space" ]; then
    sketchybar --set space."$index" icon="$DEFAULT_ICON" drawing=on
  else
    sketchybar --set space."$index" drawing=off
  fi
done
