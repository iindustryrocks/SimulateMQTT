#!/usr/bin/env bash

docker stop odoo
docker rm odoo
docker volume rm odoo-data
docker volume rm odoo-extra-addons

docker stop postgres-db
docker rm postgres-db
docker volume rm postgres-db-data

docker network rm network-odoo
