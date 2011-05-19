#!/sbin/sh

######## BootMenu Script v0.8.3
######## Execute [2nd-init] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

rm /*.rc
cp -r -f /system/bootmenu/2nd-init/* /
chmod 755 /*.rc
chmod 755 /system/bootmenu/binary/2nd-init


umount /acct
umount /mnt/asec
umount /dev/cpuctl
umount /dev/pts


## sbin cleanup
rm /sbin/lsof
#rm /sbin/adbd.root


## busybox cleanup..
for cmd in $(/sbin/busybox --list); do
  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
done

rm /sbin/busybox



/system/bootmenu/binary/2nd-init

exit
