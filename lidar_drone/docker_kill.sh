#!/bin/bash

CONTAINER_ID=$(sudo docker ps -a | grep yash14sgatech/px4-dev-ros-melodic:v4 | awk '{print $1}')
sudo docker kill $CONTAINER_ID
