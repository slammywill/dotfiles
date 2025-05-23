#!/bin/bash

APP=$(yabai -m query --windows --window | jq -r '.app')
WINDOW_COUNT=$(yabai -m query --windows | jq "[.[] | select(.app == \"$APP\")] | length")
KITTY_SOCKET=$(find /tmp/mykitty-*)

if [ "$WINDOW_COUNT" -gt 1 ]; then
    if [ "$APP" = "kitty" ]; then
        kitty @ --to=unix:$KITTY_SOCKET close-window
    else
        osascript -e "tell application \"$APP\" to close front window"
    fi
else
    osascript -e "tell application \"$APP\" to quit"
fi
