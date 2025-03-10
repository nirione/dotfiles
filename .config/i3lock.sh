#!/bin/bash

image='papes/lock.png'
time='%H:%M'
date='%A, %d-%m-%Y'
color='ffffffbf'
font='monospace'
pos='w-200:100'
font='monospace'
timesize='72'
datesize='20'
ind_pos='w-100:h-100'
ind_rad='50'
verif_text=''
wrong_text=''



i3lock -i "$HOME/$image" -k --pass-volume-keys --time-str=$time --time-color=$color --time-font=$font --time-size=$timesize --date-str="$date" --date-color=$color --date-font=$font --date-size=$datesize --time-pos=$pos --ind-pos=$ind_pos --radius=$ind_rad --verif-text=$verif_text --wrong-text=$wrong_text
