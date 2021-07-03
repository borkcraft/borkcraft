#!/bin/bash
#
#
# $LEVEL_SEED
set -e
self_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# set seed
if [[ -z $LEVEL_SEED ]]; then
	"./set_config.sh" "server.properties" 'level-seed' "$LEVEL_SEED"
fi

# run the server
exec java -Xms3584m -Xmx3584m -jar "./fabric_server.jar" --nogui
