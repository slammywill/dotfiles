#!/bin/bash

WAL_COLORS="$HOME/.cache/wal/colors.sh"
TOFI_TEMPLATE="$HOME/.config/tofi/config.template"
TOFI_CONFIG="$HOME/.config/tofi/config"

# Load pywal colors
source "$WAL_COLORS"

# Replace placeholders in template and write final config
sed \
  -e "s|{foreground}|$foreground|g" \
  -e "s|{background}|$background|g" \
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
  "$TOFI_TEMPLATE" > "$TOFI_CONFIG"
