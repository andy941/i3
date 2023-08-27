#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar
sleep 2

m_primary=$(polybar --list-monitors | grep "primary" | cut -d":" -f1)
MONITOR=$m_primary polybar --reload main &

for m in $(polybar --list-monitors | grep -v "primary" | cut -d":" -f1); do
    MONITOR=$m polybar --reload main &
done
