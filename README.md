# SoftwareRepo-Automation
Automation Script for adding older software repo's to the sources.list file. can be Edited to install packages from older software repo's while safely 
securing your orginal sources.list file, this script was written to be an add on for tools/apps that require older packages from older software repo's to be installed in order for them to work, an example of this script being used as an add-on can be found in my Forked Repository of AhMyth-Android-RAT.

# DISCLAIMER: I am not reponsible for any damage or deletion of files by this script, the steps to edit it in order to make it work properly have been posted, so if you don't know what you are doing then don't mess with this script, as it handles an important file.

# WARNING: DO NOT RUN THIS SCRIPT WITHOUT EDITING IT TO YOUR PREFERENCES FIRST!!
# WARNING: IN CASE THE SCRIPT SCREWS UP AFTER YOU'VE EDITED IT, YOU NEED TO MANUALLY CREATE A BACKUP OF YOUR SOURCES.LIST FILE


### YOU CAN BACKUP YOUR SOURCES.LIST FILE BY TYPING THE COMMAND SEEN BELOW 
`sudo cp /etc/apt/sources.list /where/ever/you/want/` Just replace where it reads `/where/ever/you/want/` with the directory you want to back your sources.list file up in. Example on this is below! 
### Example
`sudo cp /etc/apt/sources.list /home/kali/Documents`



## How to use this script
Edit the followings line in the script 

- Line 15: Insert the name for the sources.list file (example: sources.list.stretch)
![line15](https://user-images.githubusercontent.com/64344168/112147747-f5513680-8bd4-11eb-9ef3-7fa0843bf17d.png)

- Line 18: Insert the name you gave the sources.list file on line 15 (example: sources.list.stretch)
![line18](https://user-images.githubusercontent.com/64344168/112147789-01d58f00-8bd5-11eb-9e53-dbf94f903c63.png)


- Line 22: Insert the software repo (example: deb http://deb.debian.org/debian stretch main contrib non-free)
![line22](https://user-images.githubusercontent.com/64344168/112147837-0d28ba80-8bd5-11eb-9b50-7f2b6a92051f.png)


- Line 23: Insert software repo name (example: Jessie, Stretch, Sid, Bullseye, Buster)
![line23](https://user-images.githubusercontent.com/64344168/112147857-144fc880-8bd5-11eb-813c-64faec368ee0.png)


- Line 26: Parrot OS users ignore this line! Kali Linux users WILL need to remove where it reads `grep | parrot` and insert `grep | kali`
![line26](https://user-images.githubusercontent.com/64344168/112147894-203b8a80-8bd5-11eb-881c-e86c88dc7608.png)


- Line 29: Insert what packages need to be installed from the older software repo you added on lines 22 & 23
![line29](https://user-images.githubusercontent.com/64344168/112147916-27fb2f00-8bd5-11eb-859f-550b6baed32a.png)


- Line 33: Insert the name you gave the sources.list file on line 15 (example: sources.list.stretch) 
![line33](https://user-images.githubusercontent.com/64344168/112147956-2fbad380-8bd5-11eb-9ad8-eab35ba4a111.png)


- Line 38: Optional line to install packages from current up-to-date repositories, if this is not need, then you can delete this line
![line38](https://user-images.githubusercontent.com/64344168/112147968-33e6f100-8bd5-11eb-92c6-e5872d97ec1c.png)

## Give the script executable permissions
`sudo chmod +x Automation.sh`

## Then run the script
`sudo ./Automation.sh`
