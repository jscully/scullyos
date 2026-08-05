#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

THEME_NAMES=("Aston Green" "Tokyo Night" "Catppuccin" "Nord" "Everforest" "Gruvbox" "Kanagawa" "Ristretto" "Rose Pine" "Matte Black" "Osaka Jade")
CHOSEN=$(gum choose "${THEME_NAMES[@]}" "<< Back" --header "Choose your theme" --height 13 2>/dev/null)

if [ -z "$CHOSEN" ]; then
  CHOSEN="Aston Green"
fi

THEME=$(echo "$CHOSEN" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

if [ -n "$THEME" ] && [ "$THEME" != "<<-back" ]; then
  mkdir -p ~/.config/alacritty ~/.config/zellij/themes ~/.config/btop/themes

  [ -f "$SCULLYOS_PATH/themes/$THEME/alacritty.toml" ] && cp "$SCULLYOS_PATH/themes/$THEME/alacritty.toml" ~/.config/alacritty/theme.toml
  [ -f "$SCULLYOS_PATH/themes/$THEME/zellij.kdl" ] && cp "$SCULLYOS_PATH/themes/$THEME/zellij.kdl" ~/.config/zellij/themes/$THEME.kdl
  [ -f ~/.config/zellij/config.kdl ] && sed -i "s/theme \".*\"/theme \"$THEME\"/g" ~/.config/zellij/config.kdl

  if [ -f "$SCULLYOS_PATH/themes/$THEME/btop.theme" ]; then
    cp "$SCULLYOS_PATH/themes/$THEME/btop.theme" ~/.config/btop/themes/$THEME.theme
    [ -f ~/.config/btop/btop.conf ] && sed -i "s/color_theme = \".*\"/color_theme = \"$THEME\"/g" ~/.config/btop/btop.conf
  fi

  [ -f "$SCULLYOS_PATH/themes/$THEME/gnome.sh" ] && source "$SCULLYOS_PATH/themes/$THEME/gnome.sh"
  [ -f "$SCULLYOS_PATH/themes/$THEME/vscode.sh" ] && source "$SCULLYOS_PATH/themes/$THEME/vscode.sh"
  
  echo "Switched theme to: $CHOSEN"
fi

source "$SCULLYOS_PATH/bin/scullyos-sub/menu.sh"
