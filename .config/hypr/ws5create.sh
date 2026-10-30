#!/bin/bash

# Switch to workspace 5
#/usr/bin/kitty --class scriptkitty -e cmatrix -b &
#sleep 0.1
/usr/bin/kitty --class scriptkitty -e btop &
sleep 0.1
#/usr/bin/kitty --class scriptkitty -e cmatrix -b &
#sleep 0.1
rannum=$((1 + $RANDOM % 3))
if [ $rannum == 1 ]; then
    /usr/bin/kitty --class scriptkitty -e pipes-rs &
elif [ $rannum == 2 ]; then
    /usr/bin/kitty --class scriptkitty -e asciiquarium &
else
    /usr/bin/kitty --class scriptkitty -e cava &
fi
sleep 0.1
/usr/bin/kitty --class scriptkitty_last &
sleep 0.1
hyprctl dispatch focuswindow class:scriptkitty_last
hyprctl dispatch movetowindowmouse class:scriptkitty_last center
