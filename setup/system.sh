#!/bin/bash

# systemd-hostnamed[3024]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please install nss-myhostname!
sudo apt-get install libnss-myhostname


# http://linux.hostileweb.com/?page_id=636
# ntpdate[]: Can't find host ntp.ubuntu.com: Name or service not known (-2)
# cat /etc/defaults/ntpdate 
# http://www.pool.ntp.org/zone/tw
# /etc/ntp.conf
sudo cp -f ../config/ntp.conf /etc

echo "Disable guest"
sudo /usr/lib/lightdm/lightdm-set-defaults -l false

# to disable overlay scrollbar: default scrollbar-mode
gsettings set com.canonical.desktop.interface scrollbar-mode normal


echo "install ccsm(compiz config setting manager)"
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra

echo "install package manager: synaptic"
sudo apt-get iccsnstall -y synaptic

echo "install Hardware Info"
sudo apt-get install -y hardinfo

echo "install gparted"
sudo apt-get install -y gparted


echo "install indicator cpu frequency"  
sudo apt-get install -y indicator-cpufreq



# sudo apt-get install -y lm-sensors hddtemp psensor

echo "Class menu Indicator"
sudo apt-get install -y classicmenu-indicator

# http://www.webupd8.org/2014/03/oracle-java-8-stable-released-install.html
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
# java -version

# For Mac Style
# http://www.noobslab.com/2013/10/mac-os-x-mbuntu-1310-pack-is-ready.html


# http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
sudo add-apt-repository -y ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install fontconfig-infinality

# cat /etc/profile.d/infinality-settings.sh |grep USE_STYLE=
# sudo sed -i 's/USE_STYLE="DEFAULT"/USE_STYLE="UBUNTU"/g' /etc/profile.d/infinality-settings.sh
#uninstall
# sudo apt-get purge fontconfig-infinality
# sudo apt-get install ppa-purge
# sudo ppa-purge ppa:no1wantdthisname/ppa

# Tweaking font rendering (optional):
# 1. Adjust fontconfig files
#    $ cd /etc/fonts/infinality/
#    $ sudo bash infctl.sh setstyle
#    $ # modify conf.d/*

# 2. Change infinality environment variables
#    $ sudo gedit /etc/profile.d/infinality-settings.sh
#    $ # Modify this to your liking.
#      # E.G. towards the bottom of the file, there's USE_STYLE.
#    $ # Logout/Login to take effect

# 3. Change hinting/antialiasing.
#    $ sudo apt-get install gnome-tweak-tool
#    $ gnome-tweak-tool
#    $ # Go to "Fonts"
#    $ # I prefer Full/Rgba
# http://askubuntu.com/questions/32624/ugly-fonts-in-netbeans-how-can-i-make-it-use-the-system-font


# echo "install laptop detect"
# sudo apt-get install -y laptop-detect

# http://www.unixmen.com/how-to-improve-laptop-battery-life-and-usage-in-linux-using-tlp/

# http://www.webupd8.org/2013/04/improve-power-usage-battery-life-in.html
# http://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html
# http://samwel.tk/laptop_mode/packages/debian
# http://linrunner.de/en/tlp/docs/tlp-configuration.html
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
# If you are installing on a recent Thinkpad that has an Ivy Bridge processor (X230, T430, T530, etc.), tp_smapi will not work. 
# Use thinkpad-acpi.
# tp-smapi-dkms
sudo apt-get install tlp tlp-rdw  acpi-call-tools

#~ google pinyin
sudo add-apt-repository -y ppa:fcitx-team/nightly

sudo apt-get update

sudo apt-get install fcitx-googlepinyin
#echo "uninstall ibus"
#sudo apt-get purge ibus ibus-gtk ibus-gtk3
#sudo apt-get purge ibus-pinyin ibus-table python-ibus
#killall ibus-daemon
#rm -rf ~/.config/ibus

