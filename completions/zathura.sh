#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Show help options
# @option -e --reparent <xid>                      Reparents to window specified by xid (X11)
# @option -c --config-dir <path>                   Path to the config directory
# @option -d --data-dir <path>                     Path to the data directory
# @option --cache-dir <path>                       Path to the cache directory
# @option -p --plugins-dir <path>                  Path to the directories containing plugins
# @flag --fork                                     Fork into the background
# @option -w --password <password>                 Document password
# @option -P --page <number>                       Page number to go to
# @option -l --log-level[debug|info|warning|error] <level>  Log level
# @flag -v --version                               Print version information
# @option -x --synctex-editor-command <cmd>        Synctex editor (forwarded to the synctex command)
# @option --synctex-forward <position>             Move to given synctex position
# @option --synctex-pid[`_module_os_pid`] <pid>    Highlight given position in the given process
# @option --mode <mode>                            Start in a non-default mode
# @option -b --bookmark <bookmark>                 Bookmark to go to
# @option -f --find <string>                       Search for the given phrase and display results
# @arg files*

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"