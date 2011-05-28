#!/sbin/sh

echo 1 > /sys/class/leds/button-backlight/brightness

usleep 500

echo 0 > /sys/class/leds/button-backlight/brightness

usleep 500

echo 1 > /sys/class/leds/button-backlight/brightness

usleep 500

echo 0 > /sys/class/leds/button-backlight/brightness

usleep 500

echo 1 > /sys/class/leds/button-backlight/brightness
