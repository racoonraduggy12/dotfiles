#!/bin/bash

WALL_DIR="$HOME/Pictures"

choice=$(find "$WALL_DIR" -maxdepth 1 -type d | sed "s|$WALL_DIR/||" | wofi --dmenu -i -p "Wallpaper")
folder="$WALL_DIR/$choice"
choice=$(find "$folder" -type f -printf '%T@ %p\n' | sort -nr | cut -d' ' -f2- | sed "s|$folder/||" | wofi --dmenu -i -p "Wallpaper")
img="$folder/$choice"
[ -n "$img" ] && cpaper "$img"
