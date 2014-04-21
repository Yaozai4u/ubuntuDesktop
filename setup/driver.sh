#!/bin/bash


# http://mylinuxexplore.blogspot.tw/2014/04/ubuntu-1404-lts-trusty-tahr-review.html
# Installation of Bumblebee for hybrid graphics
 sudo apt-get install -y bumblebee bumblebee-nvidia primus  primus-libs-ia32 linux-headers-generic bbswitch-dkms mesa-utils nvidia-331-updates 
grep bumblebee /etc/group
# Then you need to edit /etc/bumblebee/bumblebee.conf and set:
# Driver=nvidia
sudo sed -i 's/Driver=$/Driver=nvidia/g' /etc/bumblebee/bumblebee.conf

# KernelDriver=nvidia-331-updates
sudo sed -i 's/KernelDriver=nvidia-current/KernelDriver=nvidia-331-updates/g' /etc/bumblebee/bumblebee.conf

# LibraryPath=/usr/lib/nvidia-331-updates:/usr/lib32/nvidia-331-updates

sudo sed -i 's/LibraryPath=\/usr\/lib\/nvidia-current:\/usr\/lib32\/nvidia-current/LibraryPath=\/usr\/lib\/nvidia-331-updates:\/usr\/lib32\/nvidia-331-updates/g' /etc/bumblebee/bumblebee.conf
# XorgModulePath=/usr/lib/nvidia-319-updates/xorg,/usr/lib/xorg/modules
sudo sed -i 's/XorgModulePath=\/usr\/lib\/nvidia-current/XorgModulePath=\/usr\/lib\/nvidia-331-updates/g' /etc/bumblebee/bumblebee.conf
egrep "nvidia" /etc/bumblebee/bumblebee.conf

#if update nvidia version
# sudo sed -i 's/nvidia-331-updates/nvidia-337/g' /etc/bumblebee/bumblebee.conf


# current install
# https://github.com/Bumblebee-Project/Bumblebee/issues/526
# find /lib/modules/$(uname -r) -name 'nvidia*.ko*'
 # modinfo nvidia_334 
 # sudo dkms status
# optirun --status
# cat /proc/acpi/bbswitch


# Selecting 01:00:0 as discrete nvidia card. If this is incorrect,
# edit the BusID line in /etc/bumblebee/xorg.conf.nvidia
# $ lspci | egrep 'VGA|3D'
# https://github.com/Bumblebee-Project/Bumblebee/wiki/Troubleshooting


# http://askubuntu.com/questions/61396/installing-nvidia-drivers/61433#61433
# https://wiki.ubuntu.com/Bumblebee#Installation
# Nvidia driver 331 on Ubuntu 13.10 with dual Nvidia GPUs
# http://askubuntu.com/questions/61396/installing-nvidia-drivers

# Nvidia Optimus tweaks
# http://www.webupd8.org/2014/04/10-things-to-do-after-installing-ubuntu.html


sudo add-apt-repository -y ppa:xorg-edgers/ppa 
sudo apt-get update

#not ready for trusty
# sudo add-apt-repository -y ppa:alessandrofac93/bumblebee-config-gtk-dev
# sudo apt-get update
# sudo apt-get install bumblebee-config-gui

# http://orkultus.wordpress.com/2013/04/20/how-to-nvidia-319-12-drivers-in-ubuntu-based-systems-with-bumblebee/

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
# OpenGL vendor string:   NVIDIA Corporation
# OpenGL renderer string: GeForce GT 620M/PCIe/SSE2
# OpenGL version string:  4.4.0 NVIDIA 331.38
# Not software rendered:    yes
# Not blacklisted:          yes
# GLX fbconfig:             no
# GLX texture from pixmap:  no
# GL npot or rect textures: yes
# GL vertex program:        yes
# GL fragment program:      yes
# GL vertex buffer object:  yes
# GL framebuffer object:    yes
# GL version is 1.4+:       yes
# Unity 3D supported:       no

# https://wiki.archlinux.org/index.php/bumblebee#.5BERROR.5DCannot_access_secondary_GPU
sudo lshw -C video
lspci -nnk | grep -iA2 vga
# http://www.webupd8.org/2013/08/using-nvidia-graphics-drivers-with.html
# dpkg -l |grep nvidia
# http://askubuntu.com/questions/171470/how-to-make-unity-3d-work-with-bumblebee-using-the-intel-chipset

