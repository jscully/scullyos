#!/bin/bash

ascii_art='
   _____ _____ _    _ _     ______   __ ____   _____ 
  / ____/ ____| |  | | |   |  ____| / // __ \ / ____|
 | (___| |    | |  | | |   | |__   / /| |  | | (___  
  \___ \ |    | |  | | |   |  __| < < | |  | |\___ \ 
  ____) | |___| |__| | |___| |____ \ \| |__| |____) |
 |_____/ \_____\____/|_____|______| \_\\____/|_____/ 
'

# Define the color gradient (shades of purple and indigo)
colors=(
	'\033[38;5;141m'
	'\033[38;5;135m'
	'\033[38;5;129m'
	'\033[38;5;93m'
	'\033[38;5;99m'
	'\033[38;5;105m'
)

IFS=$'\n' read -rd '' -a lines <<<"$ascii_art"

for i in "${!lines[@]}"; do
	color_index=$((i % ${#colors[@]}))
	echo -e "${colors[color_index]}${lines[i]}\033[0m"
done
