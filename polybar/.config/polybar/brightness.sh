BACKLIGHT_PATH="/sys/class/backlight"
DEVICE=$(ls $BACKLIGHT_PATH | head -n1)

if [ -z "$DEVICE" ]; then
echo "NoBacklight"
exit 0
fi

MAX=$(cat $BACKLIGHT_PATH/$DEVICE/max_brightness)
CURRENT=$(cat $BACKLIGHT_PATH/$DEVICE/brightness)

PERCENT=$(( CURRENT * 100 / MAX ))
echo "${PERCENT}%"