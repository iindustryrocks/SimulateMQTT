# odoo Containerized
Create odoo inside containers docker

Execute first posgres docker
>chmod +x DockerRun/dockerrun_postgres.sh

>./DockerRun/dockerrun_postgres.sh

Execute odoo container:
>chmod +x DockerRun/dockerrun_odoo.sh

>./DockerRun/dockerrun_odoo.sh

Show the logs:
>chmod +x LogsScripts/posgres_log.sh LogsScripts/odoo_logs.sh

>./LogsScripts/posgres_log.sh

>./LogsScripts/odoo_logs.sh

To delete everything & storage volume container
>chmod +x DeleteScripts/delete_odoo-Postgres.sh

>./DeleteScripts/delete_odoo-Postgres.sh

Links:
- https://unkkuri.com/blog/unkkuri-blog-1/post/odoo-12-in-docker-container-25#blog_content

# Node-Red Containerized

Create node-red inside your machine to test the connections and simulate for MQTT

Execute node-red container:
>chmod +x DockerRun/dockerrun_node-red.sh

>./DockerRun/dockerrun_node-red.sh

To delete node-red & storage volume of container
>chmod +x DeleteScripts/delete_node-red.sh

>./DeleteScripts/delete_node-red.sh