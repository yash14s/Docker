#!/bin/bash

CONTAINER_ID=$(sudo docker ps -a | grep yash14sgatech/px4-dev-ros-melodic:v2 | awk '{print $1}')
docker exec -it $CONTAINER_ID bash
