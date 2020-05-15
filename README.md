# selfOS
HomeBrew OS on your environment with Docker  
Operation confirmed up to Day 4

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

# License
MIT License  
Email : kakky.ryouhei@gmail.com
