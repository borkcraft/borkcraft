
#!/bin/bash

dir="$1"
id="$2"
scripts="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
user=$("$scripts/get_user.sh" "$id")
echo "[$user]" > "$dir/ops.json"
