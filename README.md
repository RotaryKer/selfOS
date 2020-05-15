# selfOS
HomeBrew OS on your environment with Docker  
This environment is supported up to Day 4. (2020.5.15)

# Require
Docker environment.  
Windows  
[Docker Desktop for Windows](https://hub.docker.com/editions/community/docker-ce-desktop-windows)  

MacOSX  
[Docker Desktop for Mac](https://hub.docker.com/editions/community/docker-ce-desktop-mac)  

Linux  
[Docker install Guide for Linux](https://docs.docker.com/engine/install/debian)  

X Window  
Windows  
[X window for Windows](http://www.straightrunning.com/XmingNotes/)  

MacOSX  
[X window for Mac](https://www.xquartz.org/)   

Only that....Maybe  
If you get in trouble ,Plese ask me or google.

# System
* OS : Ubuntu 18.04
* Comiler : gcc
* Simulator : qemu-system-i386
# Usage
* First, make your work directory and git clone this repo in that one.  
* Second, run the Makefile.  
```
WORKDIR/selfOS/

$ make build
```
* Third, run the docker image, you built.  
```
WORKDIR/selfOS/

$make run
```
share workdir during Host and Docker Container.  
So If you change workdir on Host, it will be reflected in Container.  

# MUST READ
When You use gcc for cross-compile follow below.  
```
$ gcc -fno-pie -march=i486 -m32 -nostdlib -T <LINK> <SOURCE> <OBJECT> -o <OUTPUT>

```
# License
MIT License  
Email : kakky.ryouhei@gmail.com
