 #!/bin/sh

# ---------------------
# Send low battery notification
# Source https://github.com/Thomas22-dev/dotfiles
# ---------------------

CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)

STATUS=$(cat /sys/class/power_supply/BAT0/status)

echo "Checking battery level"

if [ "$STATUS" = "Discharging" ] && [ "$CAPACITY" -lt 21 ]; then
    echo "Notification send"
    /usr/bin/notify-send -u critical -a "Système" "  La batterie est faible ($CAPACITY%). Branchez le chargeur."
fi
