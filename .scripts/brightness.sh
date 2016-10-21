#!/bin/zsh
max_brightness=`cat /sys/class/backlight/intel_backlight/max_brightness`
brightness=`cat /sys/class/backlight/intel_backlight/actual_brightness`
output=$(($brightness * 100 / $max_brightness * 100 ))
echo  " " $((output / 100))
