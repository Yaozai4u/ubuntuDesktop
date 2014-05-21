!/bin/bash

# https://wiki.ubuntu.com/MountWindowsSharesPermanently
# //servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0
# remount
# mount -a

# http://linoxide.com/linux-command/use-ip-command-linux

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

# It turns out that when you connect, if you've used a tunnel to connect to the RDP server it creates/appends to a file called ~/.freerdp/known_hosts which stores the public key assocated with the server. If you use a different tunnel or server then the key no longer matches. Deleting the apropriate line in ~/.freerdp/known_hosts fixed the issue. 


echo "rdesktop"
# Remmina Plugin RDesktop is a free software protocol plugin to establish a RDP connection using RDesktop which sometimes performs better than the FreeRDP integrated plugin in Remmina and also provides a lot of features like clipboard sync, remote folders support, remote audio, seamless RDP and various settings for performances.
sudo apt-get install -y rdesktop
wget  http://www.muflone.com/resources/remmina-plugin-rdesktop/archive/1.0.0.3/remmina-plugin-rdesktop_1.0.0.3-1_amd64.deb -O /tmp/remmina-plugin-rdesktop.deb 
sudo dpkg -i /tmp/remmina-plugin-rdesktop.deb 
rm /tmp/remmina-plugin-rdesktop.deb
# http://serverfault.com/questions/574759/rdesktop-error-recv-connection-reset-by-peer
# From time to time I forget this setting. The vast majority of it means "Turn off Remote Desktop with NLA".

# Set on target "Microsoft Windows (WIN)"

# run SystemPropertiesRemote.exe
# deselect "Allow connections only from computers running Remote Desktop with NLA"
# try to connect from linux client

# http://www.muflone.com/remmina-plugin-rdesktop/english/download.html


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


# http://www.webupd8.org/2014/02/how-to-install-chromium-beta-or-dev.html
sudo add-apt-repository -y ppa:saiarcot895/chromium-dev
sudo apt-get update
sudo apt-get install -y chromium-browser
sudo apt-get install pepperflashplugin-nonfree
# The installer can be used to install Pepper Flash Player from either Google Chrome Stable, Beta or Unstable. 
sudo update-pepperflashplugin-nonfree --install

echo "install chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install -y google-chrome-unstable
# chrome://version/
sudo apt-get install -y libnss3-tools
# http://blog.avirtualhome.com/adding-ssl-certificates-to-google-chrome-linux-ubuntu/
# curl -k -o "cacert-root.crt"   "http://www.cacert.org/certs/root.crt"
# certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "CAcert.org" -i cacert-root.crt 
# certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "name" -i certificate.crt 
# $ certutil -L -d sql:$HOME/.pki/nssdb

# chrome memory usage %
# ps -eo pmem,comm | grep chrome | cut -d " " -f 2 | paste -sd+ | bc
# Web browser (Firefox, Google Chrome / Chromium) tweaks

# if you want to use services such as Netflix, Maxdome and others, you can use Pipelight. Pipelight lets you use Microsoft Silverlight, Widevine (the built-in Chrome Widevine doesn't work with many websites), and more with native Linux web browsers (Pipelight itself uses Wine).

sudo apt-add-repository -y ppa:pipelight/stable

# http://www.webupd8.org/2013/12/tor-browser-bundle-ubuntu-ppa.html

sudo add-apt-repository -y ppa:webupd8team/tor-browser

sudo apt-get update


sudo apt-get install -y tor-browser



sudo apt-get install -y pipelight-multi

 # install the Silverlight plugin
 sudo pipelight-plugin --enable silverlight
 # install the Widevine plugin, use the command below:
sudo pipelight-plugin --enable widevine

# http://stackoverflow.com/questions/11779325/installing-java-plugin-for-chrome-in-ubuntu
# java -version
# Java 1.6 will require icedtea6-plugin, Java 1.7 icedtea-7-plugin.
# http://www.webupd8.org/2011/09/how-to-install-oracle-java-7-jdk-in.html
sudo apt-get install -y icedtea-7-plugin openjdk-7-jre
# http://askubuntu.com/questions/450683/java-plugin-in-chromium
# Java (IcedTea) doesn't have a PPAPI plugin available, and so it's not usable in Chromium, since Chromium 34 in Trusty has switched to the Aura rendering framework and no longer allows NPAPI plugins.

# For development, you'll also want OpenJDK which you can install by using the button below:
sudo apt-get install -y  openjdk-7-jdk
# /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/IcedTeaPlugin.so
# /usr/lib/mozilla
# /usr/lib/mozilla/plugins
# mkdir -p ~/.mozilla/plugins
# ln -s /usr/lib/jvm/java-7-oracle/jre/lib/amd64/libnpjp2.so ~/.mozilla/plugins/
# http://www.java.com/en/download/help/enable_browser_ubuntu.xml
# sudo ln -sf /usr/lib/jvm/java-7-oracle/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins/
# libjavaplugin.so -> /etc/alternatives/mozilla-javaplugin.so
# sudo rm /usr/lib/mozilla/plugins/libjavaplugin.so



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


