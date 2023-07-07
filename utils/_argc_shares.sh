# List pid
_argc_share_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | awk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | awk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

