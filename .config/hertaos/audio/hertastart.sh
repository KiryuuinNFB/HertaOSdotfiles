#!/bin/bash

paplay "$(find "$HOME/.config/hertaos/audio" -name 'hertastart*.ogg' | shuf -n 1)"