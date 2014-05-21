#!/bin/bash

# http://www.xmind.net/xmind/downloads/


# http://askubuntu.com/questions/366438/how-to-install-google-earth-64bit-in-ubuntu-13-10-ia32-libs-dependency-error

sudo apt-get install libc6-i386 libglib2.0-0:i386 libsm6:i386 \
libglu1-mesa:i386 libgl1-mesa-glx:i386 libxext6:i386 \
libxrender1:i386 libx11-6:i386 libfontconfig1:i386 lsb-core
sudo dpkg -i google-earth-stable_current_i386.deb 

# http://hungfu.wordpress.com/2012/05/11/geotagging-photos-in-ubuntu/
# https://apps.ubuntu.com/cat/applications/saucy/gpscorrelate-gui/
# http://www.flickr.com/account/geo/exif 


# http://installion.co.uk/ubuntu/raring/universe/e/eog-plugins/install.html
sudo apt-get install eog-plugins

# http://docs.qgis.org/1.8/en/docs/user_manual/osm/openstreetmap.html

# http://www.dl8rds.de/index.php/Logging_with_the_Blumax_4044
sudo apt-get install mtkbabel
# mtkbabel -p /dev/ttyACM0 -f 2011-12-13_gpsdata -t -w





echo "FoxtrotGPS mand and GPS application"
sudo apt-get install FoxtrotGPS

# http://activityworkshop.net/software/gpsprune/download.html
# http://wiki.openstreetmap.org/wiki/GpsPrune
# http://askubuntu.com/questions/19162/app-to-use-with-geotagged-photos-gps-info-in-exif

sudo apt-get install gpsprune

# http://new.qgis.org/html/en/site/forusers/alldownloads.html
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable


sudo add-apt-repository -y ppa:gottengeography
# Daily Builds for Ubuntu
# sudo add-apt-repository ppa:gottengeography/daily

# http://www.omgubuntu.co.uk/2014/05/timekpr-restrict-computer-access-ubuntu
# sudo add-apt-repository -y ppa:mjasnik/ppa 

sudo apt-get update

# sudo apt-get install -y timekpr

sudo apt-get install -y qgis python-qgis qgis-plugin-grass

sudo apt-get install -y gottengeography

