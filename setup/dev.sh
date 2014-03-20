#!/bin/bash


#echo "install scite Text Editor"
#sudo apt-get install -y scite

# Meld is a visual diff and merge tool targeted at developers. Meld helps you compare files, directories, and version controlled projects. It provides two- and three-way comparison of both files and directories, and has support for many popular version control systems.
# sudo apt-get install -y meld


#Diffuse
#Description: Graphical tool for merging and comparing text files
#Website: http://diffuse.sourceforge.net/
sudo apt-get install -y diffusecd 


# Geany

# Description: Fast and lightweight IDE
# Website: http://www.geany.org/
sudo apt-get install geany

#Rabbitcvs
# http://askubuntu.com/questions/288328/rabbitvcs-nautilus-not-working-on-ubuntu-13-04

# sudo apt-get install -y rabbitvcs-nautilus
sudo apt-get install rabbitvcs-core rabbitvcs-nautilus  rabbitvcs-gedit rabbitvcs-cli
# rabbitvcs-thunar
sudo cp -f ../scripts/RabbitVCS.py /usr/share/nautilus-python/extensions/RabbitVCS.py 
sudo ln -s /usr/lib/x86_64-linux-gnu/libpython2.7.so /usr/lib/libpython.2.7.so
sudo ln -s /usr/lib/x86_64-linux-gnu/libpython2.7.so.1 /usr/lib/libpython.2.7.so.1
sudo ldconfig


# http://www.webupd8.org/2013/07/sublime-text-3-ubuntu-ppa-now-available.html

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer



echo "Android tools adb"

sudo apt-get install -y android-tools-adb android-tools-fastboot



echo "adb device"
# http://www.vogella.com/articles/Android/article.html

#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5

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





echo "Install Virtualbox 4.3"
#~ http://ubuntuhandbook.org/index.php/2013/10/virtualbox-4-3-released-install-or-upgrade-in-ubuntu-linux-mint/
# sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc)  contrib" >> /etc/apt/sources.list'
# sudo apt-get update
# sudo apt-get install virtualbox-4.3

# http://www.webupd8.org/2013/10/virtualbox-43-released-with-multi-touch.html
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get install virtualbox-4.3
wget http://download.virtualbox.org/virtualbox/4.3.0/Oracle_VM_VirtualBox_Extension_Pack-4.3.0-89960.vbox-extpack -O /tmp/Oracle_VM_VirtualBox_Extension_Pack-4.3.0-89960.vbox-extpack
sudo VBoxManage extpack install --replace /tmp/Oracle_VM_VirtualBox_Extension_Pack-4.3.0-89960.vbox-extpack

