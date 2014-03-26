#!/bin/bash

echo " Install Codecs"
# http://www.unixmen.com/top-things-installing-ubuntu-13-10/
sudo apt-get install -y gstreamer0.10-plugins-ugly gstreamer0.10-ffmpeg libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav

echo "install ubuntu restricted extras mp3 playback decoding."
sudo apt-get install -y ubuntu-restricted-extras

echo "webcam tools"
sudo apt-get install -y cheese 

echo "Image gimp"
# http://www.unixmen.com/top-things-installing-ubuntu-13-10/
sudo apt-get install -y gimp gimp-data gimp-plugin-registry gimp-data-extras

echo "gthumb"
sudo apt-get install -y gthumb

echo "Creating Panoramas"
#pandora

echo "Kazam Screen caster"
sudo apt-get install -y kazam

# digiKam find duplicate image
# http://www.digikam.org/node/333
sudo apt-get install -y digikam


#~ http://ubuntuhandbook.org/index.php/2013/10/install-sweethome-3d-ubuntu-1310/
sudo apt-get install -y sweethome3d

#~ http://ubuntuhandbook.org/index.php/2013/10/install-handbrake-in-ubuntu-13-10-saucy/
#~ wget https://launchpad.net/~stebbins/+archive/handbrake-releases/+files/handbrake-gtk_0.9.9ppa1~raring1_amd64.deb
#~ sudo dpkg -i handbrake-gtk_0.9.9ppa1~raring1_*.deb
#~ sudo apt-get -f install

# 安裝SWF檔播安裝SWF檔播放軟體「gnash」

# sudo apt-get install -y gnash
# sudo sed -i 's/x-shockwave-flash=totem.desktop/x-shockwave-flash=gnash.desktop/g' /etc/gnome/defaults.list



# http://www.noobslab.com/2013/03/curlew-multi-converter-for-ubuntu.html
# Curlew is multi-converter tool, it is based on ffmpeg. 
# sudo apt-get install curlew

#~ Other ppa
echo "Install Slow motion video Editor"
sudo add-apt-repository -y ppa:brousselle/slowmovideo
#~ record-animated-gif-screencasts-ubuntu
sudo add-apt-repository -y ppa:fossfreedom/byzanz
#~ Picapy is a Desktop App to manage your Picasa Web photos
# sudo add-apt-repository -y ppa:atareao/atareao

#~ WebcamStudio ppa
sudo add-apt-repository -y ppa:webcamstudio/webcamstudio-dailybuilds

# http://www.noobslab.com/2013/10/install-vlc-210-media-player-skins-in.html
# VLC (version in Ubuntu 13.10: 2.0.8, version in the PPA: 2.1.0):
sudo add-apt-repository -y ppa:videolan/stable-daily

# sudo add-apt-repository -y ppa:noobslab/apps
#~ http://ubuntuhandbook.org/index.php/page/24/

# http://ubuntuhandbook.org/index.php/2014/01/install-latest-ffmpeg-2-1-2-ubuntu-ppa/
#~ Install FFmpeg 2.0 via PPA:
sudo add-apt-repository -y ppa:samrog131/ppa


sudo add-apt-repository -y ppa:openshot.developers/daily


 # - See more at: http://www.unixmen.com/top-things-installing-ubuntu-13-10/#sthash.YOChjaK3.dpuf

# QGifer is a tool for extracting part of a video to an animated GIF file.
sudo add-apt-repository -y ppa:samrog131/ppa

# http://ubuntuhandbook.org/index.php/2014/03/install-avidemux-2-6-8-in-ubuntu-13-1012-1012-04/
# Avidemux, a video editor designed for simple cutting, filtering and encoding tasks has reached version 2.6.8.
sudo add-apt-repository -y ppa:rebuntu16/avidemux+unofficial
# http://ubuntuhandbook.org/index.php/2014/02/install-ffdiaporama-2-1-ubuntu/
sudo add-apt-repository -y ppa:ffdiaporamateam/stable


# This isn't a converter. It is an encoder. You can only rip bluray or dvd videos with this tool. 
# sudo add-apt-repository -y ppa:stebbins/handbrake-snapshots 
#- See more at: http://www.unixmen.com/how-to-encode-moviesvideos-using-handbrake/#sthash.pvVYfmaH.dpuf

sudo apt-get update


# sudo apt-get install -y handbreak-gtk

# http://www.openshot.org/
# OpenShot Video Editor is a free, open-source video editor
sudo apt-get install -y openshot openshot-doc


sudo apt-get install -y vlc
# http://crunchbang.org/forums/viewtopic.php?id=7292
# autoload the subtitles
sudo sed -i 's/Exec=\/usr\/bin\/vlc %U/Exec=\/usr\/bin\/vlc %F/g' /usr/share/applications/vlc.desktop

sudo apt-get install -y ffdiaporama ffdiaporama-openclipart ffdiaporama-texturemate

sudo apt-get install -y avidemux2.6-qt


sudo apt-get install -y qgifer

sudo apt-get install -y ffmpeg
# http://www.omgubuntu.co.uk/2010/08/split-large-files-easily-in-ubuntu-with-gnome-split/
# http://avidemux.sourceforge.net/
# http://www.avidemux.org/admWiki/doku.php?id=build:ubuntu_install
# http://askubuntu.com/questions/35605/splitting-an-mp4-file
# ffmpeg -acodec copy -vcodec copy -ss 0 -t 00:15:00 -i ORIGINALFILE.mp4 OUTFILE-1.mp4
# ffmpeg -acodec copy -vcodec copy -ss 00:15:00 -t 00:15:00 -i ORIGINALFILE.mp4 OUTFILE-2.mp4
# ffmpeg -acodec copy -vcodec copy -ss 00:30:00 -t 00:15:00 -i ORIGINALFILE.mp4 OUTFILE-3.mp4


