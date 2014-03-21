#!/bin/bash

# systemd-hostnamed[3024]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please install nss-myhostname!

sudo apt-get install libnss-myhostname

echo "Disable guest"
sudo /usr/lib/lightdm/lightdm-set-defaults -l false


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

echo "install Hardware Temp Monitor"
# http://askubuntu.com/questions/30334/what-application-indicators-are-available?page=3&tab=votes#tab-top
# https://help.ubuntu.com/community/SensorInstallHowto
sudo apt-get install lm-sensors hddtemp
sudo sensors-detect

sudo service module-init-tools start
# Psensor installation:
sudo add-apt-repository ppa:jfi/ppa
sudo apt-get update
sudo apt-get install psensor

# sudo apt-get install -y lm-sensors hddtemp psensor

echo "Class menu Indicator"
sudo apt-get install -y classicmenu-indicator

# http://www.webupd8.org/2014/03/oracle-java-8-stable-released-install.html
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
# java -version

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


# echo "install laptop detect"
# sudo apt-get install -y laptop-detect


# http://www.webupd8.org/2013/04/improve-power-usage-battery-life-in.html
# http://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html
# http://samwel.tk/laptop_mode/packages/debian
# http://linrunner.de/en/tlp/docs/tlp-configuration.html
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw tp-smapi-dkms acpi-call-tools

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

