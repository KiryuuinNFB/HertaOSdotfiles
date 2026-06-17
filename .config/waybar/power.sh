#!/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout\n" | rofi -dmenu -p "Power")

case "$choice" in
  Shutdown) hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0' && paplay ~/.config/hertaos/audio/hertashutdown.ogg ;;
  Reboot) hyprshutdown -t 'Restarting...' --post-cmd 'reboot' && paplay ~/.config/hertaos/audio/hertareboot.ogg ;;
  Logout) hyprshutdown --vt 2 && paplay ~/.config/hertaos/audio/hertalogoff.ogg ;;
  *) exit ;;
esac