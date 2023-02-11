#!/usr/bin/bash

isBonsaiOpen=$(i3-msg -t get_tree | jq -r | grep '"class": "Bonsai"')
CBONSAI_DIR="$HOME/.config/cbonsai"

i3-msg workspace 9

if [ ! -n "$isBonsaiOpen" ]; then
	kitty --class Bonsai --title Bonsai --config "$CBONSAI_DIR/kitty.conf" sh -c "$CBONSAI_DIR/launch.sh" 
fi
