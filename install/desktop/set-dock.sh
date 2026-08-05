#!/bin/bash

# Favorite apps for GNOME dock in ScullyOS
apps=(
	"brave-browser.desktop"
	"Alacritty.desktop"
	"code.desktop"
	"md.obsidian.Obsidian.desktop"
	"com.valvesoftware.SteamLink.desktop"
	"ulauncher.desktop"
	"libreoffice-startcenter.desktop"
	"org.gnome.Tweaks.desktop"
	"ScullyOS.desktop"
	"org.gnome.Settings.desktop"
	"org.gnome.Nautilus.desktop"
)

installed_apps=()

desktop_dirs=(
	"/var/lib/flatpak/exports/share/applications"
	"/usr/share/applications"
	"/usr/local/share/applications"
	"$HOME/.local/share/applications"
)

for app in "${apps[@]}"; do
	for dir in "${desktop_dirs[@]}"; do
		if [ -f "$dir/$app" ]; then
			installed_apps+=("$app")
			break
		fi
	done
done

favorites_list=$(printf "'%s'," "${installed_apps[@]}")
favorites_list="[${favorites_list%,}]"

gsettings set org.gnome.shell favorite-apps "$favorites_list"
