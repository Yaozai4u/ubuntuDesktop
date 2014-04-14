#!/bin/bash
# wine
# sudo add-apt-repository -y ppa:ubuntu-wine/ppa
# http://www.noobslab.com/2013/10/wine-174-has-been-released-install-in.html
# https://help.ubuntu.com/community/PlayOnLinux
# Fixed for chinese display
# http://goo.gl/cPIl5e
# For FUSE(File system in userspace) problem(NTFS)

# Tools > PlayOnLinux console
# POL_Config_Write NO_FSCHECK TRUE

wget -q "http://deb.playonlinux.com/public.gpg" -O - | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/playonlinux.list'
# echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/playonlinux.list

sudo apt-get update 


sudo apt-get install -y playonlinux



#~ http://svaksha.com/post/2010/Extract-.msi-archive-format-on-Ubuntu
#~ Extract .msi archive format on Ubuntu

sudo apt-get install-y p7zip-full
sudo apt-get install -y mdbtools mdbtools-gmdb

# http://askubuntu.com/questions/147228/how-to-repair-a-corrupted-fat32-file-system
# http://explainshell.com/explain?cmd=sudo+dosfsck+-w+-r+-l+-a+-v+-t+%2Fdev%2Fsdc1
# sudo dosfsck -w -r -l -a -v -t /dev/sdc1
# you can find your pen drive by typing mount