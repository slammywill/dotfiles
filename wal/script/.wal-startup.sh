#!/bin/bash

wal -i $HOME/wallpapers &

# HYPRLAND
WAL_COLORS="$HOME/.cache/wal/colors"
HYPR_CONF="$HOME/.cache/wal/colors-hyprland.conf"

ACTIVE_COLOR=$(sed -n '2p' "$WAL_COLORS" | tr -d '#')
INACTIVE_COLOR=$(sed -n '8p' "$WAL_COLORS" | tr -d '#')

{
  echo "general {"
  echo "    col.active_border = rgba(${ACTIVE_COLOR}FF)"
  echo "    col.inactive_border = rgba(${INACTIVE_COLOR}FF)"
  echo "}"
} > "$HYPR_CONF"

# HYPRPAPER
WALLPAPER=$(cat ~/.cache/wal/wal)
ln -sf "$WALLPAPER" ~/.cache/wal/hyprpaper_wal

