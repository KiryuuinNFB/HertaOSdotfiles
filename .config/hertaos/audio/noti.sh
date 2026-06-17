#!/bin/bash

paplay "$(find "$HOME/.config/hertaos/audio" -name 'noti*.ogg' | shuf -n 1)"