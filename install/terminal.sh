#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"

# Run terminal installers
for installer in "$SCULLYOS_PATH"/install/terminal/*.sh; do
  [ -f "$installer" ] && source "$installer"
done
