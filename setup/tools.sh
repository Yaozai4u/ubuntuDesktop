#!/bin/bash

# http://askubuntu.com/questions/104186/any-application-which-could-sync-pics-videos-on-ubuntu-with-picasa-web-album
# https://wiki.gnome.org/Conduit
# Conduit is a synchronization application for GNOME. It allows you to synchronize your files, photos, emails, contacts, notes, calendar data and any other
#sudo apt-get install conduit

# Not working in saucy
# sudo apt-get install -y ardesia

echo " GUI for rsync"
# http://ubuntuforums.org/showthread.php?t=1758704
sudo apt-get install -y grsync
# rsync -r -t -o -v --progress --delete --partial -s /sourceFolder/ /DestFolder/

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
# http://www.webupd8.org/2013/05/keepass-2-appindicator-extension-for.html

sudo add-apt-repository -y ppa:dlech/keepass2-plugins
sudo apt-get update
sudo apt-get install -y keepass2-plugin-application-indicator

# To also install the Unity AppMenu plugin for KeePass 2, use the following command (assuming you've already added the PPA using the first two commands above):
sudo apt-get install -y keepass2-plugin-application-menu


# echo "nautilus open terminal"
# sudo apt-get install -y nautilus-open-terminal



echo "install Terminator"
sudo apt-get install -y Terminator
# Ctrl-Shift-E: will split the view vertically.
# Ctrl-Shift-O: will split the view horizontally.
# Ctrl-Shift-P: will focus be active on the previous view.
# Ctrl-Shift-N: will focus be active on the next view.
# Ctrl-Shift-W: will close the view where the focus is on.
# Ctrl-Shift-Q: will exit terminator.
# F11: will make terminator go fullscreen.
# gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'
# use ccsm change to terminator




#http://askubuntu.com/questions/76712/setting-nautilus-open-terminal-to-launch-terminator-rather-than-gnome-terminal

echo "change open terminal to terminator"
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"


echo "Keyboard Status Monitor (key-mon)"

# Description: Utility to show live keyboard and mouse status for teaching and screencasts
# Website: http://code.google.com/p/key-mon/
sudo apt-get install -y key-mon


# echo "Debian Package Search"



# pretty good Bulk Rename tool

sudo apt-get install -y thunar


# http://www.makeuseof.com/tag/delete-duplicate-files-quickly-with-these-tools/
# http://askubuntu.com/questions/59107/find-duplicate-files-and-folders-and-move-these-to-a-different-folder
# fslint (File System Lint)
sudo apt-get install -y fdupes
# If you insist on a graphical user interface you might want to have a look at fslint Install fslint / 
sudo apt-get install -y fslint

# LibreOffice tweaks
# LibreOffice sidebar, simply select View > Sidebar from the LibreOffice menu.
# monochrome icon set,
# sudo apt-get install libreoffice-style-sifr

echo "add other ppa"




# http://askubuntu.com/questions/30334/what-application-indicators-are-available

sudo add-apt-repository -y ppa:umang/indicator-stickynotes



# http://www.hardcoded.net/dupeguru/
# dupeGuru is a tool to find duplicate files on your computer. It can scan either filenames or contents.
 sudo add-apt-repository -y ppa:hsoft/ppa

# http://www.howtogeek.com/116807/how-to-easily-add-custom-right-click-options-to-ubuntus-file-manager/

# problem with nautilus-python
# sudo apt-add-repository -y ppa:nae-team/ppa

# http://ubuntu-tweak.com/downloads/
sudo add-apt-repository -y ppa:tualatrix/ppa



sudo add-apt-repository -y ppa:shutter/ppa
# http://askubuntu.com/questions/252717/how-to-make-shutter-as-the-default-screenshot-tool
# add key custom shortcut
# http://shutter-project.org/faq-help/set-shutter-as-the-default-screenshot-tool/
# https://help.ubuntu.com/community/KeyboardShortcuts 
# for selection  Shift+F11
# shutter -s 

#~ ppa manager
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager



sudo apt-get update


sudo apt-get install indicator-stickynotes


sudo apt-get install nautilus-actions 
# remove some problem with rabbit-cvs problem with python nautilus-actions-extra
# http://askubuntu.com/questions/76712/setting-nautilus-open-terminal-to-launch-terminator-rather-than-gnome-terminal






~ hotshots
#~ sudo add-apt-repository -y ppa:dhor/myway



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

# http://www.noobslab.com/2013/12/sunflower-dual-pane-file-manager.html
# Sunflower is Open Source, twin panel, small and highly customizable File Manager for Linux with plugins support.
sudo add-apt-repository -y ppa:atareao/sunflower
sudo apt-get update
sudo apt-get install -y sunflower

# http://www.webupd8.org/2013/10/install-nemo-with-unity-patches-and.html
sudo add-apt-repository -y ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install -y nemo nemo-fileroller nemo-compare nemo-rabbitvcs nemo-media-columns nemo-pastebin nemo-seahorse nemo-share nemo-terminal

# Optional: Set Nemo as the default file manager
gsettings set org.gnome.desktop.background show-desktop-icons false
# If you change your mind and want to use Nautilus for drawing the desktop icons instead of Nemo, use the commands below:
# gsettings set org.nemo.desktop show-desktop-icons false
# gsettings set org.gnome.desktop.background show-desktop-icons true

# Set Nemo as the default file manager (replacing Nautilus) by running the following command:
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
# Revert the changes
# If you want to revert the changes and set Nautilus back as the default file manager, firstly let Nautilus draw the desktop icons:
# gsettings set org.gnome.desktop.background show-desktop-icons true

# Then, set Nautilus as the default file manager:
# xdg-mime default nautilus.desktop inode/directory application/x-gnome-saved-search

# Next, remove Nemo (including all the installed Nemo extensions) and the WebUpd8 Nemo PPA:
# sudo apt-get remove nemo nemo-*
# sudo rm /etc/apt/sources.list.d/webupd8team-nemo-*.list
