#!/usr/bin/env bash

docker run -it -p 1880:1880 -e FLOWS=node-red_flows.json nodered/node-red-docker
