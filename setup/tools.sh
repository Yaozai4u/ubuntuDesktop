#!/bin/bash


echo "install indicator cpu frequency"  
sudo apt-get install -y indicator-cpufreq

echo "install ccsm(compiz config setting manager)"
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra

echo "install ubuntu restricted extras mp3 playback decoding."
sudo apt-get install -y ubuntu-restricted-extras


echo "install keepass2"
sudo apt-get install -y keepass2
 

echo "install package manager: synaptic"
sudo apt-get install -y synaptic

echo "install Hardware Info"
sudo apt-get install -y hardinfo

echo "install gparted"
sudo apt-get install -y gparted

echo "Unity Tweak tool"
sudo apt-get install -y unity-tweak-tool

echo "Gnome Tweak Tool"
sudo apt-get install -y gnome-tweak-tool

echo "install ubuntu tweak"
sudo apt-get install ubuntu-tweak

echo "GUI firewall"
sudo apt-get install -y gufw

echo " Install Codecs"
sudo apt-get install -y gstreamer0.10-plugins-ugly gstreamer0.10-ffmpeg libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321


echo "install Hardware Temp Monitor"
sudo apt-get install -y lm-sensors hddtemp psensor

echo "Install Compression/Decompression tools"
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

echo "install micom for comport"
sudo apt-get install -y minicom


echo "install scite Text Editor"
sudo apt-get install -y scite

echo "install htop"

sudo apt-get install -y htop

echo "install laptop detect"
sudo apt-get install -y laptop-detect


echo "nautilus open terminal"

sudo apt-get install -y nautilus-open-terminal

echo "powertop"

sudo apt-get install -y powertop

echo "Android tools adb"

sudo apt-get install -y android-tools-adb android-tools-fastboot

echo "Disk Manager"
sudo apt-get install -y k4dirstat

echo "gksu"
sudo apt-get install -y gksu



echo "add other ppa"

sudo add-apt-repository -y ppa:shutter/ppa
sudo add-apt-repository -y ppa:fcitx-team/nightly
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager

sudo apt-get update


echo "install shutter."
sudo apt-get install -y shutter


echo "install sougou pinyin"

sudo apt-get install -y fcitx-sogoupinyin

#echo "uninstall ibus"
#sudo apt-get purge ibus ibus-gtk ibus-gtk3
#sudo apt-get purge ibus-pinyin ibus-table python-ibus
#killall ibus-daemon
#rm -rf ~/.config/ibus


echo "install WineHQ"
sudo apt-get -y install wine1.6 winetricks

echo "install y-ppa-manager"
sudo apt-get install -y y-ppa-manager



