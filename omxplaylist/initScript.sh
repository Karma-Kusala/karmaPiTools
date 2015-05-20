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


case "$1" in 
    start)
        echo "Starting omxPlaylist"
        sh /home/pi/omxPlaylist/
        ;;
    stop)
        echo "Stopping servoblaster"
        killall omxPlaylist
        ;;
    *)
        echo "Usage: /etc/init.d/omxPlaylist start|stop"
        exit 1
        ;;
esac

exit 0