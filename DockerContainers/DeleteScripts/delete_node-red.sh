#!/usr/bin/env bash

docker stop node-red
docker rm node-red
docker volume rm nodered-data
