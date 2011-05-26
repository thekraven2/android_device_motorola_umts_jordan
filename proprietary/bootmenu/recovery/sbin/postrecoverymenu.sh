#/sbin/sh

# exit from recovery, back to bootmenu

export PATH=/sbin

BUSYBOX=/sbin/busybox

$BUSYBOX mount -t ext3 -o rw,noatime,nodiratime /dev/block/mmcblk1p21 /system

