#!/system/bin/sh
export PATH=/sbin:/system/xbin:/system/bin
PART_ALIAS=$1
MOUNT_POINT=$2
BLOCK_DEVICE=/dev/block/${PART_ALIAS}
mount -t ext3 -o nosuid,nodev,noatime,nodiratime,barrier=1 ${BLOCK_DEVICE} ${MOUNT_POINT}
