#!/bin/bash

xhost +
docker run -d -it --privileged --rm --name px4_container \
	-v $HOME/lidar_drone/:/root/lidar_drone/:rw \
	--env DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/:rw \
	--env="QT_X11_NO_MITSHM=1" \
	-p 14570:14570/udp \
	-w="/root/lidar_drone/" \
	yash14sgatech/px4-dev-ros-melodic:v3 bash
