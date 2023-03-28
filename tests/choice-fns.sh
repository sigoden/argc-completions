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

source_file="$ROOT_DIR/src/$1.sh"

if [[ ! -f "$source_file" ]]; then
    echo "'$source_file' not found"
    exit 1
fi

. "$source_file"

while read -r name; do
    echo "---------------- $name ----------------"
    $name
    echo 
done < <(declare -F | grep _choice_ | sed 's/declare -f //')