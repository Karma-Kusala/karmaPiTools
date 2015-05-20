This file contains some useful terminal commands to execute for setting up the RaspberryPi
_If you're viewing the plain version, please keep in mind that it's markdown-formatted._  

### Default Login
_It's better to change this, but here are the default credentials)_  
__User:__ `pi`  
__Password:__ `raspberry`

# Useful Commands

### File commands
- Go into a directory (and execute commands from there)
`cd /path/to/folder`
- Search a file  
`sudo apt-get install mlocate`  
`updatedb`  
`locate filename`  
- See disk space
`df -h`  

### GIT stuff
`git clone git://github.com/repoName` __Clone a repo__  
`git pull`  __Sync with remote tracking repo__  
`git add filename` __Adds a file to the commit__  
`git commit -m "I changed something!"`  
`git push` __Send changes to repote tracking server__  

### Edit the Wifi Setup
`sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`

### Install applications

- Install an application _ (needs an internet connection)_  
`sudo apt-get install appName`  

- Manage sources list  
`sudo nano /etc/apt/sources.list`  

- Search sources list  
`apt-cache search keyword`  

### Split Video Memory
__(And other configuration settings)__  
`sudo raspi-config`

### Timelapse recording
Setup a timelapse with GPhoto (premade script)  
`sudo apt-get install gphoto2`    

### Video player



### Setup a startup script (execute on boot)



### Shadertoy setup
