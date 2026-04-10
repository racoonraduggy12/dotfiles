#! /bin/bash
datedata="$(date +%y-%j-%H-%M-%S)"
file=~/Pictures/screenshots/$datedata.png
echo $file
grim -g "$(slurp)" $file
