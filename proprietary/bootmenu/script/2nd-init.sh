#!/sbin/sh

######## BootMenu Script v0.8.0
######## Execute [2nd-init] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

rm /*.rc
cp -r -f /system/bootmenu/2nd-init/* /
chmod 755 /*.rc

umount /acct
umount /mnt/asec
umount /dev/cpuctl
umount /dev/pts


## busybox cleanup..
for cmd in $(/sbin/busybox --list); do
  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
done
rm /sbin/busybox


chmod 755 /system/bootmenu/binary/2nd-init
/system/bootmenu/binary/2nd-init

exit
