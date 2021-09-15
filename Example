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
touch /etc/apt/sources.list.d/java-8.list
echo "deb http://deb.debian.org/debian stretch main contrib non-free" > /etc/apt/sources.list.d/java-8.list
gnome-terminal -t " Updating Repositories Debian Stretch " -geometry 100x30 -- "apt-get update -y"
sleep 1

	apt-get install openjdk-8-jdk* openjdk-8-jre*

# removes the java-8.list file after installing the needed packages
echo " Removing Repositories Debian Stretch " rm -f /etc/apt/sources.list.d/java-8.list
gnome-terminal -t " Updating Your Current Repositories List(s) " -geometry 100x30 -- "apt-get update"
sleep 1
   
   # installs a most recent upto date package from your current software repositories
   # after removing the java-8.list file
    apt-get install openjdk-11-jdk* openjdk-11-jre*
    
echo " cleaning your cache "
apt-get clean && apt-get clean cache && apt-get autoclean
sleep 1

echo "All Done Java 8 & Java 11 Development Kit has been installed!"
sleep 2
clear

exit 0

fi
