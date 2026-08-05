#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
export SCULLYOS_PATH

if [ $# -eq 0 ]; then
	CHOSEN=$(gum choose "Dashboard" "Theme" "Font" "Update" "Install" "Uninstall" "Quit" --height 10 --header "" 2>/dev/null | tr '[:upper:]' '[:lower:]')
	SUB="${CHOSEN:-quit}"
else
	SUB=$1
	shift 1 2>/dev/null || true
fi

if [ "$SUB" = "manual" ]; then
	SUB="dashboard"
fi

if [ -n "$SUB" ] && [ "$SUB" != "quit" ]; then
	ACTION_SCRIPT="$SCULLYOS_PATH/bin/scullyos-sub/$SUB.sh"
	if [ -f "$ACTION_SCRIPT" ]; then
		source "$ACTION_SCRIPT"
	else
		echo "Unknown command: $SUB"
	fi
fi
