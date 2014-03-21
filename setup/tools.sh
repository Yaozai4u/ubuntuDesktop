#!/bin/bash

# http://askubuntu.com/questions/30334/what-application-indicators-are-available



echo "Disk Manager"
sudo apt-get install -y k4dirstat

echo "gksu"
sudo apt-get install -y gksu

# http://www.noobslab.com/2013/04/tweaksthings-to-do-after-install-of.html

echo "Unity Tweak tool"
sudo apt-get install -y unity-tweak-tool

echo "Gnome Tweak Tool"
sudo apt-get install -y gnome-tweak-tool


echo "Install Compression/Decompression tools"
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
#~ http://www.thegeekstuff.com/2010/04/view-and-extract-packages/


#echo "install micom for comport"
#sudo apt-get install -y minicom

echo "GUI firewall"
sudo apt-get install -y gufw

echo "install keepass2"
sudo apt-get install -y keepass2


echo "install htop"
sudo apt-get install -y htop


# echo "nautilus open terminal"
# sudo apt-get install -y nautilus-open-terminal


echo "powertop"
# https://wiki.archlinux.org/index.php/powertop
sudo apt-get install -y powertop

echo "install Terminator"
sudo apt-get install -y Terminator
# Ctrl-Shift-E: will split the view vertically.
# Ctrl-Shift-O: will split the view horizontally.
# Ctrl-Shift-P: will focus be active on the previous view.
# Ctrl-Shift-N: will focus be active on the next view.
# Ctrl-Shift-W: will close the view where the focus is on.
# Ctrl-Shift-Q: will exit terminator.
# F11: will make terminator go fullscreen.





#http://askubuntu.com/questions/76712/setting-nautilus-open-terminal-to-launch-terminator-rather-than-gnome-terminal

echo "change open terminal to terminator"
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"


echo "Keyboard Status Monitor (key-mon)"

# Description: Utility to show live keyboard and mouse status for teaching and screencasts
# Website: http://code.google.com/p/key-mon/
sudo apt-get install key-mon


# echo "Debian Package Search"

# echo "Nautilus Compare Extension"
# http://askubuntu.com/questions/287430/nautilus-compare-meld-integration-with-nautilus-and-other-nautilus-actions-ext
# sudo ln -s /usr/lib/libphython2.7.so.1 /usr/lib/libpython2.7.so
# sudo ldconfig

# pretty good Bulk Rename tool

sudo apt-get install thunar


echo "add other ppa"


# System Load Indicator
# http://www.webupd8.org/2011/05/network-memory-and-cpu-usage-indicator.html
# If you want the latest updates
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install -y indicator-multiload


sudo add-apt-repository -y ppa:umang/indicator-stickynotes
sudo apt-get update
sudo apt-get install indicator-stickynotes


# http://www.hardcoded.net/dupeguru/
# dupeGuru is a tool to find duplicate files on your computer. It can scan either filenames or contents.
 sudo add-apt-repository -y ppa:hsoft/ppa

# http://www.howtogeek.com/116807/how-to-easily-add-custom-right-click-options-to-ubuntus-file-manager/

sudo apt-add-repository -y ppa:nae-team/ppa


sudo apt-get update


sudo apt-get install nautilus-actions nautilus-actions-extra




# http://ubuntu-tweak.com/downloads/
sudo add-apt-repository -y ppa:tualatrix/ppa



sudo add-apt-repository -y ppa:shutter/ppa
#~ hotshots
#~ sudo add-apt-repository -y ppa:dhor/myway


#~ ppa manager
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager


sudo apt-get update

# echo  "Install Hotshots screenshot & annotation app"




echo "install shutter."
sudo apt-get install -y shutter
#~ http://ubuntuhandbook.org/index.php/2013/10/install-hotshots-screenshot-annotation-ubuntu-1310/
#~ sudo apt-get install -y hotshots


echo "install ubuntu tweak"
sudo apt-get install -y ubuntu-tweak




#~ echo "install WineHQ"
#~ sudo apt-get -y install wine1.6 winetricks

echo "install y-ppa-manager"
sudo apt-get install -y y-ppa-manager


#~ http://ubuntuhandbook.org/index.php/2013/08/install-double-commander-in-ubuntu-linux-mint-elementary-os/

#~ sudo apt-get install doublecmd-qt

#~ http://askubuntu.com/questions/222587/how-to-check-apt-get-upgrade-status-after-losing-ssh-connection
#screen

