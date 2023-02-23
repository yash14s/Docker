#!/bin/bash

CONTAINER_ID=$(sudo docker ps -a | grep fetch_sim:latest | awk '{print $1}')
sudo docker exec -it $CONTAINER_ID bash
