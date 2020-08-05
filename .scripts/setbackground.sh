#!/bin/bash

set_bg () {
	printf "Options: center, fill, max, scale, tile\n> "
	read -p "" inp
	feh --bg-$inp $1
	tmp=$inp
}

set_bg $1
while true; do
	printf "Satisfied? [y/n]\n> "
	read -p "" sat

	case $sat in
		[Yy]* ) rm ~/pic/wallpaper/* && mv $1 ~/pic/wallpaper/ && feh --bg-$tmp ~/pic/wallpaper/* && printf "Done!\n"; exit;;

		[Nn]* ) set_bg $1;; 

		*) printf "\naha suh dude\n"; exit;;
	esac
done
