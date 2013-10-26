#!/bin/bash

# http://wiki.xfce.org/recommendedapps

echo "install ccsm(compiz config setting manager)"
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra

echo "install package manager: synaptic"
sudo apt-get install -y synaptic

echo "install Hardware Info"
sudo apt-get install -y hardinfo

echo "install gparted"
sudo apt-get install -y gparted

echo "Disk Manager"
sudo apt-get install -y k4dirstat

echo "gksu"
sudo apt-get install -y gksu

echo "Unity Tweak tool"
sudo apt-get install -y unity-tweak-tool

echo "Gnome Tweak Tool"
sudo apt-get install -y gnome-tweak-tool

echo "install ubuntu tweak"
sudo apt-get install ubuntu-tweak

echo "Install Compression/Decompression tools"
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
#~ http://www.thegeekstuff.com/2010/04/view-and-extract-packages/

echo "install scite Text Editor"
sudo apt-get install -y scite

echo "install micom for comport"
sudo apt-get install -y minicom

echo "GUI firewall"
sudo apt-get install -y gufw

echo "install keepass2"
sudo apt-get install -y keepass2

echo "install indicator cpu frequency"  
sudo apt-get install -y indicator-cpufreq

echo "install Hardware Temp Monitor"
sudo apt-get install -y lm-sensors hddtemp psensor

echo "Class menu Indicator"
sudo apt-get install -y classicmenu-indicator

echo "install htop"
sudo apt-get install -y htop

echo "install laptop detect"
sudo apt-get install -y laptop-detect

echo "nautilus open terminal"
sudo apt-get install -y nautilus-open-terminal

echo "powertop"
sudo apt-get install -y powertop

echo "install Terminator"
sudo apt-get install -y Terminator
# Ctrl-Shift-E: will split the view vertically.
# Ctrl-Shift-O: will split the view horizontally.
# Ctrl-Shift-P: will focus be active on the previous view.
# Ctrl-Shift-N: will focus be active on the next view.
# Ctrl-Shift-W: will close the view where the focus is on.
# Ctrl-Shift-Q: will exit terminator.
# F11: will make terminator go fullscreen.



#http://askubuntu.com/questions/76712/setting-nautilus-open-terminal-to-launch-terminator-rather-than-gnome-terminal

echo "change open terminal to terminator"
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"


echo "Debian Package Search"

echo "Nautilus Compare Extension"
# http://askubuntu.com/questions/287430/nautilus-compare-meld-integration-with-nautilus-and-other-nautilus-actions-ext
# sudo ln -s /usr/lib/libphython2.7.so.1 /usr/lib/libpython2.7.so
# sudo ldconfig

echo "add other ppa"

sudo add-apt-repository -y ppa:shutter/ppa
#~ hotshots
#~ sudo add-apt-repository -y ppa:dhor/myway
#~ sougou pinyin
sudo add-apt-repository -y ppa:fcitx-team/nightly
#~ wine
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
#~ ppa manager
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
#~ Timeshift
sudo apt-add-repository -y ppa:teejee2008/ppa

sudo apt-get update

echo  "Install Hotshots screenshot & annotation app"
echo "install shutter."
sudo apt-get install -y shutter
#~ http://ubuntuhandbook.org/index.php/2013/10/install-hotshots-screenshot-annotation-ubuntu-1310/
#~ sudo apt-get install -y hotshots

#~ echo "install sougou pinyin"
#~ https://fcitx-im.org/wiki/Install_(Ubuntu)
#~ http://shellblog.sinaapp.com/?p=644
#~ Problem with 13.10
#sudo apt-get install -y fcitx-sogoupinyin

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


#~ echo "install WineHQ"
#~ sudo apt-get -y install wine1.6 winetricks

echo "install y-ppa-manager"
sudo apt-get install -y y-ppa-manager


#~ http://ubuntuhandbook.org/index.php/2013/10/create-system-restore-point-in-ubuntu-via-timeshift/
sudo apt-get install  -y timeshift

#~ rsync -ai --delete --numeric-ids --relative --delete-excluded --exclude-from=/mnt/timeshift/timeshift/snapshots/.sync/exclude.list /. /mnt/timeshift/timeshift/snapshots/.sync/localhost/

#~ http://ubuntuhandbook.org/index.php/2013/08/install-double-commander-in-ubuntu-linux-mint-elementary-os/

#~ sudo apt-get install doublecmd-qt

#~ http://askubuntu.com/questions/222587/how-to-check-apt-get-upgrade-status-after-losing-ssh-connection
#screen

