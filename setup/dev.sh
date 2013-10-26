#!/bin/bash

# Meld is a visual diff and merge tool targeted at developers. Meld helps you compare files, directories, and version controlled projects. It provides two- and three-way comparison of both files and directories, and has support for many popular version control systems.
# sudo apt-get install -y meld


#Diffuse
#Description: Graphical tool for merging and comparing text files
#Website: http://diffuse.sourceforge.net/
sudo apt-get install -y diffusecd 

#Rabbitcvs
sudo apt-get install -y rabbitvcs-nautilus


echo "Android tools adb"

sudo apt-get install -y android-tools-adb android-tools-fastboot



echo "Install Virtualbox 4.3"
#~ http://ubuntuhandbook.org/index.php/2013/10/virtualbox-4-3-released-install-or-upgrade-in-ubuntu-linux-mint/
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc)  contrib" >> /etc/apt/sources.list'
sudo apt-get update
sudo apt-get install virtualbox-4.3