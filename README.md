# Repo_Swap
Repo_Swap is a bash script for Linux Applications written for the sole purpose of installing older packages, from older software repositories such as Debian Stretch or Debian Jessie etc, the script was written so that you do not have to manually edit your `sources.list` file to add the older software repository mirrors in order to install the older packages you may need.

Older software repository mirrors are removed by the script once it has finished its work.
# How to use this script
### **Edit the followings line in the script**
1. **Line 15:** Insert the name for the .list file to be created inside `/etc/apt/source.list.d` folder 
- Example: `java.list`
----------------------------------------
2. **Line 22:** Insert the software repo 
- Example: `deb http://deb.debian.org/debian stretch main contrib non-free`
----------------------------------------
3. **Line 23:** Insert software repo name 
- Example: `Updating Repositories Debian <Stretch>` without the "<>"
----------------------------------------
4. **Line 29:** Insert the package(s) needed to be installed from the older software repo 
- example: `apt install opendjk-8-jdk`
----------------------------------------
5. **Line 33:** Insert the name you gave the sources.list file on line 15 
- Example: `java.list`
----------------------------------------
6. **Line 38:** Insert modern package name, this is optional if newer packages are not needed
- Example: `apt-get install openjdk-11-jdk`
----------------------------------------
7. Give the script executable permissions
`chmod +x Repo_Swap`
----------------------------------------
8. Then run the script
`./Repo_Swap`
