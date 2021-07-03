#!/bin/bash
#
#
# $LEVEL_SEED
# $RCON_PASSWORD
set -e
self_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# set seed
if [[ ! -z $LEVEL_SEED ]]; then
	"./set_config.sh" "server.properties" 'level-seed' "$LEVEL_SEED"
fi

# enable rcon
if [[ ! -z $RCON_PASSWORD ]]; then
	"./set_config.sh" "server.properties" 'enable-rcon' "true"
    "./set_config.sh" "server.properties" 'rcon.password' "$RCON_PASSWORD"
fi

# run the server
exec java -Xms3584m -Xmx3584m -jar "./fabric_server.jar" --nogui
