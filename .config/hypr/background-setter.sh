#!/bin/bash
swww img /home/daniel/Pictures/background-archbtw.png --transition-type none & haru --feed
# /home/daniel/.config/hypr/arch-movie.sh
wallpaper="/home/daniel/Pictures/tealbackgrounds/"
wfile=$(ls /home/daniel/Pictures/tealbackgrounds/ | shuf -n 1)
wallpaper="$wallpaper$wfile"
month=$(date +%m)
day=$(date +%d)
if [[ ( $month -eq 12 && $day -eq 31 ) || ( $month -eq 1 && $day -eq 1 ) ]]; then
    wallpaper="/home/daniel/Pictures/background-new-year.png"
    source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ $month -eq 12 && ( $day -le 25 && $day -ge 23 ) ]]; then
    wallpaper="/home/daniel/Pictures/background-Christmas.png"
    source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ ( $month -eq 3 && $day -eq 11 ) ]]; then
    wallpaper="/home/daniel/Pictures/background-archbtw.png"
    source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ "$wallpaper" == "/home/daniel/Pictures/tealbackgrounds/linuxftw.png" ]]; then
    source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"
fi
if [[ "$wallpaper" == "/home/daniel/Pictures/tealbackgrounds/ring4.png" ]]; then
    source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"
fi
source /home/daniel/.config/hypr/colorpallate.sh "$wallpaper"

# uncomment and change for video wallpaper
# source /home/daniel/.config/hypr/colorpallate.sh /home/daniel/Pictures/renders/frame_0180.png
# mpvpaper -o "no-audio loop loop-playlist" HDMI-A-1 /home/daniel/Videos/renders/cyperpunk-ca.mp4 & mpvpaper -o "no-audio loop loop-playlist" DP-1 /home/daniel/Videos/renders/cyperpunkside.mp4 & mpvpaper -o "no-audio loop loop-playlist" DP-2 /home/daniel/Videos/renders/cyperpunkside.mp4
