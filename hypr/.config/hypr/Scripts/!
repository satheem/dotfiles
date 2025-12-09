#!/usr/bin/env bash

# Requires: rofi (or yad/dmenu) installed

CHOICE=$(echo -e "Lock\nPower Off\nSuspend\nLogout\nReboot" | rofi -dmenu -i -p "System")

case "$CHOICE" in
    Lock)
        hyprlock
        ;;
    "Power Off")
        systemctl poweroff
        ;;
    Suspend)
        systemctl suspend
        ;;
    Logout)
        hyprctl dispatch exit
        ;;
    Reboot)
        systemctl reboot
        ;;
    *)
        exit 0
        ;;
esac

