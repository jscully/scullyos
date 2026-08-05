#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

sudo add-apt-repository universe -y 2>/dev/null || true
sudo add-apt-repository ppa:agornostal/ulauncher -y 2>/dev/null || true
sudo apt update
sudo apt install ulauncher -y || true

mkdir -p ~/.config/autostart/ ~/.config/ulauncher/
[ -f "$SCULLYOS_PATH/configs/ulauncher.desktop" ] && cp "$SCULLYOS_PATH/configs/ulauncher.desktop" ~/.config/autostart/ulauncher.desktop
[ -f "$SCULLYOS_PATH/configs/ulauncher.json" ] && cp "$SCULLYOS_PATH/configs/ulauncher.json" ~/.config/ulauncher/settings.json
