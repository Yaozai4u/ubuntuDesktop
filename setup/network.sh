!/bin/bash

# https://wiki.ubuntu.com/MountWindowsSharesPermanently
# //servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0
# remount
# mount -a


echo "install flash plugin"
sudo apt-get install -y flashplugin-installer

echo "install qbittorrent"
sudo apt-get install -y qbittorrent

# echo "Bt Resource Search" 
# sudo apt-get install -y btresourcesearch

echo "install putty"
sudo apt-get install -y putty

echo "install filezilla"
sudo apt-get install -y filezilla

echo "install fping"
sudo apt-get install -y fping

echo "Remote desktop"
sudo apt-get install -y Remmina




# skype
# http://www.noobslab.com/2014/01/skype-released-new-version-install-in.html
#sudo apt-get install skype
# https://launchpad.net/audio-recorder
# http://linuxg.net/how-to-install-skype-call-recorder-0-10-on-ubuntu-13-04-linux-mint-15-and-pear-os-8/
# http://www.webupd8.org/2014/03/fix-skype-not-using-desktop-gtk-theme.html
#sudo apt-get install gtk2-engines-murrine:i386


#sudo apt-get install audio-recorder
# http://ubuntuforums.org/showthread.php?t=1242958

#sudo apt-get install pulseaudio pavucontrol padevchooser



echo "install chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install -y google-chrome-unstable

# http://stackoverflow.com/questions/11779325/installing-java-plugin-for-chrome-in-ubuntu
sudo apt-get install -y icedtea-7-plugin

# http://www.webupd8.org/2014/01/enable-hardware-acceleration-in-chrome.html
# chrome://flags/#enable-app-list

echo "wireshark network capture"
sudo apt-get install -y wireshark

# http://ubuntuforums.org/showthread.php?t=2116412
# https://github.com/graysky2/profile-cleaner
# http://www.webupd8.org/2013/02/keep-your-browser-profiles-in-tmpfs-ram.html
sudo add-apt-repository ppa:graysky/utils

# http://www.webupd8.org/2013/06/how-to-set-up-wireless-hotspot-access.html
sudo add-apt-repository -y ppa:nilarimogard/webupd8

# jdownloader
sudo add-apt-repository -y  ppa:jd-team/jdownloader
# Google Drive
# http://www.noobslab.com/2014/02/unofficial-google-drive-grive-tools.html
# http://www.thefanclub.co.za/how-to/ubuntu-google-drive-client-grive-and-grive-tools
sudo add-apt-repository -y ppa:thefanclub/grive-tools

# http://www.webupd8.org/2011/11/how-to-integrate-google-calendar-with.html
# www.webupd8.org/2013/11/google-calendar-indicator-020-released.html


sudo add-apt-repository -y ppa:atareao/atareao

sudo apt-get update

sudo apt-get install -y calendar-indicator

sudo apt-get install -y grive grive-tools

# https://launchpad.net/~jd-team/+archive/jdownloader
sudo apt-get install -y jdownloader-installer


sudo apt-get install profile-cleaner
sudo apt-get install profile-sync-daemon
# /etc/psd.conf
# USERS="andrew"
sudo sed -i 's/USERS=""/USERS="yaozai"/g' /etc/psd.conf 
# BROWSERS="google-chrome-unstable"
sudo sed -i 's/#BROWSERS=""/BROWSERS="google-chrome-unstable"/g' /etc/psd.conf 
# profile-sync-daemon parse
# sudo service psd start

#~ http://www.webupd8.org/2013/06/how-to-set-up-wireless-hotspot-access.html
#~ http://askubuntu.com/questions/180733/how-to-setup-a-wi-fi-hotspot-access-point-mode

sudo apt-get install ap-hotspot


