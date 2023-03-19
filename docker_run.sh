#!/bin/bash

sudo xhost +
sudo docker run -d -it --rm --name lidar_container \
	-v $HOME/lidar_ws:/root/lidar_ws \
	--env DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/:rw \
	--env="QT_X11_NO_MITSHM=1" \
	-w="/root/lidar_ws" \
	lidar:latest