#!/bin/bash

xrandr --auto
xrandr --output eDP-1 --primary
xrandr | grep "^DP-1 connected" && xrandr --output DP-1 --primary --left-of eDP-1
xrandr | grep "^DP-2 connected" && xrandr --output DP-2 --primary --left-of eDP-1
xrandr | grep "^DP-1-1 connected" && xrandr --output DP-1-1 --primary --left-of eDP-1 --mode 3840x2160
xrandr | grep "^DP-2-2 connected" && xrandr --output DP-2-2 --primary --left-of eDP-1 --mode 3840x2160
