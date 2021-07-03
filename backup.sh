#!/bin/bash
# backup.sh

set -e
self_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

server_dir="$1"
if [[ -z $server_dir ]]; then
	server_dir="./server"
fi

backup_dir="$2"
if [[ -z $backup_dir ]]; then
	backup_dir="./backups"
fi

ts=$(date +"%Y%m%d%H%M%S")

mkdir -p $backup_dir

zip -r "$backup_dir/borkcraft_$ts.zip" $server_dir



