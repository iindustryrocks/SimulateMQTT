#!/bin/bash

# Create backup folder
mkdir -p $(pwd)/backups

# Container odoo
#BackupContainers/volume_backup.sh odoo odoo-data /var/lib/odoo
#BackupContainers/volume_backup.sh odoo odoo-extra-addons /mnt/extra-addons

# Container Mosquitto
BackupContainers/volume_backup.sh mosquitto mosquitto-data /mosquitto/data
BackupContainers/volume_backup.sh mosquitto mosquitto-log /mosquitto/log

# Container Node-red
BackupContainers/volume_backup.sh node-red nodered-data data

## dont use /data, this will create a error, only use on sub-folders