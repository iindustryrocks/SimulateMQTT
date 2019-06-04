#!/bin/bash

docker stop mosquitto
docker rm mosquitto

docker run -d --name mosquitto \
    -p 1883:1883 -p 9001:9001 \
    -v $(pwd)/DockerRun/mosquitto.conf:/mosquitto/config/mosquitto.conf \
    -v mosquitto-data:/mosquitto/data \
    -v mosquitto-log:/mosquitto/log \
    eclipse-mosquitto

