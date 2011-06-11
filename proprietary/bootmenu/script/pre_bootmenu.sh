#!/system/bin/sh

######## BootMenu Script v0.8.6
######## Execute Pre BootMenu


export PATH=/sbin:/system/xbin:/system/bin


######## Main Script

mount -o remount,rw rootfs /

BUSYBOX="/sbin/busybox"

# RECOVERY tool includes busybox
cp -f /system/bootmenu/recovery/sbin/recovery $BUSYBOX

# add lsof to debug locks
cp -f /system/bootmenu/binary/lsof /sbin/lsof

chmod 755 /sbin
$BUSYBOX chown 0.0 $BUSYBOX
$BUSYBOX chmod 4755 $BUSYBOX

# busybox sym link..

for cmd in $($BUSYBOX --list); do
  $BUSYBOX ln -s /sbin/busybox /sbin/$cmd
done

busybox chmod -R +x /sbin

# replace /sbin/adbd..

cp -f /system/bootmenu/binary/adbd /sbin/adbd.root
busybox chmod 4755 /sbin/adbd.root
chown 0.0 /sbin/adbd.root


# disable some busybox applets we dont want
[ -f /sbin/reboot ] && rm /sbin/reboot


## 2nd-boot menu option for alternative "2nd-init" (new kernels)
#cp /system/bootmenu/2nd-init/* /system/bootmenu/2nd-boot/

## rootsh create.

cp -f /system/bin/sh /rootsh
chown 0.0 /rootsh
chmod 6755 /rootsh

## missing system files

[ ! -c /dev/tty0 ]  && ln -s /dev/tty /dev/tty0

## /default.prop replace..

rm -f /default.prop
cp -f /system/bootmenu/config/default.prop /default.prop


exit
