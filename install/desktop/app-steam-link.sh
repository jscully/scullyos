#!/bin/bash

# Ensure flatpak repo is available
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Steam Link flatpak
flatpak install -y flathub com.valvesoftware.SteamLink
