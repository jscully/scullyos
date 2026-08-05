#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
export SCULLYOS_PATH

if [ $# -eq 0 ]; then
	SUB=$(gum choose "Dashboard" "Theme" "Font" "Update" "Install" "Uninstall" "Quit" --height 10 --header "" | tr '[:upper:]' '[:lower:]')
else
	SUB=$1
fi

if [ "$SUB" = "manual" ]; then
	SUB="dashboard"
fi

[ -n "$SUB" ] && [ "$SUB" != "quit" ] && source $SCULLYOS_PATH/bin/scullyos-sub/$SUB.sh
