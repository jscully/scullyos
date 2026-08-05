#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

cat <<EOF >~/.local/share/applications/Docker.desktop
[Desktop Entry]
Version=1.0
Name=Docker
Comment=Manage Docker containers with LazyDocker
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Docker --title=Docker -e lazydocker
Terminal=false
Type=Application
Icon=$SCULLYOS_PATH/applications/icons/Docker.png
Categories=GTK;
StartupNotify=false
EOF
