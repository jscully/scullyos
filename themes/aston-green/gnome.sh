#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

# Set GNOME Dark Mode & Green Accent Color
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface accent-color 'green'

# Set Desktop & Lockscreen Wallpaper to Aston Green
WALLPAPER_PATH="$SCULLYOS_PATH/themes/aston-green/background.png"
if [ -f "$WALLPAPER_PATH" ]; then
	gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_PATH"
	gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER_PATH"
	gsettings set org.gnome.desktop.screensaver picture-uri "file://$WALLPAPER_PATH"
fi
