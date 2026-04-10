#!/bin/bash
swww img ~/Pictures/background-archbtw.png --transition-type none
~/.config/hypr/arch-movie.sh
wallpaper="~/Pictures/tealbackgrounds/"
wfile=$(ls ~/Pictures/tealbackgrounds/ | shuf -n 1)
wallpaper="$wallpaper$wfile"
month=$(date +%m)
day=$(date +%d)
if [[ ( $month -eq 12 && $day -eq 31 ) || ( $month -eq 1 && $day -eq 1 ) ]]; then
    wallpaper="~/Pictures/background-new-year.png"
    source ~/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ $month -eq 12 && ( $day -le 25 && $day -ge 23 ) ]]; then
    wallpaper="~/Pictures/background-Christmas.png"
    source ~/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ ( $month -eq 3 && $day -eq 11 ) ]]; then
    wallpaper="~/Pictures/background-archbtw.png"
    source ~/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ "$wallpaper" == "~/Pictures/tealbackgrounds/linuxftw.png" ]]; then
    source ~/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ "$wallpaper" == "~/Pictures/tealbackgrounds/ring4.png" ]]; then
    source ~/.config/hypr/colorpallate.sh "$wallpaper"
fi
swww img "$wallpaper" --transition-type wipe
