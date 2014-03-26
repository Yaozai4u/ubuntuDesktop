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

sudo apt-get install -y playonlinux



#~ http://svaksha.com/post/2010/Extract-.msi-archive-format-on-Ubuntu
#~ Extract .msi archive format on Ubuntu

sudo apt-get install-y p7zip-full
sudo apt-get install -y mdbtools mdbtools-gmdb