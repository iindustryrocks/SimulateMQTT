#!/bin/bash

# Container postgres-db
BackupContainers/volume_restore.sh postgres-db postgres-db-data

# Container odoo
BackupContainers/volume_restore.sh odoo odoo-data
BackupContainers/volume_restore.sh odoo odoo-extra-addons

# Container Mosquitto
BackupContainers/volume_restore.sh mosquitto mosquitto-data
BackupContainers/volume_restore.sh mosquitto mosquitto-log

# Container Node-red
BackupContainers/volume_restore.sh node-red nodered-data