#!/bin/bash

# http://jwigley.com/2012/04/27/making-ubuntu-unity-look-beautiful-by-enabling-transparency/


# systemd-hostnamed[3024]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please install nss-myhostname!
sudo apt-get install libnss-myhostname

#use custom time-format
gsettings set com.canonical.indicator.datetime time-format custom && gsettings set com.canonical.indicator.datetime custom-time-format "%b%e %a,%k:%M"

# http://www.noobslab.com/2014/04/thingstweaks-to-do-after-install-of.html?m=1
 # Disable online searches from dash:
# https://fixubuntu.com/fixubuntu.sh
../scripts/fixubuntu.sh


https://developers.google.com/speed/public-dns/docs/using
# http://askubuntu.com/questions/196022/why-nslookup-result-always-comes-from-server-127-0-0-1
grep dns /etc/NetworkManager/NetworkManager.conf
sudo sed -i 's/^dns=dnsmasq/#dns=dnsmasq/g' /etc/NetworkManager/NetworkManager.conf
grep dns /etc/NetworkManager/NetworkManager.conf
sudo restart network-manager

# http://linux.hostileweb.com/?page_id=636
# ntpdate[]: Can't find host ntp.ubuntu.com: Name or service not known (-2)
# cat /etc/defaults/ntpdate 
# http://www.pool.ntp.org/zone/tw
# /etc/ntp.conf
sudo cp -f ../config/ntp.conf /etc

echo "Disable guest"
sudo /usr/lib/lightdm/lightdm-set-defaults -l false

# Enable the key combination Ctrl+Alt+Backspace
# https://sites.google.com/site/easylinuxtipsproject/first#TOC-Enable-the-key-combination-Ctrl-Alt-Backspace
# Ctrl+Alt+Backspace should reboot only the desktop and throw you back into the login window.
sudo sed -i 's/XKBOPTIONS=""/XKBOPTIONS="terminate:ctrl_alt_bksp"/g' /etc/default/keyboard

# to disable overlay scrollbar: default scrollbar-mode
gsettings set com.canonical.desktop.interface scrollbar-mode normal

 # Enable recursive search for Nautilus:
 gsettings set org.gnome.nautilus.preferences enable-interactive-search false





# http://askubuntu.com/questions/184738/is-it-possible-to-make-all-currently-open-windows-minimize-whenever-i-open-a-ne
echo "install ccsm(compiz config setting manager)"
# dconf reset -f /org/compiz/
# setsid compiz --replace
# http://www.webupd8.org/2012/10/how-to-reset-compiz-and-unity-in-ubuntu.html
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra compiz-gnome dconf-tools

echo "install package manager: synaptic"
sudo apt-get install -y synaptic

# http://www.webupd8.org/2013/06/synapse-indicator-new-search.html
# sudo add-apt-repository ppa:elementary-os/unstable-upstream
# sudo apt-get update
sudo apt-get install indicator-synapse


echo "install Hardware Info"
sudo apt-get install -y hardinfo

echo "install gparted"
sudo apt-get install -y gparted


echo "install indicator cpu frequency"  
sudo apt-get install -y indicator-cpufreq



# sudo apt-get install -y lm-sensors hddtemp psensor

echo "Class menu Indicator"
sudo apt-get install -y classicmenu-indicator

# http://www.webupd8.org/2014/04/oracle-java-installer-conflicting-with.html
# http://www.webupd8.org/2014/03/oracle-java-8-stable-released-install.html
# http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
# java -version
 
# For Mac Style
# http://www.noobslab.com/2013/10/mac-os-x-mbuntu-1310-pack-is-ready.html

 # Unity global menu & HUD support for Java swing applications
 # By default, Java Swing applications (IntelliJ IDEA, Android Studio, jDownloader and others) don't support Unity global menu (AppMenu) / HUD. You can get these features though, by using JAyatana,
sudo add-apt-repository -y ppa:danjaredg/jayatana
sudo apt-get update
sudo apt-get install -y jayatana



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

sudo apt-get install fcitx-googlepinyin ibus-googlepinyin

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


# http://www.teejeetech.in/p/timeshift.html
# Timeshift
# TimeShift is similar to applications like rsnapshot, BackInTime and TimeVault but with different goals.
# http://www.rsnapshot.org/
# http://backintime.le-web.org/
# https://wiki.ubuntu.com/TimeVault
sudo apt-add-repository -y ppa:teejee2008/ppal


# sudo apt-get update


#~ http://ubuntuhandbook.org/index.php/2013/10/create-system-restore-point-in-ubuntu-via-timeshift/
sudo apt-get install  -y timeshift
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
# http://www.enqlu.com/2014/04/how-to-install-google-web-fonts-in.html
# http://www.awwwards.com/20-best-web-fonts-from-google-web-fonts-and-font-face.html
sudo add-apt-repository -y ppa:andrewsomething/typecatcher
sudo apt-get update
sudo apt-get install -y typecatcher


