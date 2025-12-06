#!/bin/bash

# Generate clipboard history using xclip (primary and clipboard)
# If xclip doesn't support history, we'll fake it with a temp file

HIST_FILE="$HOME/.cache/clipboard_history"

# Ensure file exists
touch "$HIST_FILE"

# When user copies something manually (using xclip), append to history
CLIP_NOW=$(xclip -selection clipboard -o 2>/dev/null)

if [[ -n "$CLIP_NOW" ]]; then
    # Prevent duplicates
    grep -Fxq "$CLIP_NOW" "$HIST_FILE" || echo "$CLIP_NOW" >> "$HIST_FILE"
fi

# Show history in rofi
CHOSEN=$(tac "$HIST_FILE" | rofi -dmenu -p "clipboard" -l 10)

# If user selects something, copy to clipboard
if [[ -n "$CHOSEN" ]]; then
    printf "%s" "$CHOSEN" | xclip -selection clipboard
fi
