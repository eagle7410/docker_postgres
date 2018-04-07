#!/usr/bin/env bash

docker run --name postgist -e POSTGRES_PASSWORD=postgres -d mdillon/postgis
docker run --name postgres --link postgist:postgres -e POSTGRES_PASSWORD=postgres -d postgres
# host postgis
docker run --name pgadmin --link postgist:postgist -p 5050:5050 -e "DEFAULT_USER=pgadmin4eagle@pgadmin.org" -e "DEFAULT_PASSWORD=pg1234" -d fenglc/pgadmin4


# For include postgist use pgsql
# docker exec -it postgres psql -h postgres -U postgres -W postgres
# \c database
# CREATE EXTENSION postgis;
# CREATE EXTENSION postgis_topology;

docker ps

