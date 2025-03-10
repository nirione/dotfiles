#! /bin/bash
#
# the idea: show arch logo if all up to date, show different logo with number
# in brackets if some not up to date
#
# runs on startup and calls 
# $ sudo pacman -Syu
# then calls 
# $ pacman -Qu | wc -l 
#
# based on the output of that it displays the properly formatted text
#

PACQU=$(pacman -Qu | wc -l)

if [ "$PACQU" = "0" ]; then
	echo ""
else 
	echo ' 📦 ('$PACQU')'
fi

case $button in 
	1) exec alacritty -e sudo pacman -Syu && pkill -RTMIN+8 i3blocks;;
esac


