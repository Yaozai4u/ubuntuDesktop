#!/bin/bash

echo "ssh tunnel to fshv02"
ssh projects -L 2012:10.2.0.12:3389

#sudo netstat -plnt |grep '2012'
lsof -i:2012 -n

echo "Use remmina connect to local port 2012"
remmina -c ~/.remmina/foreshow.fshv02.remmina 
