#!/bin/bash
# From http://raspberrypi.stackexchange.com/questions/9105/raspberry-pi-onboard-temp-sensors-in-raspbianwheezy
# chmod this file witch chmod +x /path/to/file

cpuTemp0=$(cat /sys/class/thermal/thermal_zone0/temp)
cpuTemp1=$(($cpuTemp0/1000))
cpuTemp2=$(($cpuTemp0/100))
cpuTempM=$(($cpuTemp2 % $cpuTemp1))

echo CPU temp"="$cpuTemp1"."$cpuTempM"'C"
echo GPU $(/opt/vc/bin/vcgencmd measure_temp)