 Default fallback icon
DEFAULT_ICON=" "

# Mapping function
get_icon_for_app() {
  case "$1" in
    "Activity Monitor") echo " " ;;
    "Calendar") echo " " ;;
    "Cursor") echo " " ;;
    "Discord") echo " " ;;
    "Docker Desktop") echo " " ;;
    "Factorio") echo "󰈏 " ;;
    "Finder") echo " " ;;
    "Intellij IDEA") echo "  " ;;
    "Jellyfin") echo " " ;;
    "Karabiner-Elements") echo "󱓀 " ;;
    "kitty") echo " " ;;
    "Mattermost") echo "󰚢 " ;;
    "Messages") echo "󰍡 " ;;
    "Music") echo " " ;;
    "Reminders") echo "󱃔 " ;;
    "Spotify") echo " " ;;
    "System Settings") echo "󰒓 " ;;
    "Visual Studio Code") echo " " ;;
    "Zen") echo "󰖟 " ;;
    *) echo "$DEFAULT_ICON" ;;
  esac
}
