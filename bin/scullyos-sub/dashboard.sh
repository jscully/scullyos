#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
DASHBOARD="$SCULLYOS_PATH/dashboard/index.html"

if [ -f "$DASHBOARD" ]; then
	echo "Opening ScullyOS Command Center Dashboard..."
	xdg-open "$DASHBOARD" &>/dev/null || sensible-browser "$DASHBOARD" &>/dev/null || x-www-browser "$DASHBOARD" &>/dev/null
else
	echo "Dashboard HTML not found at $DASHBOARD"
fi

source $SCULLYOS_PATH/bin/scullyos-sub/menu.sh
