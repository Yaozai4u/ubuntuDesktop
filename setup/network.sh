!/bin/bash

# https://wiki.ubuntu.com/MountWindowsSharesPermanently
# //servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0
# remount
# mount -a


echo "install flash plugin"
sudo apt-get install -y flashplugin-installer

echo "install qbittorrent"
sudo apt-get install -y qbittorrent


echo "install putty"
sudo apt-get install -y putty

echo "install filezilla"
sudo apt-get install -y filezilla

echo "install fping"
sudo apt-get install -y fping

echo "Remote desktop"
sudo apt-get install -y Remmina


echo "install chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install -y google-chrome-unstable

# http://www.webupd8.org/2014/01/enable-hardware-acceleration-in-chrome.html
# chrome://flags/#enable-app-list

echo "wireshark network capture"
sudo apt-get install -y wireshark

# http://ubuntuforums.org/showthread.php?t=2116412
# https://github.com/graysky2/profile-cleaner
# http://www.webupd8.org/2013/02/keep-your-browser-profiles-in-tmpfs-ram.html
sudo add-apt-repository ppa:graysky/utils

# http://www.webupd8.org/2013/06/how-to-set-up-wireless-hotspot-access.html
sudo add-apt-repository ppa:nilarimogard/webupd8

sudo apt-get update




sudo apt-get install profile-cleaner
sudo apt-get install profile-sync-daemon
# /etc/psd.conf
# USERS="andrew"
sudo sed -i 's/USERS=""/USERS="yaozai"/g' /etc/psd.conf 
# BROWSERS="google-chrome-unstable"
sudo sed -i 's/#BROWSERS=""/BROWSERS="google-chrome-unstable"/g' /etc/psd.conf 
# profile-sync-daemon parse
# sudo service psd start


sudo apt-get install ap-hotspot