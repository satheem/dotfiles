#!/usr/bin/env bash

STEP=10   # brightness step in percentage

# Get current brightness and max
CURRENT=$(brightnessctl get)
MAX=$(brightnessctl max)

case "$1" in
    up)
        NEW=$(( CURRENT + (MAX * STEP / 100) ))
        [ $NEW -gt $MAX ] && NEW=$MAX
        brightnessctl set $NEW
        ;;
    down)
        NEW=$(( CURRENT - (MAX * STEP / 100) ))
        MIN=$(( MAX * 10 / 100 ))   # minimum 10%
        [ $NEW -lt $MIN ] && NEW=$MIN
        brightnessctl set $NEW
        ;;
esac

# Optional: show notification
notify-send "Brightness: $(( NEW * 100 / MAX ))%"
