#!/bin/bash
# http://followthegeeks.com/compiz-is-consuming-too-much-cpu-heres-the-solution/
# uncheck 「Sync To VBlank」. you might want to select 「Fast」


# https://sites.google.com/site/easylinuxtipsproject/speed
# http://www.hecticgeek.com/2012/06/few-things-to-speed-up-ubuntu/
# http://askubuntu.com/questions/2194/how-can-i-improve-overall-system-performance?page=1&tab=votes#tab-top
# http://www.hecticgeek.com/2013/05/using-preload-ubuntu-13-04/

# http://www.linuxatemyram.com/


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
# sudo apt-get autoremove -y indicator-messages
# sudo apt-get autoremove -y telepathy-indicator
# sudo apt-get autoremove -y telepathy-gabble

# http://www.techdrivein.com/2013/03/4-simple-tweaks-to-improve-unity-performance-ubuntu.html
sudo apt-get autoremove unity-lens-music unity-lens-photos unity-lens-gwibber unity-lens-shopping unity-lens-video

gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

# https://sites.google.com/site/easylinuxtipsproject/first#TOC-Decrease-the-swap-use-very-important-
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
echo "vm.vfs_cache_pressure=50" | sudo tee -a /etc/sysctl.conf

sudo apt-get install -y bum

#'Effects' of Using 'preload' ('readahead daemon') in Ubuntu 13.04
# http://www.hecticgeek.com/2013/05/using-preload-ubuntu-13-04/

sudo apt-get install -y zram-config
sudo apt-get install -y preload



sudo sed -i 's/NoDisplay=true/NoDisplay=false/g' /etc/xdg/autostart/*.desktop


# http://www.webupd8.org/2014/04/get-better-linux-desktop-performance.html
# https://github.com/poelzi/ulatencyd/wiki
# is a daemon which constantly optimizes the Linux Kernel for best user experience. 
# sudo apt-get install  -y ulatency ulatencyd
# ulatency --gui


# https://sites.google.com/site/easylinuxtipsproject/clean
sudo apt-get install -y gnome-session-fallback
# GNOME Fallback (No effects).


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
# http://www.cyberciti.biz/faq/add-remove-list-linux-kernel-modules/
# https://answers.launchpad.net/ubuntu/+source/dkms/+question/185568
# dkms status
# sudo dkms remove enhanceio/0+git20130705  --all
# $ dkms status
# acpi-call, 20130623, 3.11.0-19-generic, x86_64: installed
# bbswitch, 0.7, 3.11.0-19-generic, x86_64: installed
# nvidia-304, 304.88, 3.11.0-19-generic, x86_64: installed
# vboxhost, 4.3.10, 3.11.0-19-generic, x86_64: installed
# webcamstudio, 0.65, 3.11.0-19-generic, x86_64: installed
