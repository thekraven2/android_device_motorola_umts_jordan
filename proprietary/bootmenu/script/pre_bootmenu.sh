#!/system/bin/sh

######## BootMenu Script v0.8.0
######## Execute Pre BootMenu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

BUSYBOX="/system/bootmenu/binary/busybox"

######## Don't Delete.... ############
$BUSYBOX mount -o remount,rw rootfs /
######################################

$BUSYBOX cp -f /system/bootmenu/binary/busybox /sbin/
$BUSYBOX chmod 755 /sbin/
$BUSYBOX chmod 755 /sbin/busybox
$BUSYBOX chown 0.0 /sbin/busybox


## begin busybox sym link..

for cmd in $(/sbin/busybox --list); do
  /sbin/busybox ln -s /sbin/busybox /sbin/$cmd
done

## rootsh create.

cp -f /system/bin/sh /rootsh
chown 0.0 /rootsh
chmod 6755 /rootsh


## /default.prop replace..

rm -f /default.prop
cp -f /system/bootmenu/config/default.prop /default.prop


## /sbin/adbd replace..

cp -f /system/bootmenu/binary/adbd /sbin/adbd.root
chmod 755 /sbin/adbd.root

exit
