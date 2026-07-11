#!/bin/bash

shutdown=" 󰐥 "
reboot=" 󰜉 "
logout=" 󰍃 "

choice=$(printf "$shutdown\n$reboot\n$logout" | rofi -dmenu -p "HertaOS | Power Menu" -theme ~/.config/rofi/power.rasi)

case "$choice" in
    "$shutdown")
        paplay ~/.config/hertaos/audio/hertashutdown.ogg &&
        sleep 1 &&
        hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
        ;;
    "$reboot")
        paplay ~/.config/hertaos/audio/hertareboot.ogg &&
        sleep 2 &&
        hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
        ;;
    "$logout")
        paplay ~/.config/hertaos/audio/hertalogoff.ogg &&
        sleep 1 &&
        hyprshutdown --vt 2
        ;;
esac