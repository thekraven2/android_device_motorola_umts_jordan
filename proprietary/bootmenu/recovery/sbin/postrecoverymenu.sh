#!/sbin/sh
# exit from recovery, back to bootmenu

export PATH=/sbin:/system/xbin:/system/bin

[ ! -f /system/build.prop ] && mount -t ext3 -o rw,noatime,nodiratime /dev/block/mmcblk1p21 /system

if [ -f /system/build.prop ]; then
	echo 0 > /sys/class/leds/red/brightness
	echo 0 > /sys/class/leds/green/brightness
	echo 1 > /sys/class/leds/blue/brightness
else
	echo 1 > /sys/class/leds/red/brightness
	echo 0 > /sys/class/leds/green/brightness
	echo 0 > /sys/class/leds/blue/brightness
endif

# bootmenu doesnt support buttons (turn off buttons light)
echo 0 > /sys/class/leds/button-backlight/brightness
