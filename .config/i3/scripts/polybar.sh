#!/bin/bash

killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 1; done

polybar laptop &
polybar center &
polybar right &

# if xrandr listmonitor HDMI-2
# polybar external &
