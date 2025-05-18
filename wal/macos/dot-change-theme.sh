wal -i $HOME/wallpapers/ -n > /dev/null

sleep 0.1
IMAGE_LOCATION=$(< "$HOME/.cache/wal/wal")
wallpaper set $IMAGE_LOCATION

tmux source-file ~/.tmux.conf

KITTY_SOCKET=$(find /tmp/mykitty-*)
if [ -n "$KITTY_SOCKET" ]; then
    kitty @ --to=unix:$KITTY_SOCKET set-colors --all --configured ~/.cache/wal/colors-kitty.conf
else
    echo "No Kitty socket found"
fi
