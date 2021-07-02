#!/bin/bash
#
# example:
# ./init.sh "/path/to/mc/server/dir" "12345" "jak0bii"
#
# ./init.sh <path> <seed> <op>

scripts="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

dir="$1"
if [[ ! -z $dir ]]; then
	dir="server"
fi
seed="$2"
op="$3"

mkdir -p $dir
cd $dir


"$scripts/create_ops.sh"
"$scripts/create_server_properties.sh"
"$scripts/create_eula.sh"
"$scripts/install_fabric.sh"

