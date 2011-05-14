#!/sbin/sh

######## BootMenu Script v0.8.0
######## Execute [ADB Daemon] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mkdir /tmp
echo 'msc_adb' > /dev/usb_device_mode

PATH=/sbin:/system/xbin:/system/bin:system/bootmenu/binary /sbin/adbd.root &

exit
