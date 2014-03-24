#!/bin/bash


# http://www.tecmint.com/command-line-tools-to-monitor-linux-performance/

sudo apt-get -y install sysstate

sudo apt-get -y install nethogs


echo "powertop"
# https://wiki.archlinux.org/index.php/powertop
sudo apt-get install -y powertop

echo "install htop"
sudo apt-get install -y htop


# System Load Indicator
# http://www.webupd8.org/2011/05/network-memory-and-cpu-usage-indicator.html
# If you want the latest updates
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install -y indicator-multiload

# http://www.cyberciti.biz/networking/nload-linux-command-to-monitor-network-traffic-bandwidth-usage/
# sudo apt-get install nload