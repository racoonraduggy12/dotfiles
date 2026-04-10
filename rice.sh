#!/bin/bash

sudo pacman -S hyprland cava asciiquarium cmatrix python firefox wofi sddm ttf-terminus-nerd matugen swww mpv mpvpaper dolphin grim slurp btop kitty fastfetch kate systemsettings git
sudo yay -S pipes-rs mpvpaper
mv ~/dotfiles/.local ~/
mv ~/dotfiles/.config ~/
chmod +x ~/.config/hypr/colorpallate.sh
chmod +x ~/.config/hypr/ws5create.sh
chmod +x ~/.config/hypr/bkwrapper.sh
chmod +x ~/.config/hypr/arch-movie.sh
chmod +x ~/.config/hypr/background-setter.sh
chmod +x ~/.config/hypr/renderer.py
chmod +x ~/.config/hypr/background-reseter.sh
chmod +x ~/.config/hypr/ws5leave.sh
chmod +x ~/.config/hypr/screenshot.sh
git clone https://github.com/racoonraduggy12/linux-clock-hud.git
mv ~/linux-clock-hud/time-overlay.py ~/.local/bin/
chmod +x ~/.local/bin/time-overlay.py
