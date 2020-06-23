#!/bin/sh

bash `dirname $0`/laptop.sh

if (xrandr -q | grep ^"DP-1 connected") then
    xrandr --output eDP-1 --primary --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-1 --mode 3840x2160 --pos 3840x0 --rotate normal --output DP-2 --off --output DP-3 --off --output DP-4 --off

elif (xrandr -q | grep ^"DP-3 connected") then
    xrandr --output eDP-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --mode 3840x2160 --pos 1920x0 --rotate normal --output DP-4 --off
fi;

~/.fehbg
