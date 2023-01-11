#!/usr/bin/env bash

# Open terminal as X11 environment
/usr/bin/xfce4-terminal --geometry=640x400 ###-e "tmux new -s from_xinit"

# Increase the repeat rate of the keyboard
/usr/bin/xset r rate 400 44 &

# Turn off cap locks
/usr/bin/setxkbmap -option caps:none &

# Enable killing X via key combo
/usr/bin/setxkbmap -option terminate:ctrl_alt_bksp &
