#!/bin/bash

chmod +x CreateScripts/create_odoo.sh \
    CreateScripts/create_node-red.sh \
    CreateScripts/create_mosquitto.sh \
    CreateScripts/create_all.sh \
    DockerRun/dockerrun_postgres.sh \
    DockerRun/dockerrun_odoo.sh \
    DockerRun/dockerrun_node-red.sh \
    DockerRun/dockerrun_mosquitto.sh \
    DockerRun/dockerrun_all.sh \
    DeleteScripts/delete_odoo.sh \
    DeleteScripts/delete_postgres.sh \
    DeleteScripts/delete_node-red.sh \
    DeleteScripts/delete_mosquitto.sh \
    DeleteScripts/delete_all.sh \
    LogsScripts/postgres_logs.sh \
    LogsScripts/odoo_logs.sh \
    LogsScripts/node-red_logs.sh \
    LogsScripts/mosquitto_logs.sh \
    BackupContainers/volume_backup.sh \
    BackupContainers/volume_restore.sh \
    BackupContainers/backup_all.sh \
    BackupContainers/restore_all.sh

