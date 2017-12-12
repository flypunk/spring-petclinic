#!/bin/bash -e

# Should run under sudo
# Attention: everything is version dependent!
# tested on 
# Ubuntu 16.04.3 
# kernel 4.4.0-103-generic
# docker 17.09.1-ce
# docker-compose 1.17.1

# Build a customized mysql backed version of petclinic
docker build . -t flypunk/petclinic-mysql --no-cache

# Create a directory for mysql data
mkdir -p db/sql_data
# Get its absolute path
data_path=`readlink -f db/sql_data/`
# Start mysql using this directory
container_id=`sudo docker run -v ${data_path}:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql`
echo Waiting for mysql to start
sleep 10
# Initialize the db
mysql -h 0.0.0.0 -P 3306 -uroot -proot < src/main/resources/db/mysql/schema.sql
mysql -h 0.0.0.0 -P 3306 -uroot -proot petclinic < src/main/resources/db/mysql/data.sql
# Stop the db container
docker stop $container_id
# Start the cluster
docker-compose up
