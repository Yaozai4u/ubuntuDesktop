#!/bin/bash

echo " Install Codecs"
sudo apt-get install -y gstreamer0.10-plugins-ugly gstreamer0.10-ffmpeg libxine1-ffmpeg gxine mencoder libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321

echo "install ubuntu restricted extras mp3 playback decoding."
sudo apt-get install -y ubuntu-restricted-extras

echo "webcam tools"
sudo apt-get install -y cheese 

echo "Image gimp"
sudo apt-get install -y gimp

echo "Creating Panoramas"
#pandora

echo "Kazam Screen caster"
sudo apt-get install -y kazam

#~ http://ubuntuhandbook.org/index.php/2013/10/install-sweethome-3d-ubuntu-1310/
sudo apt-get install -y sweethome3d

#~ http://ubuntuhandbook.org/index.php/page/24/
#~ Install FFmpeg 2.0 via PPA:
sudo add-apt-repository -y ppa:samrog131/ppa

# sudo apt-add-repository --remove ppa:samrog131/ppa
# sudo apt-get update



#~ sudo apt-get purge libavcodec53       
#~ Reading package lists... Done
#~ Building dependency tree       
#~ Reading state information... Done
#~ The following packages were automatically installed and are no longer required:
  #~ digikam-data ffmpegthumbs libgps20 libkface-data libkgeomap-data libkgeomap1
  #~ libmarblewidget16 libopencv-calib3d2.4 libopencv-core2.4 libopencv-features2d2.4
  #~ libopencv-flann2.4 libopencv-imgproc2.4 libopencv-ml2.4 libopencv-video2.4 libpgf6
  #~ libqextserialport1 libqtlocation1 libquazip0 libshp1 libsqlite0 libtbb2 marble-plugins
#~ Use 'apt-get autoremove' to remove them.
#~ The following extra packages will be installed:
  #~ libavcodec-extra-53 libavformat-extra-53
#~ The following packages will be REMOVED:
  #~ digikam* libavcodec53* libavformat53* libkface1* libkface2* libopencv-contrib2.4*
  #~ libopencv-highgui2.4* libopencv-legacy2.4* libopencv-objdetect2.4*
#~ The following NEW packages will be installed:
  #~ libavcodec-extra-53 libavformat-extra-53
#~ 0 upgraded, 2 newly installed, 9 to remove and 0 not upgraded.

#~ http://ubuntuhandbook.org/index.php/2013/10/install-handbrake-in-ubuntu-13-10-saucy/
#~ wget https://launchpad.net/~stebbins/+archive/handbrake-releases/+files/handbrake-gtk_0.9.9ppa1~raring1_amd64.deb
#~ sudo dpkg -i handbrake-gtk_0.9.9ppa1~raring1_*.deb
#~ sudo apt-get -f install

#~ Other ppa
echo "Install Slow motion video Editor"
sudo add-apt-repository -y ppa:brousselle/slowmovideo
#~ record-animated-gif-screencasts-ubuntu
sudo add-apt-repository -y ppa:fossfreedom/byzanz
#~ Picapy is a Desktop App to manage your Picasa Web photos
# sudo add-apt-repository -y ppa:atareao/atareao

#~ WebcamStudio ppa
sudo add-apt-repository -y ppa:webcamstudio/webcamstudio-dailybuilds


sudo apt-get update

sudo apt-get install -y ffmpeg


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
echo "WinFF Video converter"
sudo apt-get install -y winff libavcodec-extra-53

#~ Pinta is a Paint.NET-like image drawing and editing program 
#~ http://ubuntuhandbook.org/index.php/category/howtos/page/32/
