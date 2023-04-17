#!/bin/bash

CONTAINER_ID=$(sudo docker ps -a | grep lidar:v2 | awk '{print $1}')
sudo docker kill $CONTAINER_ID
