#!/usr/bin/env bash

# Kill all running Waybar instances
pkill waybar

# Wait a moment to avoid race condition
sleep 0.5

# Launch Waybar again
waybar &
