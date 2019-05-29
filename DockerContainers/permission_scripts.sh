#!/usr/bin/env bash

chmod +x CreateScripts/dockercreate_postgres.sh \
    CreateScripts/dockercreate_odoo.sh \
    CreateScripts/dockercreate_node-red.sh \
    CreateScripts/dockercreate_mosquitto.sh \
    DockerRun/dockerrun_postgres.sh \
    DockerRun/dockerrun_odoo.sh \
    DockerRun/dockerrun_node-red.sh \
    DockerRun/dockerrun_mosquitto.sh \
    DeleteScripts/delete_odoo.sh \
    DeleteScripts/delete_Postgres.sh.sh \
    DeleteScripts/delete_node-red.sh \
    DeleteScripts/delete_mosquitto.sh \
    LogsScripts/posgres_logs.sh \
    LogsScripts/odoo_logs.sh \

