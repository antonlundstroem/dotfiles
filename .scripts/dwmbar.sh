#!/bin/bash

delim="|"

function set_status {

	# Weather
	echo $delim
	echo wttr:"$(curl -s  wttr.in?format=j1 | jq -r '.current_condition[0].temp_C')"

	#Battery
	echo $delim
	case "$(cat /sys/class/power_supply/AC/online)" in
		"0") charging="-"
			;;

		"1") charging="+"
			;;
	esac
	echo $charging"$(cat /sys/class/power_supply/BAT?/capacity)%"

	#Time
	echo $delim
	echo "$(date "+%I:%M %P")"



	echo $delim
}


while :; do
	xsetroot -name "$(set_status)"


	sleep 1m


done
