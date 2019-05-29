#!/usr/bin/env bash

docker stop postgres-db
docker rm postgres-db
docker volume rm postgres-db-data
