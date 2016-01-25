#!/bin/sh

# these urls were useful for writing this:
# 

# get rid of the cursor so we don't see it when videos are running
setterm -blank off -powerdown off
setterm -background black
setterm -clear
setterm -cursor off

# set here the path to the directory containing your videos
VIDEOPATH="/home/pi/Desktop/Abysses_Videos" 

# you can normally leave this alone
SERVICE="omxplayer"
SERVICEOPTIONS="-b"

# now for our infinite loop!
while true; do
        for entry in $VIDEOPATH/*
        do
		if ps ax | grep -v grep | grep $SERVICE > /dev/null
        	then
			# kill unnecessary processes
			pkill $SERVICE
        		sleep 1;
		fi

		#fbset -xres 1920 -yres 1080 -depth 16
                clear
		# play each video twice
        	"${SERVICE}" ${SERVICEOPTIONS} "$entry" > /dev/null;
		"${SERVICE}" ${SERVICEOPTIONS} "$entry" > /dev/null;
		#xrefresh -display :0
        done
done

setterm -cursor on
clear