# http://sourceforge.net/projects/sourcecodepro.adobe/files/
# http://www.binarytides.com/gorgeous-looking-fonts-ubuntu-linux/
# cat /etc/fonts/conf.d/50-user.conf 
sudo cp -a ../fonts/* /usr/share/fonts
rsync -a /config/ubuntuDesktop/config/font.conf ~/.config/fontconfig/
sudo fc-cache -f -v

# Disable System Crash Reports:
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
sudo service apport stop

# Lubuntu autostart
# http://askubuntu.com/questions/81383/how-can-i-add-new-autostart-programs-in-lubuntu

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

# http://www.techques.com/question/24-21586/How-can-I-configure-dbus-to-allow-ssh-user-to-suspend-server

# /usr/share/polkit-1/actions/org.freedesktop.upower.policy
# <allow_inactive>no</allow_inactive>
       # <allow_active>yes</allow_active>
# +      <allow_any>yes</allow_any>

# sleep 60 && killall indicator-session-service

# http://www.prjorgensen.com/2012/11/29/ubuntu-12-04-hybrid-suspend-on-lenovo-t430s/
# http://www.webupd8.org/2012/11/how-to-use-hybrid-suspend-in-ubuntu.html
# sudo pm-is-supported --suspend-hybrid && echo "hybrid suspend is supported" || echo "your system doesn't support hybrid suspend"
sudo cp ../config/00-use-suspend-hybrid /etc/pm/config.d/

# sudo apt-add-repository --remove
# sudo apt-get --reinstall install  packages
# dpkg --get-selections
# dpkg -L packagename

# http://serverfault.com/questions/478558/how-to-delete-fuse-hidden-files
# Execute lsof dir-name/.fuse_hidden000bd8c100000185 to find out what processes are holding the file handle open.


# http://www.unixmen.com/upgrade-ubuntu-13-10-saucy-salamander-ubuntu-14-04-trusty-tahr/
sudo apt-get update && sudo apt-get dist-upgrade
sudo update-manager -d
# http://askubuntu.com/questions/421869/do-release-upgrade-fails-with-could-not-calculate-the-upgrade
grep Broken /var/log/dist-upgrade/apt.log
sudo dpkg --configure -a
sudo apt-get install -f
# If your upgrade was interrupted or a major issue occured, you can try this command :
# sudo dpkg-reconfigure -phigh -a
# Broken xserver-xorg-video-nouveau:amd64 Depends on xorg-video-abi-14 [ amd64 ] < none > ( none )
# Broken xserver-xorg-video-all:amd64 Depends on xserver-xorg-video-ati [ amd64 ] < 1:7.3.99+git20140317.bdc41204-0ubuntu0sarvatt~saucy > ( x11 )
# Broken xserver-xorg-video-all:amd64 Depends on xserver-xorg-video-intel [ amd64 ] < 2:2.99.911+git20140331.5c0623b5-0ubuntu0ricotz~saucy > ( x11 )
# Broken xserver-xorg-video-all:amd64 Depends on xserver-xorg-video-nouveau [ amd64 ] < 1:1.0.10+git20140220.480f0998-0ubuntu0sarvatt~saucy > ( x11 )
# remove xserver-xorg-video-nouveau by using synaptic 


# http://askubuntu.com/questions/131601/how-to-overcome-signature-verification-error

# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4C1CBC1B69B0E2F4
# will list problem gpg as below:
# gpg: keyblock resource `/etc/apt/trusted.gpg.d/webcamstudio-webcamstudio-dailybuilds.gpg': resource limit
# gpg: keyblock resource `/etc/apt/trusted.gpg.d/webupd8team-java.gpg': resource limit

  # delete problem gpg and use yppa fixed it 
# http://www.webupd8.org/2012/12/how-to-list-packages-from-ppa.html
# You can also do this using a command like the one below, but this will only list the package names, without any additional info (no version, description, etc.):
# awk '$1 == "Package:" { if (a[$2]++ == 0) print $2; }' /var/lib/apt/lists/*nilarimogard*webupd8*Packages
# This works for regular repositories too, e.g. to see all the packages available in the proposed repository:
# awk '$1 == "Package:" { if (a[$2]++ == 0) print $2; }' /var/lib/apt/lists/*proposed*Packages
# awk '$1 == "Package:" { if (a[$2]++ == 0) print $2; }' /var/lib/apt/lists/*security*multiverse*Packages

# http://askubuntu.com/questions/140246/how-do-i-resolve-unmet-dependencies
# apt-get clean clears out the local repository of retrieved package files (the .deb files). It removes everything but the lock file from /var/cache/apt/archives/ and /var/cache/apt/archives/partial/. 
# apt-get autoclean clears out the local repository of retrieved package files, but unlike apt-get clean, it only removes package files that can no longer be downloaded, and are largely useless.
sudo apt-get -f install
# The -f here stands for 「fix broken」. Apt will attempt to correct broken dependencies. If you manually installed a package that had unmet dependencies, apt-get will install those dependencies, if possible, otherwise it may simply remove the package that you installed in order to resolve the problem.
sudo dpkg --configure -a
sudo apt-get -f install

sudo apt-get -u dist-upgrade
# If it shows any held packages, it is best to eliminate them. Packages are held because of dependency conflicts that apt cannot resolve. Try this command to find and repair the conflicts:

sudo apt-get -o Debug::pkgProblemResolver=yes dist-upgrade
