# Docker Containers
Simulate the MQTT full environment with Docker containers.

The scripts are tested on Linux System. Do not use on Docker Windows, this will not work, because of storage volumes (persistence data)

Attribute permission to all scripts:
>chmod +x permission_scripts.sh

##Create & Run all containers
>./CreateScripts/create_all.sh

##Delete all containers
>./DeleteScripts/delete_all.sh

## Run specific container

### ODOO (with Postgres)
Create first, Postgres DB:
>./CreateScripts/create_postgres.sh

Create after, odoo:
>./CreateScripts/create_odoo.sh

Show logs:
>./LogsScripts/posgres_logs.sh

>./LogsScripts/odoo_logs.sh

To delete every odoo related containers & storage volumes:
>./DeleteScripts/delete_odoo.sh

>./DeleteScripts/delete_Postgres.sh

Remove & Run again:
>./DockerRun/dockerrun_postgres.sh

>./DockerRun/dockerrun_odoo.sh

### Node-Red
Create node-red container:
>./DockerRun/dockerrun_node-red.sh

Show logs:
>./LogsScripts/node-red_logs.sh

To delete node-red & storage volume of container:
>./DeleteScripts/delete_node-red.sh

Remove & Run again:
>./DockerRun/dockerrun_node-red.sh

### Mosquitto
The saved mosquitto.conf is to ensure the persistence data.

Create mosquitto container:
>./CreateScripts/create_mosquitto.sh

Show logs:
>./LogsScripts/mosquitto_logs.sh

To delete node-red & storage volume of container:
>./DeleteScripts/delete_mosquitto.sh

Remove & Run again:
>./DockerRun/dockerrun_mosquitto.sh
