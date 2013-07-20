Setting up raspberry pi remotely from scratch
===========

Logging into your raspberry pi
-------------

1. Download and Install Raspbian “wheezy” onto the SD card from: http://www.raspberrypi.org/downloads. (this distro has a SSH daemon running)

2. Scan the network to find the IP address of your Raspberry Pi. This could be done by logging into the router, or via an ip-scanner  http://www.radmin.com/products/ipscanner/

3.  SSH into your raspberry pi via: ssh <ip address of your Rpi> -l <username> (*note that the default user name and password is __pi__ and __raspberry__ respectively*).
      
  A prompt informing you that the SSH Keys are being added into your known host file @  ~/.ssh/known_hosts would appear 


4.  Execute the following on your pi server once you are logged in:  sudo rm /etc/ssh/ssh_host_* && sudo dpkg-reconfigure openssh-server. This would create a new host key for your raspberry pi server.

    Go to  ~/.ssh/known_hosts in your ssh client and delete the previously added known host entry. (its most likely the last line)    
    [Click Here for more info on the SSH logging in process](http://elinux.org/RPi_Remote_Access) 
    

5. Execute sudo raspi-config and follow the on screen instructions for your initial setup
6. Execute the following command to update raspberry pi's package manager: sudo apt-get update && sudo apt-get upgrade


Install tight-vnc-server (remote GUI)
-------------
1. Install tightvnc by executing sudo apt-get install tightvncserver
2. run it by executing: tightvncserver
3. [Click Here for more info on using vnc and filezilla instead of SCP ](http://www.howtogeek.com/141157/how-to-configure-your-raspberry-pi-for-remote-shell-desktop-and-file-transfer/all/) 


Install Deluge torrent client with WebUI access
-------------
1. Execute the following command: sudo apt-get install deluged && sudo apt-get install python-mako && sudo apt-get install deluge-web && deluge-web
      
      This sequence installs the Deluge daemon, Mako (a template gallery for Python that the WebUI needs), the WebUI itself, and then starts the WebUI program. **Note: The default port for the WebUI is 8112**

      Open up a browser on your regular desktop machine and point it at the IP address of your Pi (e.g. http://192.168.1.102:8112).


2. [Click Here for additional deluge configurations ](http://www.howtogeek.com/141157/how-to-configure-your-raspberry-pi-for-remote-shell-desktop-and-file-transfer/all/) 




