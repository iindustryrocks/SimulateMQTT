#!/bin/bash

docker stop node-red
docker rm node-red

docker run -d --name node-red --link odoo:odoo --link mosquitto:broker \
    -p 1880:1880 \
    -e FLOWS=node-red_flows.json \
    -e FLOWS="--userDir /data" \
    -e FLOWS="--flowFile node-red_flows.json" \
    -v nodered-data:/data/ \
    nodered/node-red-docker