sudo cp ../scripts/ffmpeg-split.py /usr/bin/
#~ http://ubuntuhandbook.org/index.php/2013/10/install-slowmovideo-slow-motion-video-ubuntu1310/
echo "Install Slow motion video Editor"
sudo apt-get install -y slowmovideo

#~ http://ubuntuhandbook.org/index.php/2013/09/record-animated-gif-screencasts-ubuntu/
sudo apt-get install -y byzanz
#~ byzanz-record --duration=15 --x=0 --y=0 --width=500 --height=350 output.gif

#~ Picapy is a Desktop App to manage your Picasa Web photos
#~ sudo apt-get install picapy

#~ WebcamStudio is a virtual webcam software that can be used with Skype or a flash website like UStream, to create a professional looking broadcast, including banners, animations, transit animations and icons, etc.
#~ http://ubuntuhandbook.org/index.php/2013/08/install-webcamstudio-ubuntu-ppa/
#~ https://launchpad.net/~webcamstudio/+archive/webcamstudio-dailybuilds
sudo apt-get install -y webcamstudio

# Still have problems
# echo "WinFF Video converter"
# sudo apt-get install -y winff libavcodec-extra-53

sudo add-apt-repository -y ppa:noobslab/apps

# http://www.noobslab.com/2014/01/format-junkie-converter-for-ubuntu.html
# It converts a variety of audio and video formats, and even can convert ISOs to other disc images (in this case the CSO disc image)
sudo apt-get install -y formatjunkie
# http://www.noobslab.com/2014/01/curlew-multi-converter-updated-to.html
# Curlew is multi-converter tool, it is based on ffmpeg. 
sudo apt-get install -y curlew



#~ Pinta is a Paint.NET-like image drawing and editing program 
#~ http://ubuntuhandbook.org/index.php/category/howtos/page/32/




# Adobe Air 
# http://steamcommunity.com/app/218410/discussions/0/666826069039698014/
wget http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin

sudo apt-get install libgtk2.0-0:i386 libpangox-1.0-0:i386 libpangoxft-1.0-0:i386 libidn11:i386 libglu1-mesa:i386 gstreamer0.10-pulseaudio:i386 gstreamer0.10-plugins-base:i386 gstreamer0.10-plugins-good:i386 gstreamer0.10-ffmpeg:i386 libnss3-1d:i386

# The following packages will be REMOVED:
#   gstreamer-tools gstreamer0.10-gnonlin libappframework-java
#   libcommons-lang3-java libmediainfo0 libnb-absolutelayout-java
#   libswingworker-java libtinyxml2-0.0.0 libzen0 mediainfo python-apport
#   python-problem-report webcamstudio-dkms

sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
sudo ln -s /usr/lib/x86_64-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
chmod +x AdobeAIRInstaller.bin
./AdobeAIRInstaller.bin
rm AdobeAIRInstaller.bin; sudo rm /usr/lib/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0.2.0

# http://www.aboutonlinetips.com/best-subtitle-editor-tools/
# http://sub.wordnerd.de/linux-subs.html
# http://www.sub-talk.net/topic/2751-subtitle-edit-for-ubuntu-troubleshoting-tips-and-tricks/
sudo apt-get install gaupol

# http://askubuntu.com/questions/9443/how-to-calibrate-the-monitor-on-an-ubuntu-system
# sudo apt-get install gnome-color-manager
# http://www.notebookcheck.net/uploads/tx_nbc2/Monitor_10.07.2012_1_02.icc



# https://bugs.launchpad.net/ubuntu/+source/gstreamermm/+bug/1175714
# run @ ubuntuDesktop/setup/manual
# http://home.gna.org/subtitleeditor/
sudo apt-get build-dep subtitleeditor
# sudo apt-get source --compile subtitleeditor
# sudo dpkg -i <package>.deb
# http://www.thegeekstuff.com/2010/06/install-remove-deb-package/

sudo apt-get install libvorbis-dev libtheora-dev libasound-dev libxv-dev libvisual-0.4-dev libcdparanoia-dev
sudo apt-get install mm-common 
cd gstreamermm-1.0.8/
./autogen.sh
make 
sudo make install




svn co svn://svn.gna.org/svn/subtitleeditor/trunk subtitleeditor
cd subtitleeditor
 # https://git.gnome.org/browse/gstreamermm/


# # configure: error: Package requirements (gtkmm-3.0 >= 3.0) were not met:
# # *** Error! you need to have : 
# # *** gstreamer-1.0
# # *** gstreamer-base-1.0
# # *** gstreamer-plugins-base-1.0
# checking for GSTREAMERMM... no
# configure: error: Package requirements (gstreamermm-1.0 >= 1.0) were not met
# sudo apt-get install gstreamer-1.0*
# http://linux.overshoot.tv/ticket/195


./autogen.sh

make
sudo make install

# Kdenlive is a free open-source video editor for GNU/Linux and FreeBSD, which supports DV, AVCHD and HDV editing. Kdenlive relies on several other open source projects, such as FFmpeg, the MLT video framework and Frei0r effects.
sudo apt-get install kdenlive


