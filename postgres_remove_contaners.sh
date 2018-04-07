#!/usr/bin/env bash
docker stop postgres
docker stop pgadmin
docker stop postgist
docker rm postgres
docker rm pgadmin
docker rm postgist
