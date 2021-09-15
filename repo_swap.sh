#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

# Install xterm for old software repo updates and orginal repo reactivation
apt-get install gnome-terminal -y

# Create a .list file containing the older software 
# repo mirror of your choice 
# then activates said software repo by running an update
touch /etc/apt/sources.list.d/<insert name>.list
echo "deb http://<input software repo here>" > /etc/apt/sources.list.d/<insert name>.list
gnome-terminal -t " Updating Repositories <input software repo name here> " -geometry 100x30 -- "apt-get update -y"
sleep 1

	apt-get install whatever package you need to install from an older software repo

echo " Removing Repositories <input software repo name here> " rm -f /etc/apt/sources.list.d/<insert name>.list
#now we can remove the emergency backup securely
gnome-terminal -t " Updating Your Current Repositories List(s) " -geometry 100x30 -- "apt-get update"
sleep 1
   
    apt-get install <package name>
    
echo " cleaning your cache "
apt-get clean && apt-get clean cache && apt-get autoclean
sleep 1

echo "All Done!"
clear

exit 0

fi
