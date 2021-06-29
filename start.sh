#!/bin/bash

# set seed
./set_config 'server.properties' 'level-seed' $1

exec java -Xms1G -Xmx1G -jar server.jar --nogui
