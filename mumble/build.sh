#!/usr/bin/env bash

docker volume create --name mumble-data
docker build -t mumble-server .
docker run -d -p 64738:64738 -p 64738:64738/udp -e TZ=Asia/Kolkota -v mumble-data:/etc/mumble --name mumble mumble-server
docker exec -it mumble supw
