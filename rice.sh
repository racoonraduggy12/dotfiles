#!/bin/bash

cd ~/
sudo pacman -S hyprland cava asciiquarium cmatrix python firefox wofi ly ttf-terminus-nerd matugen awww mpv mpvpaper dolphin grim slurp btop kitty fastfetch kate systemsettings git fcitx5 fcitx5-im fcitx5-mozc fcitx5-configtool fcitx5-gtk fcitx5-qt noto-fonts-cjk qt6-multimedia plasma-pa wireplumber pipewire pipewire-pulse python-jinja rofimoji python-pyqt6
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/
sudo yay -S pipes-rs mpvpaper haru wewa
mv ~/dotfiles/.local ~/
mv ~/dotfiles/.config ~/
sudo chmod +x ~/.config/hypr/colorpallate.sh
sudo chmod +x ~/.config/hypr/ws5create.sh
sudo chmod +x ~/.config/hypr/bkwrapper.sh
sudo chmod +x ~/.config/hypr/arch-movie.sh
sudo chmod +x ~/.config/hypr/background-setter.sh
sudo chmod +x ~/.config/hypr/renderer.py
sudo chmod +x ~/.config/hypr/background-reseter.sh
sudo chmod +x ~/.config/hypr/ws5leave.sh
sudo chmod +x ~/.config/hypr/screenshot.sh
git clone https://github.com/racoonraduggy12/linux-clock-hud.git
mkdir -p ~/.local/bin
sudo mv ~/linux-clock-hud/time-overlay.py ~/.local/bin/
sudo chmod +x ~/.local/bin/time-overlay.py
