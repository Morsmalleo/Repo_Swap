# Sources.list-Automation
Automation Script for adding, installing from and removing older debian software repos


### WARNING: YOU NEED TO MANUALLY CREATE A BACKUP COPY OF YOUR SOURCES.LIST FILE BEFORE RUNNING THIS SCRIPT JUST IN CASE IT STUFFS UP AFTER YOU'VE EDITED IT, YOU CAN DO THIS BY TYPING THE COMMAND SEEN BELOW 
`sudo cp /etc/apt/sources.list /where/ever/you/want/` Just replace where it reads "/where/ever/you/want/" with the directory you want to back your sources.list up in. Example on this is below!
### Example
`sudo cp /etc/apt/sources.list /home/kali/Documents`



## How to use this script
Edit the followings line in the script 

- Line 15 (insert name for the sources.list file) 
![line15](https://user-images.githubusercontent.com/64344168/112147747-f5513680-8bd4-11eb-9ef3-7fa0843bf17d.png)

- Line 18
![line18](https://user-images.githubusercontent.com/64344168/112147789-01d58f00-8bd5-11eb-9e53-dbf94f903c63.png)


- Line 22
![line22](https://user-images.githubusercontent.com/64344168/112147837-0d28ba80-8bd5-11eb-9b50-7f2b6a92051f.png)


- Line 23
![line23](https://user-images.githubusercontent.com/64344168/112147857-144fc880-8bd5-11eb-813c-64faec368ee0.png)


- Line 26 (Parrot OS users WILL NOT need to edit this line! Kali Linux users WILL need to edit this line)
![line26](https://user-images.githubusercontent.com/64344168/112147894-203b8a80-8bd5-11eb-881c-e86c88dc7608.png)


- Line 29
![line29](https://user-images.githubusercontent.com/64344168/112147916-27fb2f00-8bd5-11eb-859f-550b6baed32a.png)


- Line 33
![line33](https://user-images.githubusercontent.com/64344168/112147956-2fbad380-8bd5-11eb-9ad8-eab35ba4a111.png)


- Line 38 (Only if you need upto date packages from Parrot repos or Kali Repos, if you dont you can delete line 38)
![line38](https://user-images.githubusercontent.com/64344168/112147968-33e6f100-8bd5-11eb-92c6-e5872d97ec1c.png)

## Give the script executable permissions
`sudo chmod +x Automation.sh`

## Then run the script
`sudo ./Automation.sh`
