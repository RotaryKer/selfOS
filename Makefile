CMD 			= 	/bin/bash
IMG_NAME 		= 	selfos
VERSION 		= 	1.0
GETH 			= 	$$(hostname)
WDIR_H 			= 	${MAKEFILE_DIR}work
WDIR_D 			= 	/root/work/
MAKEFILE_DIR 	:= 	$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
HOST 			:= 	$(shell hostname)


default:run

build:Dockerfile
	docker build -t ${IMG_NAME}:${VERSION} .
	
#run:
#	docker run --rm -it --net host \
#		-e DISPLAY=${HOST}:0 \
#		-v ~/.Xauthority:/root/.Xauthority \
#		-v ${WDIR_H}:${WDIR_D} ${IMG_NAME}:${VERSION} 

run:
	docker run --rm -it -v ${WDIR_H}:${WDIR_D} ${IMG_NAME}:${VERSION} 
