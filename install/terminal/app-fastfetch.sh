#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

# Display system information in the terminal
sudo add-apt-repository -y ppa:zhangsongcui3371/fastfetch 2>/dev/null || true
sudo apt update -y
sudo apt install -y fastfetch || true

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  mkdir -p ~/.config/fastfetch
  [ -f "$SCULLYOS_PATH/configs/fastfetch.jsonc" ] && cp "$SCULLYOS_PATH/configs/fastfetch.jsonc" ~/.config/fastfetch/config.jsonc
fi
