#!/bin/bash

SCULLYOS_PATH="${SCULLYOS_PATH:-$HOME/.local/share/scullyos}"
source $SCULLYOS_PATH/ascii.sh
echo ""
echo "                             ScullyOS $(cat $SCULLYOS_PATH/version 2>/dev/null || echo 'v1.0')"
echo ""
