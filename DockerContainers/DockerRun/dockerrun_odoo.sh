#!/usr/bin/env bash

docker volume create --name odoo-data
docker volume create --name odoo-extra-addons

docker run -d --name odoo --link postgres-db:db -p 8069:8069 \
  --mount source=odoo-data,target=/var/lib/odoo \
  --mount source=odoo-extra-addons,target=/mnt/extra-addons \
  --env POSTGRES_DB=postgres \
  --env POSTGRES_PASSWORD=odoo-pw2019 \
  library/odoo:12.0