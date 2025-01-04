#!/bin/bash

action=$1
val=$2
monitor=HDMI-A-1

current=$(brightnessctl -m | awk -F',' '{print $4}' | tr -d '%')

if [[ $action == "+" ]]; then
    new_val=$((current + val))
elif [[ $action == "-" ]]; then
    new_val=$((current - val))
else
    echo "Invalid action. Use + or -."
    exit 1
fi

# 限制值的范围（例如 0 到 100）
if (( new_val < 0 )); then
    new_val=0
elif (( new_val > 100 )); then
    new_val=100
fi

brightnessctl set $val%$action 
monitor-control $monitor 0x10 "$new_val"