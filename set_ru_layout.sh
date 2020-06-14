#!/bin/sh

# So tricky, but it fixes problems with Intellij Idea
setxkbmap -layout en
xdotool key Caps_Lock
xdotool key Caps_Lock

xkbcomp "`dirname $0`/xkb_keymap_ru" $DISPLAY
killall xcape
xcape -e 'Mode_switch=Escape'
