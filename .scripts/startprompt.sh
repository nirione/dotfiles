#!/bin/bash
#
#simple dmenu script to propmt for reboot or poweroff
choices="Abort\nReboot\nSuspend\nPoweroff"
sure="Are you sure you want to"

select=$(echo -e "$choices" | dmenu -i -p "Select:")

case "$select" in
	Reboot)   [ $(echo -e "No\nYes" | dmenu -i -p "$sure $select?") == "Yes" ] && systemctl reboot ;;
	Suspend)   [ $(echo -e "No\nYes" | dmenu -i -p "$sure $select?") == "Yes" ] && systemctl suspend ;;
	Poweroff) [ $(echo -e "No\nYes" | dmenu -i -p "$sure $select?") == "Yes" ] && systemctl poweroff ;;
	*) echo "aborted";;
esac
