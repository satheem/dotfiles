#!/usr/bin/env bash

# Get current brightness and max
current=$(brightnessctl g)
max=$(brightnessctl m)
min_percent=10  # minimum brightness in %
step=5         # step in percent

# Convert min percent to absolute value
min=$((max * min_percent / 100))

if [ "$1" = "up" ]; then
    new=$((current + max * step / 100))
    [ $new -gt $max ] && new=$max
elif [ "$1" = "down" ]; then
    new=$((current - max * step / 100))
    [ $new -lt $min ] && new=$min
else
    echo "Usage: $0 up|down"
    exit 1
fi

brightnessctl set "$new"

