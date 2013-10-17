#!/bin/bash

echo "install Nividia Driver bumblebee"
sudo apt-get install -y bumblebee bumblebee-nvidia linux-headers-generic


#echo "install fingerprint driver."
#sudo add-apt-repository ppa:fingerprint/fingerprint-gui
#sudo apt-get update
#sudo apt-get install -y libbsapi policykit-1-fingerprint-gui fingerprint-gui
 


#echo "install enhanceio cache @ Enhanceio"
# http://sindzinski.de/content/enhanceio-ssd-caching-ubuntu-1304
#sudo apt-get install -y build-essential dkms fio 
#git clone git@github.com:Yaozai4u/EnhanceIO.git
#cd EnhanceIO
#sudo cp CLI/eio_cli /sbin/
#sudo chmod 700 /sbin/eio_cli
#sudo cp CLI/eio_cli.8 /usr/share/man/man8
#cd Driver
#sudo cp -r enhanceio /usr/src/enhanceio-0+git20130705
#cd /usr/src/enhanceio-0+git20130705
#sed -i 's/#MODULE_VERSION#/0+git20130705/g' dkms.conf
#sudo dkms add -m enhanceio -v 0+git20130705
#sudo dkms build -m enhanceio -v 0+git20130705
#sudo dkms install -m enhanceio -v 0+git20130705
#sudo reboot
#umount ssd
#sudo eio_cli create -d /dev/sda4 -s /dev/sdc -c cache_root
#cat /proc/enhanceio/cache_root/stats
#sudo eio_cli info
#sudo eio_cli clean -c cache_root

