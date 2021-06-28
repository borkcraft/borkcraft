#!/bin/bash
docker build . -t borkcraft
docker rm -f borkcraft
docker run -p 25565:25565 --restart unless-stopped --name borkcraft -d borkcraft
docker logs -f borkcraft
