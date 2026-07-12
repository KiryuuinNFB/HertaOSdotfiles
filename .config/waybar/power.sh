#!/bin/bash

shutdown=" 󰐥 "
reboot=" 󰜉 "
logout=" 󰍃 "

choice=$(printf "$shutdown\n$reboot\n$logout" | rofi -dmenu -p "HertaOS | Power Menu" -theme ~/.config/rofi/power.rasi)

case "$choice" in
    "$shutdown")
        paplay ~/.config/hertaos/audio/hertashutdown.ogg && sleep 2 && systemctl poweroff;;

    "$reboot")
        paplay ~/.config/hertaos/audio/hertareboot.ogg && sleep 2 && systemctl reboot;;

    "$logout")
        paplay ~/.config/hertaos/audio/hertalogoff.ogg && sleep 2 && hyprctl dispatch 'hl.dsp.exit()';;
esac