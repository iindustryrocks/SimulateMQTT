#!/bin/bash
# This script allows you to backup a single volume from a container
# Data in given volume is saved in the current directory in a tar archive.
CONTAINER_NAME=$1
VOLUME_NAME=$2
CONTAINER_DATA_PATH=$3
PATH_NAME=''

usage() {
  echo "Usage: $0 [container name] [volume name] [container data path]"
  exit 1
}

if [ -z $CONTAINER_NAME ] # inform container name to use
then
  echo "Error: missing container name parameter."
  usage
#else
  #echo 'Docker container name:'
  #docker container ls |grep $CONTAINER_NAME
fi

if [ -z $VOLUME_NAME ] # inform volume name, just for the file name
then
  echo "Error: missing volume name parameter."
  usage
#else
  #echo 'Docker volume name:'
  #docker volume ls |grep $VOLUME_NAME
fi

if [ -z $CONTAINER_DATA_PATH ] # inform the data path to tar file
then
  echo "Error: missing container data path parameter."
  usage
else
  PATH_NAME=$( echo ${CONTAINER_DATA_PATH##/*/} )

  #echo 'Show: '$PATH_NAME
  #p=$CONTAINER_DATA_PATH
  #path=$( echo ${p%/*} )
  #file=$( echo ${p##/*/} )
  #echo 'p: '$p
  #echo 'path: '$path
  #echo 'file: '$file

fi

echo 'Run busybox for tar volume path to file:' backup_$(echo $VOLUME_NAME).tar
# tar cvf
sudo docker run --rm --volumes-from $CONTAINER_NAME -v $(pwd)/backups:/backup busybox tar cf /backup/backup_$(echo $VOLUME_NAME).tar $CONTAINER_DATA_PATH