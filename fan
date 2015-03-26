#! /bin/sh

PLATFORM=/sys/devices/platform
##cat $PLATFORM/PNP0C0B:0*/thermal_cooling/cur_state

#
# Following files need to get write access for
# non root users !!
#
F0=$PLATFORM/PNP0C0B:00/thermal_cooling/cur_state
F1=$PLATFORM/PNP0C0B:01/thermal_cooling/cur_state
F2=$PLATFORM/PNP0C0B:02/thermal_cooling/cur_state
F3=$PLATFORM/PNP0C0B:03/thermal_cooling/cur_state

echo $F0
echo 0 > $F0
cat $F0

echo $F1
echo 0 > $F1
cat $F1

echo $F2
echo 0 > $F2
cat $F2

echo $F3
echo 0 > $F3
cat $F3

echo '----------------------------------'
acpi -t
echo '----------------------------------'
sensors
