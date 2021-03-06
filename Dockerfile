#Dockerfile to build a postgresql backend for Pentaho's Business Analytics
# v 1.0
# docker build example:
#  docker build -t pentaho-db .
#
# docker run example:
#  #For testing the build process on a pc.
#   docker run -d --name pentaho-db -d -p 5432:5432 -v /docker/mounts/pentaho-db/var/lib/postgresql/data:/var/lib/postgresql/data pentaho-db
#  #Test
#   docker run -d --name pentaho-db-test -v /docker/mounts/pentaho-db-test/var/lib/postgresql/data:/var/lib/postgresql/data --memory 768M --memory-swap -1 --oom-kill-disable -c=512 pentaho-db:latest
#  #Prod
#   docker run -d --name pentaho-db-prod -d -v /docker/mounts/pentaho-db-prod/var/lib/postgresql/data:/var/lib/postgresql/data --memory 1024M --memory-swap -1 --oom-kill-disable -c=1024 pentaho-db:1.0

##
#Use postgres image from docker hub https://hub.docker.com/_/postgres/ #9.4 supported by pentaho.
FROM postgres:9.4
MAINTAINER Dave Barnum <dave@thebarnums.com>

EXPOSE 5432
ENV POSTGRES_USER="postgresadm"
ENV POSTGRES_PASSWORD="8s88jjjChangeMe99aks88"
