#!/bin/bash
#
# usage:
#  ./set_config.sh <file> <property> <value>
#
# example:
#  ./set_config.sh "server.properties" "level-seed" "12345"

set -e

# args
file="$1"
property="$2"
value="$3"

# new and old
old=$(grep -E "^$property=.*$" $file | xargs)
old="$old"
new="$property=$value"

if [[ ! -z $old ]]; then
	sed -i -r "s/^$property=.*/$new/" $file
	echo "replaced: '$old' with '$new'"
else 
	echo $new >> $file
	echo "appended: '$new'"
fi
