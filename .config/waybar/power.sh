#!/bin/bash

shutdown=" 󰐥 "
reboot=" 󰜉 "
logout=" 󰍃 "

choice=$(printf "$shutdown\n$reboot\n$logout" | rofi -dmenu -p "HertaOS | Power Menu" -theme ~/.config/rofi/power.rasi)

case "$choice" in
    "$shutdown")
        paplay ~/.config/hertaos/audio/hertashutdown.ogg && sleep 1 && hyprshutdown -t 'Shutting down...' && sleep 3 && systemctl poweroff;;

    "$reboot")
        paplay ~/.config/hertaos/audio/hertareboot.ogg && sleep 1 && hyprshutdown -t 'Restarting...'&& sleep 3 && systemctl reboot;;

    "$logout")
        paplay ~/.config/hertaos/audio/hertalogoff.ogg && sleep 1 && hyprshutdown --vt 2;;
esac