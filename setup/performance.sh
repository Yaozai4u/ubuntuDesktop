#!/bin/bash
# http://www.hecticgeek.com/2012/06/few-things-to-speed-up-ubuntu/

#~ sudo apt-get autoremove -y indicator-messages
#~ sudo apt-get autoremove -y telepathy-indicator
#~ sudo apt-get autoremove -y telepathy-gabble

echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf


sudo apt-get install -y bum

#'Effects' of Using 'preload' ('readahead daemon') in Ubuntu 13.04
# http://www.hecticgeek.com/2013/05/using-preload-ubuntu-13-04/

sudo apt-get install -y zram-config
sudo apt-get install -y preload



# echo "install enhanceio cache @ Enhanceio"
# # http://sindzinski.de/content/enhanceio-ssd-caching-ubuntu-1304
# sudo apt-get install -y build-essential dkms fio 
# if [ -d /config/ ]; then
# 	if [ -d /config/EnhanceIO/ ]; then
# 		rm -rf /config/EnhanceIO/
# 	fi
# 	git clone git@github.com:Yaozai4u/EnhanceIO.git /config/EnhanceIO	
# fi
# #git clone git@github.com:Yaozai4u/EnhanceIO.git 
# #cd EnhanceIO
# sudo cp /config/EnhanceIO/CLI/eio_cli /sbin/
# sudo chmod 700 /sbin/eio_cli
# sudo cp /config/EnhanceIO/CLI/eio_cli.8 /usr/share/man/man8
# #cd Driver
# sudo cp -r /config/EnhanceIO/Driver/enhanceio /usr/src/enhanceio-0+git20130705
# #sudo cd /usr/src/enhanceio-0+git20130705
# sudo sed -i 's/#MODULE_VERSION#/0+git20130705/g' /usr/src/enhanceio-0+git20130705/dkms.conf
# sudo dkms add -m enhanceio -v 0+git20130705
# sudo dkms build -m enhanceio -v 0+git20130705
# sudo dkms install -m enhanceio -v 0+git20130705
# #sudo reboot
#umount ssd
# sudo blkid
# UUID=4327ebb7-12c5-4a2a-aca2-1bdbe14e06c1
# use gparted
# sudo eio_cli create -d /dev/disk/by-uuid/4327ebb7-12c5-4a2a-aca2-1bdbe14e06c1 -s /dev/sdc -c cache_root
#sudo eio_cli create -d /dev/sda4 -s /dev/sdc -c cache_root
#cat /proc/enhanceio/cache_root/stats
#sudo eio_cli info
#delete 
# cat /proc/enhanceio/cache_root/stats | grep nr_dirty
#sudo eio_cli clean -c cache_root
# sudo eio_cli delete -c cache_root

