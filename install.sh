#!/bin/bash
# responsible for install a server. this process is once performed once
# in a servers lifetime.
#
# example:
# ./install.sh "/path/to/mc/server/dir" "12345"
#
# ./install.sh <path>
set -e

self_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
scripts_dir="$self_dir/scripts"
static_dir="$self_dir/static"
mods_dir="$self_dir/mods"
datapacks_dir="$self_dir/datapacks"

server_dir="$1"
if [[ -z $server_dir ]]; then
	server_dir="./server"
fi
seed="$2"
op="$3"

mkdir -pv $server_dir 

cp "$scripts_dir/run.sh" $server_dir
cp "$scripts_dir/set_config.sh" $server_dir

cd $server_dir

mkdir -pv $mods_dir
cp -a "$mods_dir/." "mods/"

mkdir -pv $datapacks_dir
cp -a "$datapacks_dir/." "datapacks/"

cp -a "$static_dir/." .
"$scripts_dir/install_fabric.sh"