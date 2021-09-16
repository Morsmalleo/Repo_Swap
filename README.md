# Repo_Swap
Repo_Swap is a bash script for Linux Applications written for the sole purpose of installing older packages, from older software repositories such as Debian Stretch or Debian Jessie etc, the script was written so that you do not have to manually edit your `sources.list` file to add the older software repository mirrors in order to install the older packages you may need.

Older software repository mirrors are removed by the script once it has finished its work.
# How to use this script
To use this script it must be tailored to your needs, in order to tailor this script to your needs, you will need to edit the following lines of code in the `Repo_Swap` file 

- Line 15 - Insert any name for the `.list` - `Example: java.list`
- Line 16 - Insert Software Repo mirror & the name you gave the `.list` file 
- Line 17 - Insert the name of the older software repo - `Example: Debian Stretch`
- Line 20 - Insert the name of the older package to be installed - `Example: openjdk-8-jdk`
- Line 22 - Insert the name of the older software repo you used, and the name you gave the `.list` file so they can be removed 
- Line 31 - Insert the name of a more recent package to be installed - `Example: openjdk-11-jdk` - If this line isn't needed then remove it

Once you have tailored the script to your needs, you can then go ahead and give the `Repo_Swap` file executable permissions and then run it
- `chmod +x Repo_Swap`
- `sudo ./Repo_Swap`
-------------------------------------
an `Example` file that installs both Java 8 Development Kit & Java 11 Development Kit, was created in order to demonstrate what Repo_Swap will do if everything has been tailored correctly
- `chmod +x Example`
- `sudo ./Example`
