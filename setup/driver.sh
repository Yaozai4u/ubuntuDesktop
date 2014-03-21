#!/bin/bash

echo "install Nividia Driver bumblebee"
sudo apt-get install -y bumblebee bumblebee-nvidia linux-headers-generic


#echo "install fingerprint driver."
#sudo add-apt-repository ppa:fingerprint/fingerprint-gui
#sudo apt-get update
#sudo apt-get install -y libbsapi policykit-1-fingerprint-gui fingerprint-gui
 

# http://ubuntuforums.org/showthread.php?t=2181534
# http://askubuntu.com/questions/363152/brightness-issue-in-a-lenovo-thinkpad-edge-lr236w5
# cat /proc/cmdline
# lspci -k | grep -A3 VGA
# /etc/default/grub
# GRUB_CMDLINE_LINUX="acpi_osi=\"!Windows 2012\""
# sudo sed -i 's/GRUB_CMDLINE_LINUX="acpi_osi=\\"!Windows 2012\\""/GRUB_CMDLINE_LINUX=""/g' /etc/default/grub
# sudo update-grub

sudo cp ../config/20-intel.conf /usr/share/X11/xorg.conf.d/20-intel.conf
# http://askubuntu.com/questions/57236/unable-to-change-brightness-in-a-lenovo-laptop
sudo cp ../scripts/brightness /usr/local/bin
# cat /sys/class/backlight/intel_backlight/max_brightness
# sudo sed  -i "/exit/ { N; s/exit\n/\/usr\/local\/bin\/brightness restore\n&/ }" /etc/rc.local

# /etc/rc.local
# /usr/local/bin/brightness restore
# https://sites.google.com/site/easylinuxtipsproject/ssd#TOC-Limit-swap-wear-and-tame-the-inode-cache
# fstrim -v /cache/



# http://www.webupd8.org/2012/06/calise-sets-screen-backlight-based-on.html


# http://askubuntu.com/questions/209778/auto-completion-does-not-work-for-sudo-apt-get-install
# enable bash completion in interactive shells
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi