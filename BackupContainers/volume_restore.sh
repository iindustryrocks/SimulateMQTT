#!/bin/bash
# This script allows you to restore a single volume from a container
# Data in restored in volume with same backup path
NEW_CONTAINER_NAME=$1
NEW_VOLUME_NAME=$2

usage() {
  echo "Usage: $0 [container name] [volume name]"
  exit 1
}

if [ -z $NEW_CONTAINER_NAME ]  # inform container name to use
then
  echo "Error: missing container name parameter."
  usage
#else
  #echo 'Docker new container name:'
  #docker container ls |grep $NEW_CONTAINER_NAME
fi

if [ -z $NEW_VOLUME_NAME ]  # inform volume name, just for the file name
then
  echo "Error: missing volume name parameter."
  usage
#else
  #echo 'Docker new volume name:'
  #docker volume ls |grep $NEW_VOLUME_NAME
fi

echo 'Run busybox for tar volume path from file:' backup_$(echo $NEW_VOLUME_NAME).tar
# tar xvf
sudo docker run --rm --volumes-from $NEW_CONTAINER_NAME -v $(pwd)/backups:/backup busybox tar xvf /backup/backup_$(echo $NEW_VOLUME_NAME).tar