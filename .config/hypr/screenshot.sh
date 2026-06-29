#! /bin/bash
datedata="$(date +%y-%j-%H-%M-%S)"
file=/home/daniel/Pictures/screenshots/$datedata.png
echo $file
grim -g "$(slurp)" $file