#~ http://askubuntu.com/questions/360774/how-do-reactivate-ibus-after-upgrading-to-ubuntu-13-10
#~ http://www.pinyinjoe.com/linux/ubuntu-10-chinese-input-pinyin-chewing.htm
#~ https://bugs.launchpad.net/ubuntu/+source/ibus/+bug/1241309
#~ sudo gsettings-schema-convert --gconf --xml --schema-id 'desktop.ibus.engine.Chewing' --output /usr/share/glib-2.0/schemas/desktop.ibus.engine.Chewing.gschema.xml /usr/share/gconf/schemas/ibus-chewing.schemas
#~ sudo sed -i 's/\(.*key name=.*\)/\L\1/g' /usr/share/glib-2.0/schemas/desktop.ibus.engine.Chewing.gschema.xml
#~ sudo glib-compile-schemas /usr/share/glib-2.0/schemas



# Timeshift
#sudo apt-add-repository -y ppa:teejee2008/ppal


# sudo apt-get update


#~ http://ubuntuhandbook.org/index.php/2013/10/create-system-restore-point-in-ubuntu-via-timeshift/
#sudo apt-get install  -y timeshift
#~ rsync -ai --delete --numeric-ids --relative --delete-excluded --exclude-from=/mnt/timeshift/timeshift/snapshots/.sync/exclude.list /. /mnt/timeshift/timeshift/snapshots/.sync/localhost/

# ddresuce

sudo apt-get install gddrescue
# http://goo.gl/UjvM6Z
# http://www.kossboss.com/linux---how-to-clone-a-disk-with-ddrescue---dnu-ddrescue-also-known-as-gddrescue---the-better-ddrescue-tool
# ddrescue -v -n /dev/sdc /dev/sdd ddrlog.txt
# ddrescue -v -n /dev/sda1 /media/yaozai/FreeAgent\ GoFlex\ Drive/Backup/tools.img ddrlog.txt
# mount xxx.img /folder  -o loop
# https://help.ubuntu.com/community/DataRecovery
# http://members.iinet.net.au/~herman546/p21.html
# http://www.cyberciti.biz/tips/understanding-unixlinux-file-system-part-i.html
sudo apt-get install -y foremost
# http://www.youtube.com/watch?v=P767rumEIKw
# foremost -i /dev/xxx -a -v -o /recoverydir


# http://www.cgsecurity.org/wiki/TestDisk
sudo apt-get install testdisk

# http://www.r-tt.com/free_linux_recovery/Download.shtml


# Fonts
# http://sourceforge.net/projects/sourcecodepro.adobe/files/
# http://www.binarytides.com/gorgeous-looking-fonts-ubuntu-linux/
# cat /etc/fonts/conf.d/50-user.conf 
sudo cp -a ../fonts/* /usr/share/fonts
rsync -a /config/ubuntuDesktop/config/font.conf ~/.config/fontconfig/
sudo fc-cache -f -v

# Disable System Crash Reports:
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
sudo service apport stop



# ubuntu hiberate
# https://help.ubuntu.com/community/UsingUUID

# https://wiki.ubuntu.com/DebuggingKernelSuspendHibernateResume

# dmesg
# cat /proc/cmdline
# cat /etc/initramfs-tools/conf.d/resume

# http://ubuntuhandbook.org/index.php/2013/10/enable-hibernation-ubuntu-13-10/
# sudo blkid
# cat /etc/initramfs-tools/conf.d/resume
# cat /etc/fstab | grep swap
#edit swap in /etc/initramfs-tools/conf.d/resume
# sudo update-initramfs -u
# sudo pm-is-supported --hibernate && echo "hibernation is supported" || echo "your system doesn't support hibernation"

sudo cp ../config/com.ubuntu.enable-hibernate.pkla /var/lib/polkit-1/localauthority/50-local.d/

# sleep 60 && killall indicator-session-service

# http://www.prjorgensen.com/2012/11/29/ubuntu-12-04-hybrid-suspend-on-lenovo-t430s/
# http://www.webupd8.org/2012/11/how-to-use-hybrid-suspend-in-ubuntu.html
# sudo pm-is-supported --suspend-hybrid && echo "hybrid suspend is supported" || echo "your system doesn't support hybrid suspend"
sudo cp ../config/00-use-suspend-hybrid /etc/pm/config.d/

# sudo apt-add-repository --remove
# sudo apt-get --reinstall install  packages

