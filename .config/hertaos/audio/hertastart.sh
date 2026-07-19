#!/bin/bash
paplay ~/.config/hertaos/audio/mainstartup.ogg &

sleep 2

paplay "$(find "$HOME/.config/hertaos/audio" -name 'hertastart*.ogg' | shuf -n 1)"