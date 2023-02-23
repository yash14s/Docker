#!/bin/bash

sudo xhost +
sudo docker run -d -it --rm --name ubuntu_18_container \
	-v $HOME/catkin_ws:/root/catkin_ws \
	--env DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/:rw \
	--env="QT_X11_NO_MITSHM=1" \
	-w="/root/catkin_ws" \
	fetch_sim:latest bash
