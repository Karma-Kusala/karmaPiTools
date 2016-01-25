This file contains some useful terminal commands to execute for setting up the RaspberryPi
_If you're viewing the plain version, please keep in mind that it's markdown-formatted._  

#### Default Login
_Although it's better to change this, but here are the default credentials)_  
__User:__ `pi`  
__Password:__ `raspberry`

# Useful Commands

## Firmware, updating & initial setup
- __Full rpi update__  
`sudo apt-get install rpi-update`  
`sudo rpi-update`  
`sudo apt-get update`  
`sudo apt-get upgrade`  

### Split Video Memory
 - __(And other configuration settings)__  
`sudo raspi-config`

### Free some disk space
 - __Remove some default installed apps.__ (about 660Mb)  
_(check if you don't need them)_  
`sudo apt-get remove --purge scratch nuscratch sonic-pi minecraft-pi python-minecraftpi wolfram-engine timidity smartsim penguinspuzzle`  
`sudo apt-get autoremove`
 - __Remove phyton games__  
`sudo rm -r ~/python_games/`  

### Fix locales
`sudo dpkg-reconfigure locales`    

## Linux Basics
### Booting 
- __shut down__: `sudo shutdown -h now`   
_extra flags_:  
  - ` -r` __reboot__  
  - `-F` __run `fsck` on next boot__  

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

### Install applications
- __Install an application__   
`sudo apt-get update`
`sudo apt-get install appName`  
_(needs an internet connection)_  
- __Manage sources list__  
`sudo nano /etc/apt/sources.list`  
- __Search sources list__  
`apt-cache search keyword`  


### Networking
- __Restart network interface__  
`sudo /etc/init.d/networking restart`  
- __Edit network config file__   
`sudo nano /etc/network/interfaces`  
- __Show network interfaces__
`ifconfig`
- __Enable/Disable a network interface__
`ifconfig eth0 up`  
`ifconfig eth0 down`  
- __ Edit the Wifi Setup__  
`sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`

## GIT stuff  
- __Setup__  
`git config --global user.email "you@example.com"`  
`git config --global user.name "Your Name"`  
- __Clone a repo__  
`git clone git://github.com/repoName`  
- __Sync with remote tracking repo__  
`git pull`  
- __Commiting__   
`git add filename`  
`git commit -m "I changed something!"`  
- __Send changes to repote tracking server__
`git push`  
- __Create & checkout a new branch__  
`git checkout -b branchName`  

## Timelapse recording
Setup a timelapse with GPhoto (premade script)  
`sudo apt-get install gphoto2`  
_More to come..._

## Video player
- Setup init.d Deamon (launch on startup)  
`sudo cp /home/pi/Desktop/karmaPiTools/omxplaylist/initScript.sh /etc/init.d/omxPlaylistd`  
`sudo update-rc.d omxPlaylistd defaults`  
`/etc/init.d/omxPlaylistd start`  
`/etc/init.d/omxPlaylistd stop`  
`sudo update-rc.d omxPlaylistd remove`
- Start from LXDE  
`sh /home/pi/Desktop/karmaPiTools/omxplaylist/initScript.sh`


## Setup a startup script  
(execute on boot)

## OpenFrameworks
- __Get G++ 4.8__  
`sudo apt-get install g++-4.8`
`cd /usr/bin`
`sudo rm g++`
`sudo ln -s g++-4.8 g++`
- __Install__ _(rpi)_  
`cd ~/`  
`git clone https://github.com/openframeworks/openFrameworks.git`
`cd ~/openFrameWorks/scripts/linux/debian_armv6l/`  
`sudo ./install_dependencies.sh`  
- __Build OF__  
`cd ~/openFrameWorks/libs/openFrameworksCompiled/project`
- Build Example  

## Wiring Pi
`cd ~`  
`git clone git://git.drogon.net/wiringPi`  
`cd ./wiringPi`  
`./build`

## piShadertoy setup
Github repo: [pishadertoy](https://github.com/dff180/pishadertoy).

###### Install
```
cd ~/
git clone https://github.com/dff180/pishadertoy.git
sudo apt-get install libsoil-dev
cd pishadertoy
make
```
###### Run (input depends on shader)
```
cd ~/pishadertoy
./pishadertoy ./shaders/star.f.glsl ./textures/tex07.png ./textures/texl0.jpg
```

###### Partition tool
`sudo apt-get install gparted` (then use UI)  

