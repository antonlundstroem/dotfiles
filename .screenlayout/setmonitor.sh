#!/bin/bash

#####################
#
# Script to set up the monitors after (un)plugging the monitors.
#
# TODO: Make more dynamic!
#####################

# Check if tmpfile exists that looks at current setup, else create
if [ ! -f ~/.screenlayout/.screen_setup ]; then
	touch ~/.screenlayout/.screen_setup
fi

xr="$(xrandr)"
dp11="DP-1-1 connected"
dp12="DP-1-2 connected"
chk="$(cat ~/.screenlayout/.screen_setup)"

if [[ $xr == *"$dp11"* && $xr == *"$dp12"* ]]; then
	~/.screenlayout/dualmonitor.sh

	# only move workspaces once
	if [[ $chk != *"dual"* ]]; then
		i3-msg "[workspace=1], move workspace to eDP-1" >/dev/null
		i3-msg "[workspace=2], move workspace to DP-1-2" >/dev/null
		i3-msg "[workspace=4], move workspace to DP-1-2" >/dev/null			
		i3-msg "[workspace=3], move workspace to DP-1-1" >/dev/null
		i3-msg "[workspace=5], move workspace to DP-1-1" >/dev/null
		
		
		echo "dual" > ~/.screenlayout/.screen_setup
	fi
else
	~/.screenlayout/singlemonitor.sh
	echo "single" > ~/.screenlayout/.screen_setup
fi

