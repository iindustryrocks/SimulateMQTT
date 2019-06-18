# Docker Containers
Simulate the MQTT full environment with Docker containers.

**The scripts are tested on Linux System.** Do not use on Docker Windows, this will not work, because of storage volumes (persistence data)

## Common use
### Attribute permission to all scripts:
>chmod +x permission_scripts.sh

>./permission_scripts.sh

### Create & Run all containers
>./CreateScripts/create_all.sh

>./DockerRun/dockerrun_all.sh

### Delete all containers
>./DeleteScripts/delete_all.sh

## First Execution
From root directory:
>./permission_scripts.sh

>./CreateScripts/create_all.sh

>./DockerRun/dockerrun_all.sh

## First Backup
**Attention** `before backup, if you need to backup Odoo`, 
follow the manual backup on above setup on (**ODOO BACKUP/RESTORE Database**)

From root directory:
>./BackupContainers/volume_backup_all.sh

## First Restore
From root directory:
>./permission_scripts.sh

>./CreateScripts/create_all.sh

>./DockerRun/dockerrun_all.sh

>./BackupContainers/volume_restore_all.sh

**Attention** `after backup, if you need to restore Odoo`, 
follow the manual restore on above setup on (**ODOO BACKUP/RESTORE Database**)

## Browser locations:

Odoo: http://localhost:8069

Node-Red: http://localhost:1880

## Default ports used:

Postgres: `5432`

Odoo: `8069`

Node-Red: `1880`

Mosquitto: `1883` `9001`

## Containers Storage Volumes Names

Follow the DockerContainers/BackupContainers instructions to backup & restore the volume containers.

Postgres: `postgres-db-data`

Odoo: `odoo-data` `odoo-extra-addons`

Node-Red: `nodered-data`

Mosquitto: `mosquitto-data` `mosquitto-log`

## Odoo Configurations
First time access odoo, introduce DB name (ex: odoo), email, and password.
odoo_configuration_1.png

After that, install plugin manufacturing.

## Node-red Configurations
Need to install pallete: node-red-contrib-odoo-xmlrpc-with-filters

Go to Settings > Pallete > Install > node-red-contrib-odoo-xmlrpc-with-filters

## Run specific container

### ODOO (with Postgres)
Create first, Postgres DB:
>./CreateScripts/create_postgres.sh

Create after, odoo:
>./CreateScripts/create_odoo.sh

Show logs:
>./LogsScripts/postgres_logs.sh

>./LogsScripts/odoo_logs.sh

To delete every odoo related containers & storage volumes:
>./DeleteScripts/delete_odoo.sh

>./DeleteScripts/delete_postgres.sh

Remove & Run again:
>./DockerRun/dockerrun_postgres.sh

>./DockerRun/dockerrun_odoo.sh

#### ODOO MASTER PASSWORD
Odoo need to set the master password to secure the database.

- Use this link: http://localhost:8069/web/database/manager
- Set Master Password
    - New master password (choose by you)

Done.

#### ODOO BACKUP/RESTORE Database
If necessary you can backup and restore your database to ensure a secure restore of the same.

- use this link: http://localhost:8069/web/database/manager
- Backup
    - Master Password: (define by you in the above setup)
    - Database name: (defined by you: odoo)
    - Backup Format: ZIP
    - Backup button (**The backup may take some time before being ready**)
        - Exported file ex: odoo_2019-06-18_11-45-15.zip
- Restore Database
    - Master Password: (define by you in the above setup)
    - Choose File: exported above (ex: odoo_2019-06-18_11-45-15.zip)
    - Database Name: (defined by you: odoo)
    - Check: This database is a copy
    - Continue
    
Link: https://www.odoo.com/pt_BR/forum/help-1/question/odoo-10-docker-export-and-import-data-114339

### Node-Red
Create node-red container:
>./DockerRun/dockerrun_node-red.sh

Show logs:
>./LogsScripts/node-red_logs.sh

To delete node-red & storage volume of container:
>./DeleteScripts/delete_node-red.sh

Remove & Run again:
>./DockerRun/dockerrun_node-red.sh

#### Node-Red BACKUP/RESTORE
Link: https://github.com/node-red/cookbook.nodered.org/wiki/How-to-backup-flows-and-related-configuration

### Mosquitto
The saved mosquitto.conf is to ensure the persistence data.

Create mosquitto container:
>./CreateScripts/create_mosquitto.sh

Show logs (this probably not show any logs, so use the specified container volume to see this logs):
>./LogsScripts/mosquitto_logs.sh

To delete node-red & storage volume of container:
>./DeleteScripts/delete_mosquitto.sh

Remove & Run again:
>./DockerRun/dockerrun_mosquitto.sh
