#! /bin/bash

case $button in
	1) pactl set-sink-mute @DEFAULT_SINK@ toggle ;;
	3) exec alacritty -e alsamixer ;;
	4) pactl set-sink-volume @DEFAULT_SINK@ +3% && pactl set-sink-mute @DEFAULT_SINK@ off ;;
	5) pactl set-sink-volume @DEFAULT_SINK@ -3% && pactl set-sink-mute @DEFAULT_SINK@ off ;;
esac

if [[ $(pamixer --get-volume) -gt 100 ]]; then
	$(pamixer --set-volume 100)
fi

printpastatus() { 
	[[ $(pamixer --get-mute) = "true" ]] && echo "󰖁 "  && exit
	echo '󰕾 '$(pamixer --get-volume)%
}

printpastatus




