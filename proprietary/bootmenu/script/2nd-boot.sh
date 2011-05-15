#!/sbin/sh

######## BootMenu Script
######## Execute [2nd-boot] Menu
# Used to test Dropbear

export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

cd /system/bootmenu/script

. dropbear.sh

exit
