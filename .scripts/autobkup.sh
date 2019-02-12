#!/bin/bash


UUID=b7367d43-41a1-4d30-a9b8-3c372c3f2b3e


## FIX if it exists then mount and to the rest

mount -U $UUID /media/antlun/backup 

/bin/su antlun -c "/usr/bin/notify-send -u critical 'autobkup' 'rsync started'"

rsync --delete -q -aP --exclude-from=/home/antlun/dotfiles/rsync-homedir-excludes /home/antlun/ /media/antlun/backup

/bin/su antlun -c "/usr/bin/notify-send -u critical 'autobkup' 'rsync complete'" 

