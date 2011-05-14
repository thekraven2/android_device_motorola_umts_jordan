#!/sbin/sh

######## BootMenu Script v0.8.0
######## Execute [Custom Recovery] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mkdir /tmp
mkdir /cache
mkdir /pds
mkdir /res

rm -f /etc
mkdir /etc

rm -f /sdcard
mkdir /sdcard

chmod 755 /sbin
chmod 755 /res

cp -r -f /system/bootmenu/recovery/res/* /res/
cp -r -f /system/bootmenu/recovery/sbin/* /sbin/


## logwrapper can be locked by mount_ext3 script exit (locks /system)
killall logwrapper


chmod 755 /sbin/*

rm -f /sbin/postrecoveryboot.sh

if [ ! -e /etc/recovery.fstab ]; then
  cp /system/bootmenu/recovery/recovery.fstab /etc/recovery.fstab
fi

if [ -x /system/bin/mount_ext3.sh ]; then
  /system/bin/mount_ext3.sh cache /cache
else
  mount -t ext3 -o nosuid,nodev,noatime,nodiratime,barrier=1 /dev/block/cache /cache
fi

mkdir /cache/recovery
touch /cache/recovery/command
touch /cache/recovery/log
touch /cache/recovery/last_log
touch /tmp/recovery.log


ps | grep -v grep | grep adbd
ret=$?

if [ ! $ret -eq 0 ]; then
  chmod 755 /system/bootmenu/script/adbd.sh
  /system/bootmenu/script/adbd.sh
fi

#############################
umount -f -l /system
usleep 100
mount -t ext3 -o rw,noatime,nodiratime,barrier=1,data=ordered /dev/block/mmcblk1p21 /system

# retry without type & options if not mounted
[ ! -d /system/bootmenu ] && mount -o rw /dev/block/mmcblk1p21 /system

# set red led if problem with system, green led else
echo 0 > /sys/class/leds/red/brightness
echo 0 > /sys/class/leds/green/brightness
echo 0 > /sys/class/leds/blue/brightness
[ ! -d /system/bootmenu ] && echo 1 > /sys/class/leds/red/brightness
[ -d /system/bootmenu ] && echo 1 > /sys/class/leds/green/brightness
usleep 100

## umount -l /data
## umount -l /cache
#############################

# turn on button backlight (back button is used in CWM Recovery 3.x)
echo 1 > /sys/class/leds/button-backlight/brightness

## /sbin/recovery &
/sbin/recovery

exit
