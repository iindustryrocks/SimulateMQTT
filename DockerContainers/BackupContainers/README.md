# Volumes Storage Backup Explained

## Raw single volume backup script:
```
#!/bin/bash
# This script allows you to backup a single volume from a container
# Data in given volume is saved in the current directory in a tar archive.
CONTAINER_NAME=$1
VOLUME_NAME=$2

usage() {
  echo "Usage: $0 [container name] [volume name]"
  exit 1
}

if [ -z $CONTAINER_NAME ]
then
  echo "Error: missing container name parameter."
  usage
fi

if [ -z $VOLUME_NAME ]
then
  echo "Error: missing volume name parameter."
  usage
fi
```

> sudo docker run -rm --volumes-from $CONTAINER_NAME -v $(pwd):/backup busybox tar cvf /backup/backup.tar $VOLUME_NAME

## Raw single volume restore script:
```
#!/bin/bash
# This script allows you to restore a single volume from a container
# Data in restored in volume with same backupped path
NEW_CONTAINER_NAME=$1

usage() {
  echo "Usage: $0 [container name]"
  exit 1
}

if [ -z $NEW_CONTAINER_NAME ]
then
  echo "Error: missing container name parameter."
  usage
fi
```
> sudo docker run -rm --volumes-from $NEW_CONTAINER_NAME -v $(pwd):/backup busybox tar xvf /backup/backup.tar

Usage can be like this:

>  volume_backup.sh old_container /srv/www

>  sudo docker stop old_container && sudo docker rm old_container

> sudo docker run -d --name new_container myrepo/new_container

> volume_restore.sh new_container

Assumptions are: backup file is named backup.tar, it resides in the same directory as backup and restore script, volume name is the same between containers.

## NOTES:

It seems to me that backupping volumes from containers is not different from backupping volumes from data containers.

Volumes are nothing else than paths linked to a container so the process is the same.

I don't know if docker-backup works also for same container volumes but you can use:

> sudo docker run -rm --volumes-from yourcontainer -v $(pwd):/backup busybox tar cvf /backup/backup.tar /data

and:

> sudo docker run -rm --volumes-from yournewcontainer -v $(pwd):/backup busybox tar xvf /backup/backup.tar


LINK: https://stackoverflow.com/questions/26331651/how-can-i-backup-a-docker-container-with-its-data-volumes