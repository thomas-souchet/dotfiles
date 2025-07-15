 #!/bin/sh

# ---------------------
# Send brightness notification
# Source https://github.com/Thomas22-dev/dotfiles
# ---------------------

CURRENT_BRIGTH=$(cat /sys/class/backlight/intel_backlight/actual_brightness)

MAX=$(cat /sys/class/backlight/intel_backlight/max_brightness)

VALUE=$(echo "($CURRENT_BRIGTH/$MAX)*100" | bc -l)

notify-send -a "Luminosité" -h int:value:$VALUE -t 1500 ""
    
