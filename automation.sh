#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

# Install xterm for old software repo updates and orginal repo reactivation
apt-get install xterm -y

cp /etc/apt/sources.list /etc/apt/sources.list.backup # backup
# Second backup created in case user stops the script after this point , then on next startup this script will
# copy the already changed sources file before as backup, and user lost his original sources lists
file="/etc/apt/sources.list.insert-software-repo-name"
if [ ! -f "$file" ]
then
cp /etc/apt/sources.list /etc/apt/sources.list.insert-software-repo-name
fi
rm -f /etc/apt/sources.list
touch /etc/apt/sources.list
echo "software-repo-goes-here" > /etc/apt/sources.list
xterm -T " Updating Repositories Debian repo-name-goes-here " -geometry 100x30 -e "sudo apt-get clean && sudo apt-get clean cache && sudo apt-get update -y"
sleep 1

if [[ -n $(cat /etc/os-release |grep parrot) ]] #if using Kali Linux remove where it reads "grep parrot" and insert "grep kali"
then

	apt-get install whatever package you need to install from an older software repo

xterm -T " Reactivating your original repositories " -geometry 100x30 -e "rm -f /etc/apt/sources.list && cp /etc/apt/sources.list.backup /etc/apt/sources.list"
#now we can remove the emergency backup securely
xterm -T " Removing emergency backup securly " -geometry 100x30 -e "rm -f /etc/apt/sources.list.insertname && rm -f /etc/apt/sources.list.backup"
apt-get clean
xterm -T " Updating Your Repo " -geometry 100x30 -e "apt-get update"
sleep 1
   
    apt-get install whatever package you need from your parrot or kali repos if you dont need to do this, then delete this line
   
xterm -T " cleaning your cache " -geometry 100x30 -e "apt-get clean && apt-get clean cache && apt-get autoclean"
sleep 1

echo "All Done!"

exit 0

fi
