#!/bin/bash
zenity --notification --text "Status:\nBattery: $(cat /sys/class/power_supply/BAT1/uevent | grep 'POWER_SUPPLY_CAPACITY=' | cut -d '=' -f2-)% \nAudio: $(amixer sget Master | grep 'Right:' | cut -d '[' -f2- | cut -d '[' -f2 | cut -d ']' -f1) - $(amixer sget Master | grep 'Right:' | cut -d '[' -f2- | cut -d ']' -f1) \nIP: $(hostname -I) \nTime: $(date +"%I:%M")"
