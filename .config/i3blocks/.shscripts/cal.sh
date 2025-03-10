#! /bin/bash

case $button in
	1) exec urxvt;;
esac

DATE=$(date +'%a, %d/%m/%y')
HOUR=$(date +%H:%M)

dnt() { echo  "  $DATE    $HOUR" && exit
}

dnt

