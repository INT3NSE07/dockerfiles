#!/usr/bin/env bash

docker build -t tf2-server .
docker run -it -p 27015:27015/udp -p 27015:27015/tcp -p 27005:27005/udp -p 27020:27020/udp --name tf2 tf2-server
