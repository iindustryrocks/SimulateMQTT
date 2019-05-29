#!/usr/bin/env bash

docker run -it --name node-red \
    -p 1880:1880 \
    -e FLOWS=node-red_flows.json \
    nodered/node-red-docker
