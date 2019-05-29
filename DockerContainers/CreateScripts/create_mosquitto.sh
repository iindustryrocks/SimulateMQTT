#!/usr/bin/env bash

docker volume create --name mosquitto-data
docker volume create --name mosquitto-log

docker run -d --name mosquitto \
    -p 1883:1883 -p 9001:9001 \
    -v $(pwd)/DockerRun/mosquitto.conf:/mosquitto/config/mosquitto.conf \
    -v mosquitto-data:/mosquitto/data \
    -v mosquitto-log:/mosquitto/log \
    eclipse-mosquitto
