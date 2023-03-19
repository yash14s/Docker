#!/bin/bash

CONTAINER_ID=$(sudo docker ps -a | grep lidar:latest | awk '{print $1}')
sudo docker exec -it $CONTAINER_ID bash