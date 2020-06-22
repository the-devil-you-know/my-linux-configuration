#!/bin/sh

xkbcomp "`dirname $0`/keymap_ru.xkb" $DISPLAY
killall xcape
xcape -e 'Mode_switch=Escape'
