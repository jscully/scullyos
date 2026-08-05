#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
for script in "$SCULLYOS_PATH"/applications/*.sh; do
  [ -f "$script" ] && source "$script"
done
