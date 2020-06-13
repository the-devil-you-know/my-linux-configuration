#!/bin/sh

# So tricky, but it fixes problems with Intellij Idea
setxkbmap -layout en
xdotool key Caps_Lock
xdotool key Caps_Lock

xkbcomp .xkb_keymap_ru $DISPLAY 
xcape -e 'Mode_switch=Escape'
