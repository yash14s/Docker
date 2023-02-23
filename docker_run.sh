#!/bin/bash

sudo xhost +
sudo docker run -d -it --rm --name ubuntu_18_container \
	-v $HOME/catkin_ws:/root/catkin_ws \
	-p 5900:5900 \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/:rw \
	--env="QT_X11_NO_MITSHM=1" \
	-w="/root/catkin_ws" \
	lidar3:latest bash
