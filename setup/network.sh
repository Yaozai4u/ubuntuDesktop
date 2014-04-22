!/bin/bash

# https://wiki.ubuntu.com/MountWindowsSharesPermanently
# //servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0
# remount
# mount -a


echo "install flash plugin"
sudo apt-get install -y flashplugin-installer

# http://www.webupd8.org/2013/09/adobe-flash-player-hardware.html
# libvdpau-va-gl is a VDPAU driver that uses OpenGL under the hood to accelerate drawing and scaling, and VA-API (if available) to accelerate video decoding.
# Important: make sure libvdpau-va-gl1 is not enabled system-wide because it causes Nvidia Settings to crash on start - if it is, either disable it or simply remove the package.
# install the VAAPI drivers (for Intel HD Graphics as well as G45 and later)::
# http://ubuntuforums.org/showthread.php?t=1914693


# http://askubuntu.com/questions/45996/how-can-i-know-if-nvidia-vdpau-is-working-for-mplayer-vlc-totem
sudo apt-get install -y i965-va-driver
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install -y libvdpau-va-gl1
# Adobe Flash doesn't use hardware acceleration by default on Linux so we'll have to force it:
sudo mkdir -p /etc/adobe
echo "EnableLinuxHWVideoDecode=1" | sudo tee /etc/adobe/mms.cfg
echo "OverrideGPUValidation=1" | sudo tee -a /etc/adobe/mms.cfg
# to use va_gl
# VDPAU_DRIVER=va_gl firefox
# To enable libvdpau-va-gl system-wide (not recommended for now because this may cause problems with some VDPAU-enabled applications)
# sudo sed -i "s/^# \[/\[/g" /etc/X11/Xsession.d/20vdpau-va-gl
# sudo sed -i "s/^#   export/  export/g" /etc/X11/Xsession.d/20vdpau-va-gl
 # Optional: check if libvdpau-va-gl/VDPAU is working.
# You can check if libvdpau-va-gl is working and Adobe Flash Player uses hardware acceleration by right clicking a Flash video on YouTube and selecting "Stats for nerds". The stats box that shows up should display the following: "accelerated video rendering, accelerated video decoding"
# sudo apt-get install vdpauinfo
# VDPAU_DRIVER=va_gl vdpauinfo |grep va_getDriverName
# If you get an error (for example "Failed to open VDPAU backend"), either your graphics card doesn't support VA-API (since this VDPAU driver requires VA-API) or you've missed a step from the instructions above.
# http://www.webupd8.org/2010/10/use-mplayer-with-vaapi-support-hardware.html 

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

sudo apt-get install -y gtk2-engines-murrine:i386  gtk2-engines-pixbuf:i386

#sudo apt-get install audio-recorder
# http://ubuntuforums.org/showthread.php?t=1242958

#sudo apt-get install pulseaudio pavucontrol padevchooser



echo "install chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install -y google-chrome-unstable

# chrome memory usage %
# ps -eo pmem,comm | grep chrome | cut -d " " -f 2 | paste -sd+ | bc
# Web browser (Firefox, Google Chrome / Chromium) tweaks

# if you want to use services such as Netflix, Maxdome and others, you can use Pipelight. Pipelight lets you use Microsoft Silverlight, Widevine (the built-in Chrome Widevine doesn't work with many websites), and more with native Linux web browsers (Pipelight itself uses Wine).

sudo apt-add-repository -y ppa:pipelight/stable
sudo apt-get update
sudo apt-get install -y pipelight-multi

 # install the Silverlight plugin
 sudo pipelight-plugin --enable silverlight
 # install the Widevine plugin, use the command below:
sudo pipelight-plugin --enable widevine

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
# http://www.webupd8.org/2013/09/mount-google-drive-in-linux-with-google.html
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse
# firstly need to authorize it with Google
google-drive-ocamlfuse
# mount Goole Drive using the command below:
google-drive-ocamlfuse ~/gdrive

# have sync problem
# http://www.noobslab.com/2014/02/unofficial-google-drive-grive-tools.html
# http://www.thefanclub.co.za/how-to/ubuntu-google-drive-client-grive-and-grive-tools
sudo add-apt-repository -y ppa:thefanclub/grive-tools

# http://www.webupd8.org/2011/11/how-to-integrate-google-calendar-with.html
# www.webupd8.org/2013/11/google-calendar-indicator-020-released.html


sudo add-apt-repository -y ppa:atareao/atareao
# http://www.tryfeem.com/

sudo apt-get update

sudo apt-get install -y calendar-indicator
sudo apt-get install -y my-weather-indicator



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


