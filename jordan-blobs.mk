# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/motorola/sholes/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
# media config xml file

PRODUCT_COPY_FILES += \
	device/motorola/jordan/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/motorola/jordan/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin

#bin
PRODUCT_COPY_FILES += \
	device/motorola/jordan/proprietary/xbin/groups:system/xbin/groups

#etc
PRODUCT_COPY_FILES += \
	device/motorola/jordan/recovery.fstab:system/etc/recovery.fstab \
	device/motorola/jordan/proprietary/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
	device/motorola/jordan/proprietary/etc/custom_backup_list.txt:system/etc/custom_backup_list.txt \
	device/motorola/jordan/proprietary/etc/profile:system/etc/profile \
	device/motorola/jordan/proprietary/etc/sysctl.conf:system/etc/sysctl.conf \
	device/motorola/jordan/proprietary/etc/busybox.fstab:system/etc/fstab \
	device/motorola/jordan/proprietary/lib/modules/modules.alias:system/lib/modules/modules.alias \
	device/motorola/jordan/proprietary/lib/modules/modules.dep:system/lib/modules/modules.dep

#app
PRODUCT_COPY_FILES += \
	device/motorola/jordan/proprietary/app/basebandswitcherV4.0.apk:system/app/basebandswitcherV4.0.apk

