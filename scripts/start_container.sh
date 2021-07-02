#!/bin/bash

seed=$1

docker build . -t borkcraft
docker rm -f borkcraft

docker run \
	-p 25565:25565 \
	--restart unless-stopped \
	--name borkcraft \
	-d borkcraft $seed\
	
docker logs -f borkcraft
