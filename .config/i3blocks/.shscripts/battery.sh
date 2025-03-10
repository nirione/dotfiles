#! /bin/bash


CAP=$(cat /sys/class/power_supply/BAT0/capacity)

TIME=$(acpi -b | grep -E -o '[0-9][0-9]:[0-9][0-9]')

STAT=$(cat /sys/class/power_supply/BAT0/status)


if [ "$STAT" = "Discharging" ]   && [ "$CAP" -le 15 ]; then
	echo "    $CAP% ($TIME)"
elif [ "$STAT" = "Discharging" ] && [ "$CAP" -le 30 ]; then
	echo "    $CAP% ($TIME)"
elif [ "$STAT" = "Discharging" ] && [ "$CAP" -le 50 ]; then
	echo "    $CAP% ($TIME)"
elif [ "$STAT" = "Discharging" ] && [ "$CAP" -le 75 ]; then
	echo "    $CAP% ($TIME)"
elif [ "$STAT" = "Discharging" ]; then 
	echo "    $CAP% ($TIME)"
fi

[ "$STAT" = "Charging" ]     &&   echo "  $CAP% ($TIME)"
[ "$STAT" = "Not charging" ] || [ "$STAT" = "Full" ] &&   echo " "

