#!/bin/bash

WAL_COLORS="$HOME/.cache/wal/colors.sh"
WAYBAR_TEMPLATE="$HOME/.config/waybar/style.template.css"
WAYBAR_CSS="$HOME/.config/waybar/style.css"

# Load pywal colors
source "$WAL_COLORS"

# Convert hex to "R, G, B" format for rgba()
hex_to_rgb() {
    hex="${1#"#"}"
    r=$((16#${hex:0:2}))
    g=$((16#${hex:2:2}))
    b=$((16#${hex:4:2}))
    echo "$r, $g, $b"
}

background_rgb=$(hex_to_rgb "$background")

# Replace placeholders in Waybar template
sed \
  -e "s|{foreground}|$foreground|g" \
  -e "s|{background}|$background|g" \
  -e "s|{background-rgb}|$background_rgb|g" \
  -e "s|{color0}|$color0|g" \
  -e "s|{color1}|$color1|g" \
  -e "s|{color2}|$color2|g" \
  -e "s|{color3}|$color3|g" \
  -e "s|{color4}|$color4|g" \
  -e "s|{color5}|$color5|g" \
  -e "s|{color6}|$color6|g" \
  -e "s|{color7}|$color7|g" \
  -e "s|{color8}|$color8|g" \
  -e "s|{color9}|$color9|g" \
  -e "s|{color10}|$color10|g" \
  -e "s|{color11}|$color11|g" \
  -e "s|{color12}|$color12|g" \
  -e "s|{color13}|$color13|g" \
  -e "s|{color14}|$color14|g" \
  -e "s|{color15}|$color15|g" \
  "$WAYBAR_TEMPLATE" > "$WAYBAR_CSS"
