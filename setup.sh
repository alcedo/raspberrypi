#! /bin/bash

echo "Setting up Rasberry Pi !"

#Generate new Host keys
sudo rm /etc/ssh/ssh_host_* && sudo dpkg-reconfigure openssh-server

#update package manage
sudo apt-get update && sudo apt-get upgrade

#install tightVNC server
sudo apt-get install tightvncserver

#install deluge torrent client
#The default port for the WebUI is 8112
sudo apt-get install deluged && sudo apt-get install python-mako && sudo apt-get install deluge-web 


