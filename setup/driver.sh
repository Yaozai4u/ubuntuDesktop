#!/bin/bash

echo "install Nividia Driver bumblebee"
sudo apt-get install -y bumblebee linux-headers-generic
# http://askubuntu.com/questions/61396/installing-nvidia-drivers/61433#61433
# https://wiki.ubuntu.com/Bumblebee#Installation
# Nvidia driver 331 on Ubuntu 13.10 with dual Nvidia GPUs
# http://askubuntu.com/questions/61396/installing-nvidia-drivers



sudo add-apt-repository -y ppa:xorg-edgers/ppa 
sudo apt-get update
# sudo apt-get remove bumblebee-nvidia nvidia-current nvidia-settings
sudo apt-get install -y bumblebee-nvidia nvidia-337 nvidia-settings-319 
# Selecting 01:00:0 as discrete nvidia card. If this is incorrect,
# edit the BusID line in /etc/bumblebee/xorg.conf.nvidia
# $ lspci | egrep 'VGA|3D'
# https://github.com/Bumblebee-Project/Bumblebee/wiki/Troubleshooting
# lspci -vnn | grep '\''[030[02]\]'
# If it outputs two lines, then you're likely having an Optimus laptop.
# 00:02.0 VGA compatible controller: Intel Corporation 3rd Gen Core processor Graphics Controller (rev 09)
# 01:00.0 VGA compatible controller: NVIDIA Corporation GF108M [GeForce GT 620M] (rev ff)

# http://orkultus.wordpress.com/2013/04/20/how-to-nvidia-319-12-drivers-in-ubuntu-based-systems-with-bumblebee/
# current install
# https://github.com/Bumblebee-Project/Bumblebee/issues/526
# find /lib/modules/$(uname -r) -name 'nvidia*.ko*'
 # modinfo nvidia_334 
 # sudo dkms status
