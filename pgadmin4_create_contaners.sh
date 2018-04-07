#!/usr/bin/env bash
docker run --name pgadmin -p 5050:5050 -e "DEFAULT_USER=pgadmin4eagle@pgadmin.org" -e "DEFAULT_PASSWORD=pg1234" -d fenglc/pgadmin4
docker ps
