#!/bin/bash


# wine
# sudo add-apt-repository -y ppa:ubuntu-wine/ppa
# http://www.noobslab.com/2013/10/wine-174-has-been-released-install-in.html
# https://help.ubuntu.com/community/PlayOnLinux
# Fixed for chinese display
# http://goo.gl/cPIl5e
# 另外，運行一些軟體時可能發現菜單的字體仍不是我們所期望的，此時可以修改~/.wine/drive_c/windows/win.ini，在文件中加入：[8]

# [Desktop]
# IconTitleFaceName=SimSun
# 把Windows中的simsun.ttc複製到~/.wine/drive_c/windows/Fonts/，可以解決宋體顯示問題。
# 由於 Wine 的字體渲染仍有缺陷，安裝相應的 Windows 原裝庫可以解決上步無法解決的某些罕見問題：
# winetricks gdiplus riched20 riched30
# For FUSE(File system in userspace) problem(NTFS)

# Tools > PlayOnLinux console
# POL_Config_Write NO_FSCHECK TRUE

# http://askubuntu.com/questions/86452/how-would-i-install-picasa-3-9?newreg=d6c394c380ea4015974b364874701894
sudo apt-get install wine winetricks && cd ~/ && wget http://dl.google.com/picasa/picasa39-setup.exe && wine ~/picasa39-setup.exe && env WINEARCH=win32 WINEPREFIX=~/.tmp winetricks ie8 && cp -r ~/.tmp/* ~/.wine/ 
rm ~/picasa39-setup.exe 

# http://www.noobslab.com/2014/01/playonlinux-422-available-for.html


# sudo add-apt-repository ppa:noobslab/apps
# sudo apt-get update
# sudo apt-get install playonlinux

wget -q "http://deb.playonlinux.com/public.gpg" -O - | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/playonlinux.list'
# echo "deb http://deb.playonlinux.com/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/playonlinux.list

# http://www.noobslab.com/2013/12/winehq-178-has-been-released-install-in.html

sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install -y wine1.7 winetricks


sudo apt-get install -y playonlinux

# http://www.playonlinux.com/en/topic-10534-Regarding_ptrace_scope_fatal_error.html
sudo sed -i 's/kernel.yama.ptrace_scope = 1/kernel.yama.ptrace_scope = 0/g' /etc/sysctl.d/10-ptrace.conf
# http://bugs.winehq.org/show_bug.cgi?id=29434

# http://ubuntuforums.org/showthread.php?t=765719
# wine cannot access internet
# You simply have to install "lib32nss-mdns" or uninstall "libnss-mdns
sudo apt-get install -y lib32nss-mdns 
# http://helpdeskgeek.com/linux-tips/easily-install-picasa-3-9-and-fix-login-issues-in-ubuntu-linux/
# http://askubuntu.com/questions/86452/how-would-i-install-picasa-3-9
# http://rayslinux.blogspot.tw/2013/06/installing-picasa-39-in-linux-mint-15.html


# I am running wine 1.5.0
# winetricks installed: ie7 dotnet20 wininet

# http://askubuntu.com/questions/86452/how-would-i-install-picasa-3-9/139842#139842
# https://bugs.launchpad.net/ubuntu/+source/wine/+bug/971221
#~ http://svaksha.com/post/2010/Extract-.msi-archive-format-on-Ubuntu
#~ Extract .msi archive format on Ubuntu

sudo apt-get install-y p7zip-full
sudo apt-get install -y mdbtools mdbtools-gmdb

# http://askubuntu.com/questions/147228/how-to-repair-a-corrupted-fat32-file-system
# http://explainshell.com/explain?cmd=sudo+dosfsck+-w+-r+-l+-a+-v+-t+%2Fdev%2Fsdc1
# sudo dosfsck -w -r -l -a -v -t /dev/sdc1
# you can find your pen drive by typing mount