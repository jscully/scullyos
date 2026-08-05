#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

# Run desktop installers
for installer in "$SCULLYOS_PATH"/install/desktop/*.sh; do
  [ -f "$installer" ] && source "$installer"
done

# Logout / Reboot confirmation
if command -v gum &>/dev/null; then
  gum confirm "Ready to reboot for all ScullyOS settings to take effect?" && sudo reboot || true
fi
