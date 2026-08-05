#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
export SCULLYOS_PATH

# Give people a chance to retry running the installation
trap 'echo "ScullyOS installation failed! You can retry by running: source $SCULLYOS_PATH/install.sh"' ERR

# Check the distribution name and version and abort if incompatible
source "$SCULLYOS_PATH/install/check-version.sh"

# Ask for app choices
echo "Get ready to make a few choices for ScullyOS..."
source "$SCULLYOS_PATH/install/terminal/required/app-gum.sh" >/dev/null
source "$SCULLYOS_PATH/install/first-run-choices.sh"
source "$SCULLYOS_PATH/install/identification.sh"

# Desktop software and tweaks will only be installed if we're running Gnome
if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
  # Ensure computer doesn't go to sleep or lock while installing
  gsettings set org.gnome.desktop.screensaver lock-enabled false
  gsettings set org.gnome.desktop.session idle-delay 0

  echo "Installing terminal and desktop tools for ScullyOS..."

  # Install terminal tools
  source "$SCULLYOS_PATH/install/terminal.sh"

  # Install desktop tools and tweaks
  source "$SCULLYOS_PATH/install/desktop.sh"

  # Revert to normal idle and lock settings
  gsettings set org.gnome.desktop.screensaver lock-enabled true
  gsettings set org.gnome.desktop.session idle-delay 300
else
  echo "Only installing terminal tools for ScullyOS..."
  source "$SCULLYOS_PATH/install/terminal.sh"
fi

echo "ScullyOS installation complete! Run 'scullyos' in your terminal to open the command menu."
