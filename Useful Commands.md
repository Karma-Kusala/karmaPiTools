This file contains some useful terminal commands to execute for setting up the RaspberryPi
_If you're viewing the plain version, please keep in mind that it's markdown-formatted._  

#### Default Login
_Although it's better to change this, but here are the default credentials)_  
__User:__ `pi`  
__Password:__ `raspberry`

# Useful Commands

### Firmware & updating
`apt-get install rpi-update`  
`sudo rpi-update`

### Booting
_(add -F to run `fsck` on boot)_  
`sudo shutdown -h now` __shut down__  
`sudo shutdown -h now -r` __reboot__  

### File commands
- Go into a directory (and execute commands from there)
`cd /path/to/folder`
- Search a file  
`sudo apt-get install mlocate`  
`updatedb`  
`locate filename`  
- See disk space  
`df -h`  
- Create symlink (alias)
`ln -s file /path/to/target`  

### Networking
- Restart network interface  
`sudo /etc/init.d/networking restart`  
- Edit network config file   
`sudo nano /etc/network/interfaces`  
- Show network interfaces
`ifconfig`
- Enable/Disable a network interface
``  

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
- Setup init.d Deamon (launch on startup)  
`sudo cp /home/pi/Desktop/karmaPiTools/omxplaylist/initScript.sh /etc/init.d/omxPlaylistd`  
`sudo update-rc.d omxPlaylistd defaults`  
`/etc/init.d/omxPlaylistd start`  
`/etc/init.d/omxPlaylistd stop`  
`sudo update-rc.d omxPlaylistd remove`
- Start from LXDE  
`sh /home/pi/Desktop/karmaPiTools/omxplaylist/initScript.sh`


### Setup a startup script (execute on boot)



### Shadertoy setup
