#!/bin/bash
#
# example:
# ./init.sh "/path/to/mc/server/dir"

scripts="$(pwd)/scripts"
static="$(pwd)/static"
dir="$1"
if [[ ! -z $dir ]]; then
	dir="server"
fi


mkdir -p $dir
cd $dir

exec "$scripts/install_fabric.sh"
exec "$scripts/create_eula.sh"




