#!/bin/bash

rannum=$((1 + $RANDOM % 20))
if [ $rannum == 1 ]; then
    /usr/bin/kitty -o background_opacity=0.0 --class nekokun sh -c 'haru --pat & exec sleep infinity'
elif [ $rannum == 2 ]; then
    /usr/bin/kitty -o background_opacity=0.0 --class nekokun sh -c 'haru --feed & exec sleep infinity'
else
    /usr/bin/kitty -o background_opacity=0.0 --class nekokun sh -c 'haru & exec sleep infinity'
fi
