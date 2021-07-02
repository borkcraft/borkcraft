#!/bin/bash
set -e

# set seed
./set_config.sh 'server.properties' 'level-seed' "$1"

exec java -Xms3584m -Xmx3584m -jar server.jar --nogui
