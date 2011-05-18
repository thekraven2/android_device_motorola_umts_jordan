#!/system/bin/sh

######## BootMenu Script v0.8.3
######## Execute Pre BootMenu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

BUSYBOX="/system/bootmenu/binary/busybox"

######## Don't Delete.... ############
$BUSYBOX mount -o remount,rw rootfs /
######################################

# RECOVERY tool includes busybox
$BUSYBOX cp -f /system/bootmenu/recovery/sbin/recovery /sbin/busybox

$BUSYBOX chmod 755 /sbin/
$BUSYBOX chown 0.0 /sbin/busybox
$BUSYBOX chmod 4755 /sbin/busybox


## begin busybox sym link..

for cmd in $(/sbin/busybox --list); do
  /sbin/busybox ln -s /sbin/busybox /sbin/$cmd
done

# disable some duplicate busybox applets
[ -f /sbin/reboot ] && rm /sbin/reboot

## make a link to allow 2nd-boot menu option
OLD_DIR=`pwd`
cd /system/bootmenu/binary/
ln -s 2nd-init 2nd-boot
cd $OLD_DIR

## rootsh create.

cp -f /system/bin/sh /rootsh
chown 0.0 /rootsh
chmod 6755 /rootsh

## missing system files

[ ! -c /dev/tty0 ]  && ln -s /dev/tty /dev/tty0

## /default.prop replace..

rm -f /default.prop
cp -f /system/bootmenu/config/default.prop /default.prop


## /sbin/adbd replace..

cp -f /system/bootmenu/binary/adbd /sbin/adbd.root
chmod 4755 /sbin/adbd.root
chown 0.0 /sbin/adbd.root

exit