# optirun --status
# cat /proc/acpi/bbswitch
grep nouveau /etc/modprobe.d/*
# /etc/modprobe.d/bumblebee.conf:# do not automatically load nouveau as it may prevent nvidia from loading
# /etc/modprobe.d/bumblebee.conf:blacklist nouveau
# /etc/modprobe.d/nvidia-334_hybrid.conf:blacklist nouveau
# /etc/modprobe.d/nvidia-334_hybrid.conf:blacklist lbm-nouveau
# /etc/modprobe.d/nvidia-334_hybrid.conf:alias nouveau off
# /etc/modprobe.d/nvidia-334_hybrid.conf:alias lbm-nouveau off
# Then you need to edit /etc/bumblebee/bumblebee.conf and set:
# Driver=nvidia
sudo sed -i 's/Driver=$/Driver=nvidia/g' /etc/bumblebee/bumblebee.conf
# KernelDriver=nvidia-319-updates
sudo sed -i 's/KernelDriver=nvidia-current/KernelDriver=nvidia-337/g' /etc/bumblebee/bumblebee.conf

# LibraryPath=/usr/lib/nvidia-319-updates:/usr/lib32/nvidia-319-updates

sudo sed -i 's/LibraryPath=\/usr\/lib\/nvidia-current:\/usr\/lib32\/nvidia-current/LibraryPath=\/usr\/lib\/nvidia-337:\/usr\/lib32\/nvidia-337/g' /etc/bumblebee/bumblebee.conf
# XorgModulePath=/usr/lib/nvidia-319-updates/xorg,/usr/lib/xorg/modules
sudo sed -i 's/XorgModulePath=\/usr\/lib\/nvidia-current/XorgModulePath=\/usr\/lib\/nvidia-337/g' /etc/bumblebee/bumblebee.conf


# sudo sed -i 's/nvidia-334/nvidia-337/g' /etc/bumblebee/bumblebee.conf
# https://bbs.archlinux.org/viewtopic.php?id=166057
ls /usr/lib/xorg/modules/drivers
# http://ubuntuforums.org/showthread.php?t=2143882
# [drm] KMS not enabled

sudo apt-get install -y mesa-utils
# http://www.upubuntu.com/2013/11/how-to-check-3d-acceleration-fps-in.html
glxinfo -i | grep render
glxinfo | grep direct
glxinfo | grep OpenGL
lsmod | grep nouveau

# optirun glxspheres
# http://ubuntuforums.org/showthread.php?t=1971128
# apt-get install virtualgl-libs libgl1-mesa-glx

# https://bbs.archlinux.org/viewtopic.php?id=141729
optirun -vv glxgears
# http://www.webupd8.org/2012/11/primus-better-performance-and-less.html
primusrun glxgears
# Performance does not exceed 60 fps, I was getting more with optirun/VirtualGL.
# A: This is the effect of vblank synchronisation. For benchmarking, you can use vblank_mode=0 primusrun ..., but in practice this will probably only waste power, as your LCD panel does not display more than 60 frames per second anyway.

vblank_mode=0 primusrun glxgears

xvinfo
optirun /usr/lib/nux/unity_support_test -p
# OpenGL vendor string:   NVIDIA Corporation OpenGL renderer string: GeForce
# GT 620M/PCIe/SSE2 OpenGL version string:  4.4.0 NVIDIA 334.21 Not software
# rendered:    yes Not blacklisted:          yes GLX fbconfig:             no
# GLX texture from pixmap:  no GL npot or rect textures: yes GL vertex
# program:        yes GL fragment program:      yes GL vertex buffer object:
# yes GL framebuffer object:    yes GL version is 1.4+:       yes Unity 3D
# supported:       no

# https://wiki.archlinux.org/index.php/bumblebee#.5BERROR.5DCannot_access_secondary_GPU
sudo lshw -C video
lspci -nnk | grep -iA2 vga
# http://www.webupd8.org/2013/08/using-nvidia-graphics-drivers-with.html
# dpkg -l |grep nvidia

# http://www.webupd8.org/2013/04/set-up-bumblebee-with-bumblebee.html
# sudo add-apt-repository ppa:alessandrofac93/bumblebee-config-gtk-dev
# sudo apt-get update
# sudo apt-get install bumblebee-config-gtk

# http://askubuntu.com/questions/10082/which-is-the-best-way-to-install-new-hplip-versions
# sudo apt-get install hplip
# sudo hp-setup -i

#echo "install fingerprint driver."
#sudo add-apt-repository ppa:fingerprint/fingerprint-gui
#sudo apt-get update
#sudo apt-get install -y libbsapi policykit-1-fingerprint-gui fingerprint-gui
 
# in syslog error when change brightness: ACPI Exception: AE_AML_PACKAGE_LIMIT,
# https://bbs.archlinux.org/viewtopic.php?id=159925
# acpi_listen
# https://bbs.archlinux.org/viewtopic.php?id=158775
# acpi_osi="Windows 2009" (which corresponds to Windows 7) or even acpi_osi=linux.
# https://bbs.archlinux.org/viewtopic.php?id=173530
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="acpi_osi=\\"!Windows 2012\\""/g' /etc/default/grub
grep "GRUB_CMDLINE" /etc/default/grub 
sudo update-grub

# http://ubuntuforums.org/showthread.php?t=2181534
# http://askubuntu.com/questions/363152/brightness-issue-in-a-lenovo-thinkpad-edge-lr236w5
# cat /proc/cmdline
# lspci -k | grep -A3 VGA
# /etc/default/grub
# GRUB_CMDLINE_LINUX="acpi_osi=\"!Windows 2012\""
# sudo sed -i 's/GRUB_CMDLINE_LINUX="acpi_osi=\\"!Windows 2012\\""/GRUB_CMDLINE_LINUX=""/g' /etc/default/grub
# sudo update-grub


# https://wiki.archlinux.org/index.php/bumblebee#.5BERROR.5DCannot_access_secondary_GPU
# sudo cp ../config/20-intel.conf /usr/share/X11/xorg.conf.d/20-intel.conf
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