#!/bin/bash

# https://sites.google.com/site/easylinuxtipsproject/speed
# http://www.hecticgeek.com/2012/06/few-things-to-speed-up-ubuntu/
# http://askubuntu.com/questions/2194/how-can-i-improve-overall-system-performance?page=1&tab=votes#tab-top
# http://www.hecticgeek.com/2013/05/using-preload-ubuntu-13-04/




# HOWTO: Tweak your ext3 filesystem for a performance boost
# http://ubuntuforums.org/showthread.php?t=107856
# http://blog.smartlogicsolutions.com/2009/06/04/mount-options-to-improve-ext4-file-system-performance/

# http://askubuntu.com/questions/76913/how-can-i-check-if-a-particular-partition-ext4-is-journaled
 # tune2fs -o journal_data_writeback /dev/sdXY
# To enable writeback mode use this. This mode will typically provide the best ext4 performance.
# tune2fs -o journal_data_writeback /dev/sda1
# To delete journal remove
# tune2fs -O ^has_journal /dev/sda1

#Check if everything is ok
# e2fsck -f /dev/sda1

# $ sudo dumpe2fs /dev/sda2 |grep journal
# dumpe2fs 1.42.8 (20-Jun-2013)
# Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent flex_bg sparse_super large_file huge_file uninit_bg dir_nlink extra_isize
# Journal features:         journal_incompat_revoke
# $ sudo tune2fs -o journal_data_writeback /dev/sda2
# tune2fs 1.42.8 (20-Jun-2013)
# $ sudo dumpe2fs /dev/sda2 |grep journal
# dumpe2fs 1.42.8 (20-Jun-2013)
# Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent flex_bg sparse_super large_file huge_file uninit_bg dir_nlink extra_isize
# Default mount options:    journal_data_writeback user_xattr acl
# Journal features:         journal_incompat_revoke



# add /etc/fstab noatime,data=writeback
#~ sudo apt-get autoremove -y indicator-messages
#~ sudo apt-get autoremove -y telepathy-indicator
#~ sudo apt-get autoremove -y telepathy-gabble

# http://www.techdrivein.com/2013/03/4-simple-tweaks-to-improve-unity-performance-ubuntu.html
sudo apt-get autoremove unity-lens-music unity-lens-photos unity-lens-gwibber unity-lens-shopping unity-lens-video



echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf


sudo apt-get install -y bum

#'Effects' of Using 'preload' ('readahead daemon') in Ubuntu 13.04
# http://www.hecticgeek.com/2013/05/using-preload-ubuntu-13-04/

sudo apt-get install -y zram-config
sudo apt-get install -y preload



sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop

# https://sites.google.com/site/easylinuxtipsproject/clean

# Defrag file system
# sudo e4defrag -c /

# Many Problem with Enhanceio

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

