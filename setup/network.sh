#!/bin/bash

echo "install flash plugin"
sudo apt-get install -y flashplugin-installer

echo "install qbittorrent"
sudo apt-get install -y qbittorrent


echo "install putty"
sudo apt-get install -y putty

echo "install filezilla"
sudo apt-get install -y filezilla

echo "install fping"
sudo apt-get install -y fping

echo "Remote desktop"
sudo apt-get install -y Remmina


echo "install chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

echo "wireshark network capture"
sudo apt-get install -y wireshark
