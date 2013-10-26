#!/bin/bash

echo "install Nividia Driver bumblebee"
sudo apt-get install -y bumblebee bumblebee-nvidia linux-headers-generic


#echo "install fingerprint driver."
#sudo add-apt-repository ppa:fingerprint/fingerprint-gui
#sudo apt-get update
#sudo apt-get install -y libbsapi policykit-1-fingerprint-gui fingerprint-gui
 


#echo "install enhanceio cache @ Enhanceio"
# http://sindzinski.de/content/enhanceio-ssd-caching-ubuntu-1304
#sudo apt-get install -y build-essential dkms fio 
#git clone git@github.com:Yaozai4u/EnhanceIO.git
#cd EnhanceIO
#sudo cp CLI/eio_cli /sbin/
#sudo chmod 700 /sbin/eio_cli
#sudo cp CLI/eio_cli.8 /usr/share/man/man8
#cd Driver
#sudo cp -r enhanceio /usr/src/enhanceio-0+git20130705
#cd /usr/src/enhanceio-0+git20130705
#sed -i 's/#MODULE_VERSION#/0+git20130705/g' dkms.conf
#sudo dkms add -m enhanceio -v 0+git20130705
#sudo dkms build -m enhanceio -v 0+git20130705
#sudo dkms install -m enhanceio -v 0+git20130705
#sudo reboot
#umount ssd
#sudo eio_cli create -d /dev/sda4 -s /dev/sdc -c cache_root
#cat /proc/enhanceio/cache_root/stats
#sudo eio_cli info
#sudo eio_cli clean -c cache_root

echo "adb device"
# http://www.vogella.com/articles/Android/article.html

sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5

# http://xiaomi.eu/community/threads/connect-xiaomi-mi2-to-linux-laptop.18936/#6
# .android/adb_usb.ini 
# ANDROID 3RD PARTY USB VENDOR ID LIST -- DO NOT EDIT.
# USE 'android update adb' TO GENERATE.
# 1 USB VENDOR ID PER LINE.
# 0x2717
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



