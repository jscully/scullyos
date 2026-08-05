#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
[ -f "$SCULLYOS_PATH/configs/xcompose" ] && envsubst < "$SCULLYOS_PATH/configs/xcompose" > ~/.XCompose
ibus restart 2>/dev/null || true
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"
