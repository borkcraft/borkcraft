#!/bin/bash

image="borkcraft"
container="borkcraft"

docker build . -t $image --no-cache

docker run \
	-d \
	-v /root/borkcraft/server:/borkcraft/server \
	-p 25565:25565/tcp \
	-p 19132:19132/udp \
	-p 24454:24454/udp \
	-p 25575:25575/tcp \
	-e RCON_PASSWORD="$RCON_PASSWORD" \
	-e LEVEL_SEED="-7672362719859801980" \
	--name $container \
	--restart unless-stopped \
	$image

docker logs -f $image
