#!/usr/bin/env bash

docker stop node-red
docker rm node-red

docker run -d --name node-red \
    -p 1880:1880 \
    -e FLOWS=node-red_flows.json \
    nodered/node-red-docker
