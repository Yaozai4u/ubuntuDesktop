#!/bin/bash

echo "adb device"
# http://www.vogella.com/articles/Android/article.html

sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5

# http://xiaomi.eu/community/threads/connect-xiaomi-mi2-to-linux-laptop.18936/#6
# .android/adb_usb.ini 
# ANDROID 3RD PARTY USB VENDOR ID LIST -- DO NOT EDIT.
# USE 'android update adb' TO GENERATE.
# 1 USB VENDOR ID PER LINE.
# 0x2717
cp ../config/adb_usb.ini ~/.android/
# http://bernaerts.dyndns.org/linux/74-ubuntu/245-ubuntu-precise-install-android-sdk
adb version
# Android Debug Bridge version 1.0.31
adb devices
# If your adb version is too old you'll get :
# # adb devices
# List of devices attached
# xxxxxxxxxxxxxxx          offline

# When you will plug your Android device for the first time, it will display a message asking you to allow connexion to your computer as a trusted computer.

# You need to validate the message and to select the permanent checkbox.

#$ adb devices
#List of devices attached 
# 4e53a45d	device


#no need to do these

#- http://abhinavasblog.blogspot.tw/2013/10/working-with-ubuntu-1304-and-1310-java.html

#-  http://forum.xda-developers.com/showthread.php?t=2302780
#- [GUIDE] Setup Android Development Environment on Ubuntu 13.04
#- http://bernaerts.dyndns.org/linux/74-ubuntu/245-ubuntu-precise-install-android-sdk
#- Bus 003 Device 013: ID 2717:9039  

#-http://ubuntuforums.org/showthread.php?t=1918512
#- $ lsusb 
#- Bus 003 Device 009: ID 2717:9039  
#- $ udevadm info -q all -n /dev/bus/usb/003/009

# E: ID_MODEL=MI_2
# E:ID_MODEL_ID=9039
# E: ID_VENDOR_ID=2717
# E: DEVLINKS=/dev/libmtp-3-3.1

#    ATTR{product}=="MI 2"
#SUBSYSTEM=="usb", ENV{ID_VENDOR_ID}=="04e8", ENV{ID_MODEL_ID}=="6860", MODE="0666", SYMLINK+="GalaxyNexus"
#- udevadm test --action="SUBSYSTEM=="usb", ENV{ID_VENDOR_ID}=="2717", ENV{ID_MODEL}=="9039" MODE="0666", SYMLINK+="Mi2s"" $(udevadm info -q path -n /dev/bus/usb/003/009)

