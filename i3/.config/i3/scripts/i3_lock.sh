#!/usr/bin/env bash

# ---------------------------
# Close Rofi gracefully first
# ---------------------------
if pgrep -x rofi >/dev/null; then
  pkill -x rofi
  sleep 0.2
fi

# ---------------------------
# Run Betterlockscreen directly
# ---------------------------
betterlockscreen -l
