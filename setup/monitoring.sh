#!/bin/bash


# http://www.tecmint.com/command-line-tools-to-monitor-linux-performance/

sudo apt-get -y install sysstate

sudo apt-get -y install nethogs

sudo apt-get -y install ksystemlog

echo "powertop"
# https://wiki.archlinux.org/index.php/powertop
sudo apt-get install -y powertop

echo "install htop"
sudo apt-get install -y htop


echo "install Hardware Temp Monitor"
# http://askubuntu.com/questions/30334/what-application-indicators-are-available?page=3&tab=votes#tab-top
# https://help.ubuntu.com/community/SensorInstallHowto
sudo apt-get install lm-sensors hddtemp
sudo sensors-detect

sudo service module-init-tools start 
# Psensor installation:
sudo add-apt-repository ppa:jfi/ppa
sudo apt-get update
sudo apt-get install psensor


# System Load Indicator
# http://www.webupd8.org/2011/05/network-memory-and-cpu-usage-indicator.html
# If you want the latest updates
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install -y indicator-multiload

# http://www.cyberciti.biz/networking/nload-linux-command-to-monitor-network-traffic-bandwidth-usage/
# sudo apt-get install nload

# http://ubuntuforums.org/showthread.php?t=868189
# HOWTO: Use Bootchart to Time and Track your Boot Sequence 
# http://www.webupd8.org/2009/04/ubuntu-boot-chart-make-graph-with-your.html

# http://ubuntuhandbook.org/index.php/2013/08/linssid-wifi-scanner-for-ubuntu-linux-mint/
# http://linuxg.net/how-to-install-linssid-2-1-on-ubuntu-13-04-12-10-12-04-and-linux-mint-15-14-13/
sudo apt-get install -y libqwt6 
wget http://downloads.sourceforge.net/project/linssid/Linssid_2.1/linssid_2.1-1_amd64.deb -O /tmp/linssid.deb
 sudo dpkg -i /tmp/linssid.deb

 # http://www.noobslab.com/2012/07/conky-collection-for-ubuntulinux.html
 # Conky is a free, light-weight system monitor for X, that displays any information on your desktop.

 # http://www.noobslab.com/2013/04/panel-indicators-collection-for-ubuntu.html