#!/usr/bin/env bash

docker run --name  postgist -p 5434:5432 -e POSTGRES_PASSWORD=postgres -d mdillon/postgis
docker run --name  postgres -p 5433:5432 --link postgist:postgres -e POSTGRES_PASSWORD=postgres -d postgres
# host postgis
docker run --name pgadmin -p 5051:5050 -e "DEFAULT_USER=pg4@pg.org" -e "DEFAULT_PASSWORD=pg1234" --link postgist:postgist  --link postgres:postgres -d fenglc/pgadmin4


# For include postgist use pgsql
# docker exec -it postgres psql -h postgres -U postgres -W postgres
# \c database
# CREATE EXTENSION postgis;
# CREATE EXTENSION postgis_topology;

docker ps

