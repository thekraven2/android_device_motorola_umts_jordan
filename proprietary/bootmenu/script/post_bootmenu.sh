#!/sbin/sh

######## BootMenu Script v0.8.0
######## Execute Post BootMenu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script


## Run Init Script

######## Don't Delete.... ########################
mount -o remount,rw rootfs /
mount -o remount,rw /dev/block/mmcblk1p21 /system
##################################################

chmod 755 /system/bootmenu/init.d/*
run-parts /system/bootmenu/init.d/

######## Don't Delete.... ########################
mount -o remount,ro rootfs /
mount -o remount,ro /dev/block/mmcblk1p21 /system
##################################################

exit
