#!/bin/sh

xkbcomp "`dirname $0`/xkb_keymap_ru" $DISPLAY
killall xcape
xcape -e 'Mode_switch=Escape'
