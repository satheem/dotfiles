#!/usr/bin/env bash

# Kill any running hyprpaper instance
pkill hyprpaper

# Small delay to avoid race condition
sleep 0.4

# Launch hyprpaper again
hyprpaper &
