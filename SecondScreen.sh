#!/bin/bash
xrandr --auto
xrandr --output eDP1 --primary
xrandr | grep "HDMI1 connected" && xrandr --output HDMI1 --primary --left-of eDP1
xrandr | grep "^DP1 connected" && xrandr --output DP1 --primary --left-of eDP1




