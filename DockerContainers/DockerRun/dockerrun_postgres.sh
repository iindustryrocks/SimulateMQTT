#!/usr/bin/env bash

docker stop postgres-db
docker rm postgres-db

docker run -d --name postgres-db  \
  --env POSTGRES_USER=odoo --env POSTGRES_PASSWORD=odoo-pw2019 \
  --env POSTGRES_DB=postgres \
  --mount source=postgres-db-data,target=/var/lib/postgresql/data  \
  library/postgres:11.1