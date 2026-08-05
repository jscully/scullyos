#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

cat <<EOF >~/.local/share/applications/ScullyOS.desktop
[Desktop Entry]
Version=1.0
Name=ScullyOS
Comment=ScullyOS Command Center & Settings
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=ScullyOS --title=ScullyOS -e scullyos
Terminal=false
Type=Application
Icon=$SCULLYOS_PATH/applications/icons/Omakub.png
Categories=GTK;Utility;Development;
StartupNotify=false
EOF
