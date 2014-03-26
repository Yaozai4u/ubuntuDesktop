#!/bin/bash


#echo "install scite Text Editor"
#sudo apt-get install -y scite

# Meld is a visual diff and merge tool targeted at developers. Meld helps you compare files, directories, and version controlled projects. It provides two- and three-way comparison of both files and directories, and has support for many popular version control systems.
# sudo apt-get install -y meld


#Diffuse
#Description: Graphical tool for merging and comparing text files
#Website: http://diffuse.sourceforge.net/
sudo apt-get install -y diffuse


# Geany

# Description: Fast and lightweight IDE
# Website: http://www.geany.org/
sudo apt-get install geany


#Rabbitcvs
# http://askubuntu.com/questions/288328/rabbitvcs-nautilus-not-working-on-ubuntu-13-04
# https://bugs.launchpad.net/ubuntu/+source/nautilus-python/+bug/1170017
sudo apt-get install -y rabbitvcs-nautilus
# sudo apt-get install rabbitvcs-core rabbitvcs-nautilus  rabbitvcs-gedit rabbitvcs-cli
# rabbitvcs-thunar
sudo cp -f ../scripts/RabbitVCS.py /usr/share/nautilus-python/extensions/RabbitVCS.py
sudo ln -sf /usr/lib/x86_64-linux-gnu/libpython2.7.so.1.0 /usr/lib/
sudo ln -sf /usr/lib/x86_64-linux-gnu/libpython2.7.so.1 /usr/lib/
sudo ln -sf /usr/lib/x86_64-linux-gnu/libpython2.7.so.1 /usr/lib/x86_64-linux-gnu/libpython2.7.so
/usr/lib/x86_64-linux-gnu/libpython2.7.so /usr/lib/libpython2.7.so.1.0

sudo ln -sf /usr/lib/libpython2.7.so.1 /usr/lib/libpython2.7.so
sudo ldconfig -v |grep python

# echo "Nautilus Compare Extension"
sudo apt-get install nautilus-compare
# http://askubuntu.com/questions/287430/nautilus-compare-meld-integration-with-nautilus-and-other-nautilus-actions-ext
# sudo ln -s /usr/lib/libpython2.7.so.1 /usr/lib/libpython2.7.so
# ldd /usr/lib/nautilus/extensions-3.0/libnautilus-python.so  |grep python
# sudo ldconfig


# http://www.webupd8.org/2013/07/sublime-text-3-ubuntu-ppa-now-available.html

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# https://sublime.wbond.net/
# Package Control 新網站上線，找 Package 更方便了，每個 Package 還有漂亮的下載統計圖表！
# plugins
# Big5
# https://github.com/seanliang/Codecs33/tree/linux-x64
# https://github.com/seanliang/ConvertToUTF8



echo "Http regression testing and benchmarking utility"
sudo apt-get install siege



echo "Install Virtualbox 4.3"

# http://www.webupd8.org/2013/10/virtualbox-43-released-with-multi-touch.html
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get install virtualbox-4.3
#
wget http://dlc.sun.com.edgesuite.net/virtualbox/4.3.8/Oracle_VM_VirtualBox_Extension_Pack-4.3.8.vbox-extpack -O /tmp/Oracle_VM_VirtualBox_Extension_Pack.vbox-extpack
sudo VBoxManage extpack install --replace /tmp/Oracle_VM_VirtualBox_Extension_Pack.vbox-extpack
# https://forums.virtualbox.org/viewtopic.php?f=3&t=14976
# vboxmanage clonehd /Data/VHD/W7ScomDev.vhd ./W7SCOM.vdi --format vdi
# vboxmanage clonevdi uid-without-brackets out.vdi
cp ../scripts/vdimount /usr/bin/vdimount

# http://www.randallkent.com/virtual-box/change-uuid-of-virtualbox-vdi
# VBoxManage internalcommands sethduuid vdi
# add differencing vhd
# add parent vhd to virtualmachine
# remove parent vhd
# change uuid of differencing vhd
# vboxmanage internalcommands sethduuid w7scomCore.vhd 
# attach differencing vhd

# http://superuser.com/questions/187598/how-to-open-existing-vms-in-virtualbox
# http://www.eonlinegratis.com/2013/how-to-open-existing-vms-in-virtualbox/#sthash.6GQEUI20.dpbs
# find /path/to/vms -name "*.vbox" -exec VBoxManage registervm {} \;
