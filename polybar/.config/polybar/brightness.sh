#!/usr/bin/env bash

STEP=5   # brightness step in percentage

# Get current brightness and max
CURRENT=$(brightnessctl g)
MAX=$(brightnessctl m)

NEW=$CURRENT  # Initialize NEW with current value

case "$1" in
    up)
        NEW=$(( CURRENT + (MAX * STEP / 100) ))
        [ $NEW -gt $MAX ] && NEW=$MAX
        brightnessctl s $NEW
        ;;
    down)
        NEW=$(( CURRENT - (MAX * STEP / 100) ))
        MIN=$(( MAX * 10 / 100 ))   # minimum 10%
        [ $NEW -lt $MIN ] && NEW=$MIN
        brightnessctl s $NEW
        ;;
esac

# Echo the new brightness percentage
PERCENT=$(( NEW * 100 / MAX ))
echo "$PERCENT%"