# problem in this driver 
# Note that switching between CPUs requires a logout so you can't for instance run the desktop using the Intel graphics while running a game using the Nvidia graphics under the same session.
# 
# sudo apt-get purge bumblebee*
# sudo apt-get install nvidia-prime


# Prime Indicator (requires the nvidia-prime 

# 	package)
# sudo add-apt-repository ppa:nilarimogard/webupd8
# sudo apt-get update
# sudo apt-get install prime-indicator



# http://ubuntuforums.org/showthread.php?t=2181534
# http://askubuntu.com/questions/363152/brightness-issue-in-a-lenovo-thinkpad-edge-lr236w5
# cat /proc/cmdline
# lspci -k | grep -A3 VGA
# /etc/default/grub
# GRUB_CMDLINE_LINUX="acpi_osi=\"!Windows 2012\""
# sudo sed -i 's/GRUB_CMDLINE_LINUX="acpi_osi=\\"!Windows 2012\\""/GRUB_CMDLINE_LINUX=""/g' /etc/default/grub
# sudo update-grub



# http://askubuntu.com/questions/80914/how-reinstall-the-default-graphics-drivers
# sudo apt-get purge nvidia-*
# sudo apt-get install --reinstall xserver-xorg-video-intel libgl1-mesa-glx libgl1-mesa-dri xserver-xorg-core
# sudo dpkg-reconfigure xserver-xorg
# sudo update-alternatives --remove gl_conf /usr/lib/nvidia-current/ld.so.conf
# After that I did unity --reset
# To Reset Unity:
# If something went wrong you can reset Unity desktop with following commands.
sudo apt-get -y install dconf-tools
dconf reset -f /org/compiz/
setsid unity
unity --reset-icons


# no package for trusty
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

# http://www.webupd8.org/2014/04/prevent-your-laptop-from-overheating.html
# laptops actually get a bit hotter using this, but that they get better performance with Thermald + Intel P-State
sudo apt-get install -y linux-tools-common
# sudo apt-get install thermald
# sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_pstate=enable"/g' /etc/default/grub
# sudo update-grub

# restart
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_driver
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor


# Works much better than the default bluetooth manager, I had the same issue as you with the default manager.
# http://askubuntu.com/questions/131570/how-do-you-make-ubuntu-accept-files-sent-over-bluetooth
# File save @ ~/Public/

sudo apt-get install -y blueman
# http://askubuntu.com/questions/204716/bluetooth-how-to-browse-files-on-a-device
sudo apt-get install bluez-utils libopenobex1 bluez-tools 
# Details of the Bluetooth device is obtained with the command:
hciconfig --all 

# To find out which graphics controller is currently used

grep LoadModule /var/log/Xorg.0.log
# [    29.400] (II) LoadModule: "glx"
# [    29.592] (II) LoadModule: "intel"
# [    29.592] (II) LoadModule: "nvidia"
# [    29.592] (II) LoadModule: "nouveau"
# [    29.593] (II) LoadModule: "modesetting"
# [    29.593] (II) LoadModule: "fbdev"
# [    29.593] (II) LoadModule: "vesa"
# [    29.593] (II) LoadModule: "intel"
# [    29.594] (II) LoadModule: "nvidia"
# [    29.594] (II) LoadModule: "nouveau"
# [    29.594] (II) LoadModule: "modesetting"
# [    29.594] (II) LoadModule: "fbdev"
# [    29.594] (II) LoadModule: "vesa"
# [    29.595] (II) LoadModule: "fbdevhw"
# [    29.656] (II) LoadModule: "fb"
# [    29.657] (II) LoadModule: "shadow"
# [    29.864] (II) LoadModule: "evdev"
# [    29.896] (II) LoadModule: "synaptics
# grep Driver /etc/X11/xorg.conf
sudo lshw -C video
  # *-display               
  #      description: VGA compatible controller
  #      product: 3rd Gen Core processor Graphics Controller
  #      vendor: Intel Corporation
  #      physical id: 2
  #      bus info: pci@0000:00:02.0
  #      version: 09
  #      width: 64 bits
  #      clock: 33MHz
  #      capabilities: msi pm vga_controller bus_master cap_list rom
  #      configuration: driver=i915 latency=0
  #      resources: irq:46 memory:c3400000-c37fffff memory:d0000000-dfffffff ioport:5000(size=64)


# for Intel GPUs (for Intel HD Graphics as well as G45 and later):
sudo apt-get install i965-va-driver libva-intel-vaapi-driver vainfo libva-driver-intel-g45-h264

