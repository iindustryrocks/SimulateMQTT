# Volumes Storage Backup Explained

## Running scripts example

Usage can be like this:

> chmod +x volume_backup.sh volume_restore.sh

> volume_backup.sh old_container /srv/www

> sudo docker stop old_container && sudo docker rm old_container

> sudo docker run -d --name new_container myrepo/new_container

> volume_restore.sh new_container

OR (**Use this steps instead!**)

> chmod +x volume_backup.sh volume_restore.sh backup_all.sh restore_all.sh

> backup_all.sh 

> sudo restore_all.sh

Assumptions are: backup file is named backup.tar, it resides in the same directory as backup and restore script, volume name is the same between containers.

## NOTES:

It seems to me that backup volumes from containers is not different from backup volumes from data containers.

Volumes are nothing else than paths linked to a container so the process is the same.

I don't know if docker-backup works also for same container volumes but you can use:

> sudo docker run --rm --volumes-from yourcontainer -v $(pwd):/backup busybox tar cvf /backup/backup.tar /data

and:

> sudo docker run --rm --volumes-from yournewcontainer -v $(pwd):/backup busybox tar xvf /backup/backup.tar


LINK: https://stackoverflow.com/questions/26331651/how-can-i-backup-a-docker-container-with-its-data-volumes