#!/system/bin/sh

######## BootMenu Script v0.6.1
######## Execute Pre BootMenu


export PATH=/sbin:/system/xbin:/system/bin:system/bootmenu/binary

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

## sshd dropbear permissions

$BUSYBOX cp -f /system/bootmenu/dropbear/* /sbin/
$BUSYBOX chmod 755 /sbin/dropbear
$BUSYBOX chmod 755 /sbin/sftp-server
$BUSYBOX chmod 755 /sbin/ssh
$BUSYBOX chmod 755 /sbin/scp
$BUSYBOX chown 0.0 /sbin/dropbear
$BUSYBOX chown 0.0 /sbin/sftp-server

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

## Run Init Script

chmod 755 /system/bootmenu/init.d/*
run-parts /system/bootmenu/init.d/

exit
