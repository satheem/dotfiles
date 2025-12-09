#!/usr/bin/env bash

# Ensure proper environment
export DISPLAY=:0
export XAUTHORITY=$HOME/.Xauthority

# Launch xss-lock with betterlockscreen
xss-lock -- betterlockscreen -l dimblur --clock --span &
