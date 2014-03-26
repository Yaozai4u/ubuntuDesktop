#!/bin/bash

# Simple setup.sh for configuring my Ubuntu server
clear

echo "update & upgrade..."
sudo apt-get update
sudo apt-get upgrade

#Install git
echo "Install git"

sudo apt-get install -y git


#cd $HOME
#if [ -d ./ubuntuDesktop/ ]; then
#	echo "Found old ubuntuDesktop and backup."
#	mv ubuntuDesktop ubuntuDektop.old
#fi

#echo "Clone ubuntuDesktop from github"
#git clone https://github.com/Yaozai4u/ubuntuDesktop.git

#echo "setup .bash file."
#ln -sb ubuntuDesktop/dotfiles/.bash_profile .
#ln-sb ubuntuDesktop/dotfiles/.bashrc .
#ln -sb ubuntuDesktop/dotfiles/.bashrc_custom .

bash ./setup/media.sh
bash ./setup/tools.sh
bash ./setup/media.sh
bash ./setup/network.sh
bash ./setup/driver.sh
bash ./setup/windows.sh
bash ./setup/dev.sh
bash ./setup/performance.sh
bash ./setup/finance.sh
bash ./setup/living.sh
bash ./setup/mobile.sh
bash ./setup/monitoring.sh

# search command in which package
# dpkg -S $(which vboxmanage)

