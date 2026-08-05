#!/bin/bash

set -e

source ./ascii.sh 2>/dev/null || true

echo "=> ScullyOS is engineered for fresh Ubuntu 24.04+ installations!"
echo -e "\nBegin installation (or abort with Ctrl+C)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning ScullyOS..."
INSTALL_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
rm -rf "$INSTALL_PATH"
git clone https://github.com/jscully/omakub.git "$INSTALL_PATH" >/dev/null

if [[ -n "$SCULLYOS_REF" ]]; then
	cd "$INSTALL_PATH"
	git fetch origin "$SCULLYOS_REF" && git checkout "$SCULLYOS_REF"
	cd -
fi

echo "ScullyOS installation starting..."
source "$INSTALL_PATH/install.sh"
