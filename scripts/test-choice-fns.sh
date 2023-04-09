#!/usr/bin/env bash

# Test choice fns

if [[ -z "$1" ]]; then
    echo "Usage: choice-fns <name>"
    exit 1
fi

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )"

for util_file in "$ROOT_DIR/utils/"*; do
    . "$util_file"
done

if [[ -f "$ROOT_DIR/src/$1.sh" ]]; then
    . "$ROOT_DIR/src/$1.sh"
elif [[ -f "$ROOT_DIR/src/$1/$1.sh" ]]; then
    . "$ROOT_DIR/src/$1/$1.sh"
else
    echo "Not found $1.sh"
fi

while read -r name; do
    echo "---------------- $name ----------------"
    $name
    echo 
done < <(declare -F | grep _choice_ | sed 's/declare -f //')