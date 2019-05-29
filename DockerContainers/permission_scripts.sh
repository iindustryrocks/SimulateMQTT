#!/usr/bin/env bash

chmod +x CreateScripts/create_postgres.sh \
    CreateScripts/create_odoo.sh \
    CreateScripts/create_node-red.sh \
    CreateScripts/create_mosquitto.sh \
    CreateScripts/create_all.sh \
    DockerRun/dockerrun_postgres.sh \
    DockerRun/dockerrun_odoo.sh \
    DockerRun/dockerrun_node-red.sh \
    DockerRun/dockerrun_mosquitto.sh \
    DeleteScripts/delete_odoo.sh \
    DeleteScripts/delete_Postgres.sh \
    DeleteScripts/delete_node-red.sh \
    DeleteScripts/delete_mosquitto.sh \
    DeleteScripts/delete_all.sh \
    LogsScripts/posgres_logs.sh \
    LogsScripts/odoo_logs.sh \
    LogsScripts/node-red_logs.sh \
    LogsScripts/mosquitto_logs.sh

