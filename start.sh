#!/bin/bash

docker build . -t borkcraft

docker run \
    -d \
    -e LEVEL_SEED=-7672362719859801980 \
    --name borkcraft \
    --restart unless-stopped \
    borkcraft

