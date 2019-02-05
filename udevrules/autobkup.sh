#!/bin/bash


#UUID=b7367d43-41a1-4d30-a9b8-3c372c3f2b3e

#export DISPLAY=:0
mount -U b7367d43-41a1-4d30-a9b8-3c372c3f2b3e /media/antlun/backup 
/bin/su antlun -c "/usr/bin/notify-send 'hello'"



/bin/su antlun -c "/usr/bin/notify-send 'rsync done'"

