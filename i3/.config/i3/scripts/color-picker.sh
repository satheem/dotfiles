#!/usr/bin/env bash

# Pick a color from screen and copy to clipboard
# xcolor will print a hex color (e.g. #RRGGBB)

color=$(xcolor) || exit 1
# Copy to clipboard (requires xclip or xsel)
echo -n "$color" | xclip -selection clipboard
