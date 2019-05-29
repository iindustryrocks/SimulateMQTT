#!/usr/bin/env bash

sh ./create_postgres.sh
sh ./create_odoo.sh
sh ./create_node-red.sh
sh ./create_mosquitto.sh