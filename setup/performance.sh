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

