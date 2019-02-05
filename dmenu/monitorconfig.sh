#!/bin/bash
#demenu script for managing monitor setup

monitor_setup=$(echo -e "single\ndual" | dmenu -i -p "$1")

function move_ws {
	i3-msg "[workspace=1], move workspace to $1" >/dev/null
	i3-msg "[workspace=2], move workspace to $2" >/dev/null
        i3-msg "[workspace=4], move workspace to $2" >/dev/null                     
	i3-msg "[workspace=3], move workspace to $3" >/dev/null
	i3-msg "[workspace=5], move workspace to $3" >/dev/null
}


if [ $monitor_setup == "single" ];then
	[ $(echo -e "no\nyes" | dmenu -i -p "have you unmounted the backup drive?") == "yes" ] && \
	( move_ws "eDP-1" "eDP-1" "eDP-1" 
	~/dotfiles/.screenlayout/singlemonitor.sh )

elif [ $monitor_setup == "dual" ];then
	~/dotfiles/.screenlayout/dualmonitor.sh
	move_ws "eDP-1" "DP-1-2" "DP-1-1"		
fi


