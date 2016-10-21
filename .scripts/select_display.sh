#!/bin/bash


WORKSPACE=$( ( echo "default";
               echo "_FHD_, _HD+_";
               echo "_FHD_, _HD+_, |FHD|";
               echo "_HD+_, |FHD|")  | rofi -dmenu -p "Select setup:")


if [ x"_FHD_, _HD+_, |FHD|" = x"${WORKSPACE}" ]
then
    intel-virtual-output
    ~/.screenlayout/triple.sh
elif [ x"default" = x"${WORKSPACE}" ]
then
    ~/.screenlayout/signle.sh
elif [ x"_HD+_, |FHD|" = x"${WORKSPACE}" ]
then
    ~/.screenlayout/dual-monitor.sh
elif [ x"_FHD_, _HD+_" = x"${WORKSPACE}" ]
then
    ~/.screenlayout/dual_left.sh
fi


