#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 2; done

# put it on all monitors
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done


#if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#      if [ "$m" = "eDP1" ]; then
#         # echo $m
#         MONITOR=$m polybar --reload example &
#      fi
#    done
#else
#   polybar --reload example &
#fi
#MONITOR="eDP1" polybar --reload example
#polybar --reload example

echo "Bars launched..."
