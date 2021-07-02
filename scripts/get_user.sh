#!/bin/bash
set -e
user_id="$1"
curl "https://api.mojang.com/users/profiles/minecraft/$user_id"
