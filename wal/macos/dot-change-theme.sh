wal -i $HOME/wallpapers/ -n > /dev/null

sleep 0.1
IMAGE_LOCATION=$(< "$HOME/.cache/wal/wal")
wallpaper set $IMAGE_LOCATION

tmux source-file ~/.tmux.conf
