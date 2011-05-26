#!/sbin/sh
# exit from recovery, back to bootmenu

export PATH=/sbin:/system/xbin:/system/bin

echo 0 > /sys/class/leds/green/brightness
echo 0 > /sys/class/leds/red/brightness
echo 1 > /sys/class/leds/blue/brightness

[ ! -f /system/build.prop ] && mount -t ext3 -o rw,noatime,nodiratime /dev/block/mmcblk1p21 /system
