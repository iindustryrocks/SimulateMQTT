#!/bin/bash

docker stop odoo
docker rm odoo

docker run -d --name odoo --link postgres-db:db -p 8069:8069 \
  -v odoo-data:/var/lib/odoo \
  -v odoo-extra-addons:/mnt/extra-addons \
  --env POSTGRES_DB=postgres --env POSTGRES_PASSWORD=odoo-pw2019 \
  library/odoo:12.0