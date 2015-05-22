#!/bin/bash
# /etc/init.d/omxPlaylist

### BEGIN INIT INFO
# Provides:          omxPlaylist
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Reads video files
# Description:       Plays video files in a loop from a scanned foler.
### END INIT INFO

# quick enable startup daemon
# sudo cp /home/pi/Desktop/karmaPiTools/omxplaylist/initScript.sh /etc/init.d/omxPlaylistd
# sudo update-rc.d omxPlaylistd defaults

# quick disable startup daemon
# sudo update-rc.d omxPlaylistd remove
# sudo rm /etc/init.d/omxPlaylistd

# first warn before starting to prevent infinite loop #dirty
#echo "Giving you 5 seconds to break the loop... (press any key)"
#read -t 5 -n 1 -s KEY
#if [ ! -z "$KEY" ]
#then
#	echo "Keypressed! Exiting time lapse now..."
#	exit 0;
#fi

case "$1" in 
    start)
        echo "Starting omxPlaylist"

	echo "Giving you 5 seconds to exit (press any key)"
	read -t 5 -n 1 -s KEY
	if [ ! -z "$KEY" ]
	then
		echo "Keypressed! Exiting time lapse now..."
		exit 0;
	fi

        sh /home/pi/Desktop/karmaPiTools/omxplaylist/omxPlayer.sh
        ;;
    stop)
        echo "Stopping omxPlayList"
        killall omxPlaylist
        ;;
    *)
        echo "Usage: /etc/init.d/omxPlaylist start|stop"
        exit 1
        ;;
esac

exit 0