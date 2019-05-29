#!/usr/bin/env bash

docker stop mosquitto
docker rm mosquitto
docker volume rm mosquitto-data
docker volume rm mosquitto-log
