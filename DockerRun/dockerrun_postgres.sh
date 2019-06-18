#!/bin/bash

docker stop postgres-db
docker rm postgres-db

docker run -d --name postgres-db  \
  --env POSTGRES_USER=odoo --env POSTGRES_PASSWORD=odoo-pw2019 \
  --env POSTGRES_DB=postgres \
  library/postgres:11.1