#!/bin/bash

docker stop odoo
docker rm odoo

docker run -d --name odoo --link postgres-db:db -p 8069:8069 \
  --mount source=odoo-data,target=/var/lib/odoo \
  --mount source=odoo-extra-addons,target=/mnt/extra-addons \
  --env POSTGRES_DB=postgres \
  library/odoo:12.0