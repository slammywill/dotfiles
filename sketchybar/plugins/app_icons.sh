DEFAULT_ICON="󱓼 "

# Mapping function
get_icon_for_app() {
  case "$1" in
    "Activity Monitor") echo " " ;;
    "Archive Utility") echo " " ;;
    "Calculator") echo " " ;;
    "Calendar") echo " " ;;
    "Code") echo " " ;;
    "Cursor") echo " " ;;
    "Discord") echo " " ;;
    "Docker Desktop") echo " " ;;
    "Factorio") echo "󰈏 " ;;
    "Finder") echo " " ;;
    "Intellij IDEA") echo "  " ;;
    "Jellyfin") echo " " ;;
    "Karabiner-Elements") echo "󱓀 " ;;
    "Kindle") echo " " ;;
    "kitty") echo "󰄛 " ;;
    "Live") echo "󰽰" ;;
    "Obsidian") echo " " ;;
    "Mattermost") echo "󰚢 " ;;
    "Messages") echo "󰍡 " ;;
    "Microsoft Word") echo "󱎒 " ;;
    "Microsoft Excel") echo "󱎏 " ;;
    "Microsoft PowerPoint") echo "󱎐 " ;;
    "Music") echo " " ;;
    "Notes") echo " " ;;
    "Postman") echo " " ;;
    "Preview") echo " " ;;
    "Reminders") echo "󱃔 " ;;
    "Spotify") echo " " ;;
    "Steam") echo " " ;;
    "System Settings") echo "󰒓 " ;;
    "uavsar") echo "󰦄 " ;;
    "Zathura") echo " " ;;
    "Zen") echo " " ;;
    *) echo "$DEFAULT_ICON" ;;
  esac
}
