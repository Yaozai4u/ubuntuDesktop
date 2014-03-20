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
sudo apt-get install -y lm-sensors hddtemp psensor

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



