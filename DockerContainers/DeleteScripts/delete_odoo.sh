#!/bin/bash

docker stop odoo
docker rm odoo
docker volume rm odoo-data
docker volume rm odoo-extra-addons
