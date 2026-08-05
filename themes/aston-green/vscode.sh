#!/bin/bash

# Apply refined VS Code theme
code --install-extension github.github-vscode-theme 2>/dev/null || true
source $SCULLYOS_PATH/themes/set-vscode-theme.sh "GitHub Dark High Contrast"
