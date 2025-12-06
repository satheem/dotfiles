#!/usr/bin/env bash

SINK=@DEFAULT_SINK@
STEP=10

# Get current volume and mute state
VOL=$(pactl get-sink-volume $SINK | grep -oP '\d+%' | head -1 | tr -d '%')
MUTED=$(pactl get-sink-mute $SINK | grep -o yes)

case "$1" in
    up)
        # Unmute if muted
        [ "$MUTED" = "yes" ] && pactl set-sink-mute $SINK 0
        # Increase volume but max 100%
        [ "$VOL" -lt 100 ] && pactl set-sink-volume $SINK +${STEP}% || pactl set-sink-volume $SINK 100%
        ;;
    down)
        [ "$MUTED" = "yes" ] && pactl set-sink-mute $SINK 0
        [ "$VOL" -gt 0 ] && pactl set-sink-volume $SINK -${STEP}%
        ;;
    mute)
        pactl set-sink-mute $SINK toggle
        ;;
esac