#Bootmenu
PRODUCT_COPY_FILES += \
	device/motorola/jordan/profiles/standard/init.rc:system/bootmenu/2nd-init/init.rc \
	device/motorola/jordan/profiles/standard/init.mapphone_umts.rc:system/bootmenu/2nd-init/init.mapphone_umts.rc \
	device/motorola/jordan/profiles/standard/ueventd.rc:system/bootmenu/2nd-init/ueventd.rc \
	device/motorola/jordan/profiles/standard/init:system/bootmenu/2nd-init/init \
	device/motorola/jordan/profiles/standard/sbin/ueventd:system/bootmenu/2nd-init/sbin/ueventd \
	device/motorola/jordan/profiles/ramdisk-cache/init.rc:system/bootmenu/2nd-boot/init.rc \
	device/motorola/jordan/profiles/ramdisk-cache/init.mapphone_umts.rc:system/bootmenu/2nd-boot/init.mapphone_umts.rc \
	device/motorola/jordan/proprietary/bootmenu/binary/adbd:system/bootmenu/binary/adbd \
	device/motorola/jordan/proprietary/bootmenu/binary/logwrapper.bin:system/bootmenu/binary/logwrapper.bin \
	device/motorola/jordan/proprietary/bootmenu/binary/logwrapper.bin:system/bin/logwrapper.bin \
	device/motorola/jordan/proprietary/bootmenu/binary/lsof.static:system/bootmenu/binary/lsof \
	device/motorola/jordan/proprietary/bootmenu/binary/2nd-boot:system/bootmenu/binary/2nd-boot \
	device/motorola/jordan/proprietary/bootmenu/config/bootmenu_bypass:system/bootmenu/config/bootmenu_bypass \
	device/motorola/jordan/proprietary/bootmenu/config/default.prop:system/bootmenu/config/default.prop \
	device/motorola/jordan/proprietary/bootmenu/config/default_bootmode.conf:system/bootmenu/config/default_bootmode.conf \
	device/motorola/jordan/proprietary/bootmenu/config/overclock.conf:system/bootmenu/config/overclock.conf \
	device/motorola/jordan/proprietary/bootmenu/ext/su:system/bootmenu/ext/su \
	external/bootmenu/images/background.png:system/bootmenu/images/background.png \
	external/bootmenu/images/indeterminate1.png:system/bootmenu/images/indeterminate1.png \
	external/bootmenu/images/indeterminate2.png:system/bootmenu/images/indeterminate2.png \
	external/bootmenu/images/indeterminate3.png:system/bootmenu/images/indeterminate3.png \
	external/bootmenu/images/indeterminate4.png:system/bootmenu/images/indeterminate4.png \
	external/bootmenu/images/indeterminate5.png:system/bootmenu/images/indeterminate5.png \
	external/bootmenu/images/indeterminate6.png:system/bootmenu/images/indeterminate6.png \
	external/bootmenu/images/progress_empty.png:system/bootmenu/images/progress_empty.png \
	external/bootmenu/images/progress_fill.png:system/bootmenu/images/progress_fill.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/keys:system/bootmenu/recovery/res/keys \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/icon_error.png:system/bootmenu/recovery/res/images/icon_error.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/icon_done.png:system/bootmenu/recovery/res/images/icon_done.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/icon_installing.png:system/bootmenu/recovery/res/images/icon_installing.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate1.png:system/bootmenu/recovery/res/images/indeterminate1.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate2.png:system/bootmenu/recovery/res/images/indeterminate2.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate3.png:system/bootmenu/recovery/res/images/indeterminate3.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate4.png:system/bootmenu/recovery/res/images/indeterminate4.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate5.png:system/bootmenu/recovery/res/images/indeterminate5.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/indeterminate6.png:system/bootmenu/recovery/res/images/indeterminate6.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/progress_empty.png:system/bootmenu/recovery/res/images/progress_empty.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/progress_fill.png:system/bootmenu/recovery/res/images/progress_fill.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/res/images/icon_clockwork.png:system/bootmenu/recovery/res/images/icon_clockwork.png \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/e2fsck:system/bootmenu/recovery/sbin/e2fsck \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/fix_permissions:system/bootmenu/recovery/sbin/fix_permissions \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/killrecovery.sh:system/bootmenu/recovery/sbin/killrecovery.sh \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/nandroid-md5.sh:system/bootmenu/recovery/sbin/nandroid-md5.sh \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/parted:system/bootmenu/recovery/sbin/parted \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/postrecoveryboot.sh:system/bootmenu/recovery/sbin/postrecoveryboot.sh \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/recovery:system/bootmenu/recovery/sbin/recovery_stable \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/sdparted:system/bootmenu/recovery/sbin/sdparted \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/mke2fs:system/bootmenu/recovery/sbin/mke2fs \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/mke2fs.bin:system/bootmenu/recovery/sbin/mke2fs.bin \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/tune2fs:system/bootmenu/recovery/sbin/tune2fs \
	device/motorola/jordan/proprietary/bootmenu/recovery/sbin/tune2fs.bin:system/bootmenu/recovery/sbin/tune2fs.bin \
	device/motorola/jordan/proprietary/bootmenu/recovery/recovery.fstab:system/bootmenu/recovery/recovery.fstab \
	device/motorola/jordan/proprietary/bootmenu/script/2nd-init.sh:system/bootmenu/script/2nd-init.sh \
	device/motorola/jordan/proprietary/bootmenu/script/2nd-boot.sh:system/bootmenu/script/2nd-boot.sh \
	device/motorola/jordan/proprietary/bootmenu/script/adbd.sh:system/bootmenu/script/adbd.sh \
	device/motorola/jordan/proprietary/bootmenu/script/overclock.sh:system/bootmenu/script/overclock.sh \
	device/motorola/jordan/proprietary/bootmenu/script/post_bootmenu.sh:system/bootmenu/script/post_bootmenu.sh \
	device/motorola/jordan/proprietary/bootmenu/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
	device/motorola/jordan/proprietary/bootmenu/script/recovery.sh:system/bootmenu/script/recovery.sh \
	device/motorola/jordan/proprietary/bootmenu/script/recovery_stable.sh:system/bootmenu/script/recovery_stable.sh \
	device/motorola/jordan/proprietary/bootmenu/script/recoveryexit.sh:system/bootmenu/script/recoveryexit.sh \
	device/motorola/jordan/proprietary/bootmenu/script/unroot.sh:system/bootmenu/script/unroot.sh \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_conservative.ko:system/bootmenu/ext/modules/cpufreq_conservative.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_interactive.ko:system/bootmenu/ext/modules/cpufreq_interactive.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_ondemand.ko:system/bootmenu/ext/modules/cpufreq_ondemand.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_performance.ko:system/bootmenu/ext/modules/cpufreq_performance.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_powersave.ko:system/bootmenu/ext/modules/cpufreq_powersave.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_smartass.ko:system/bootmenu/ext/modules/cpufreq_smartass.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/cpufreq_userspace.ko:system/bootmenu/ext/modules/cpufreq_userspace.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/overclock_defy.ko:system/bootmenu/ext/modules/overclock_defy.ko \
	device/motorola/jordan/proprietary/bootmenu/ext/modules/symsearch.ko:system/bootmenu/ext/modules/symsearch.ko
