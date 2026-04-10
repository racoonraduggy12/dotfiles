#!/usr/bin/env bash
# Usage: ./color-pipeline.sh /path/to/wallpaper [calm|vibrant]

WALL="$1"

# Generate palette
matugen image "$WALL" --json hex --source-color-index 0 > ~/palette.json
source ~/Documents/coding/python/testing-venv/bin/activate
python ~/.config/hypr/renderer.py

# Render GTK templates
# matugen render ~/.config/matugen/templates/gtk3.css ~/.config/gtk-3.0/gtk.css
# matugen render ~/.config/matugen/templates/gtk4.css ~/.config/gtk-4.0/gtk.css

# Render Qt template
# matugen render ~/.config/matugen/templates/qt.colors.template ~/.local/share/color-schemes/extramostbestest.colors

# Render Hyprland template
swww img "$WALL" --transition-type wipe &
# Reload Hyprland colors
(
    hyprctl reload & kitty @ set-colors -a -c ~/.config/kitty/kitty.conf & current_ws=$(hyprctl activeworkspace | grep -oP '\(\K[0-9]+(?=\))')
    if [ "$current_ws" = "5" ]; then
        ~/.config/hypr/ws5leave.sh
        sleep 0.2
        ~/.config/hypr/ws5create.sh
    fi
)


