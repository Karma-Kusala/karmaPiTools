## Extend the rpi by installing extra software

### Install Gcc 4.8 (C++11 support)(needed by OF 0.8+)  
_Source: http://somewideopenspace.wordpress.com/2014/02/28/gcc-4-8-on-raspberry-pi-wheezy_
- `sudo nano /etc/apt/sources.list`  
- Add this & save. [`ctrl+x, y, enter`]  
```
# gcc/g++ 4.8 sources  
deb-src http://archive.raspbian.org/raspbian wheezy main contrib non-free rpi
deb http://mirrordirector.raspbian.org/raspbian/ wheezy main contrib non-free rpi
deb http://archive.raspbian.org/raspbian jessie main contrib non-free rpi
deb-src http://archive.raspbian.org/raspbian jessie main contrib non-free rpi
```
- `sudo nano /etc/apt/preferences`  
- Add thiss & save:  
```
Package: *
Pin: release n=wheezy
Pin-Priority=900
Package: *
Pin: release n=jessie
Pin-Priority=300
Package: *
Pin: release o=Raspbian
Pin-Priority: -10
```
- `sudo apt-get update`  
- `sudo apt-get install -t jessie gcc-4.8 g++-4.8`  
- `sudo update-alternatives --remove-all gcc & sudo update-alternatives --remove-all g++`  
- `sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 20 & sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50 & sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 20 & sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50`  
- Check v4.8: `sudo gcc --version`  
- Reverse: `sudo update-alternatives --config gcc & sudo update-alternatives --config g++`