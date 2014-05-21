#!/bin/bash

# http://www.tryfeem.com/
# http://www.makeuseof.com/tag/installed-ubuntu-on-your-laptop-6-tweaks-youll-need/
# http://www.makeuseof.com/tag/transfer-files-quickly-across-devices-using-feem/
# unzip Feem_v2.9.2.1_Installer_For_Linux_64bit.zip
# cd Feem_v2.9.2.1_Installer_For_Linux_64bit
# ./install_feem.run

echo "adb device"
# http://www.vogella.com/articles/Android/article.html
# http://dandar3.blogspot.tw/2014/03/android-sdk-tools-on-ubuntu-1404-beta.html
sudo apt-get install -y libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5  lib32z1 lib32bz2-1.0 

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

# http://android.stackexchange.com/questions/41368/how-can-i-directly-wirelessly-copy-files-between-galaxy-s3-and-ubuntu
 # ES File Explorer File Manager  & Sftp
 # https://help.ubuntu.com/12.04/serverguide/openssh-server.html
sudo apt-get install -y openssh-server
# http://android.stackexchange.com/questions/9905/is-there-some-ssh-server-for-android

# http://www.androidcentral.com/installing-android-sdk-windows-mac-and-linux-tutorial
# https://help.ubuntu.com/community/AndroidSDK
sudo apt-get install -y lib32ncurses5 lib32stdc++6

# https://share.coursera.org/wiki/index.php/Android-001:Main
sudo cp ../config/51-android.rules /etc/udev/rules.d/

# http://stackoverflow.com/questions/17626663/can-i-connect-any-android-device-with-ubuntu
# Also for some noname devices you might need to add their VendorID to the ~/.android/adb_usb.ini. Just run the following commands with the device plugged in:

# find -L /sys/bus/usb/devices -maxdepth 2 -path "*/modalias" -printf "%h\t" -exec cat {} \; | awk -F: '/icFFisc42ip01/ {print $1}' | xargs -i cat {}/idVendor | awk '{print"\n0x"$1}' >>~/.android/adb_usb.ini
# grep ^0x ~/.android/adb_usb.ini | sort -u | sponge ~/.android/adb_usb.ini


# http://www.noobslab.com/2014/04/android-development-program-android.html
# http://www.webupd8.org/2014/05/install-android-studio-in-ubuntu-via-ppa.html
# Install Android Studio in Ubuntu 

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

