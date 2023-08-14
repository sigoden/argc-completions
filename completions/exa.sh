#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                              show list of command-line options
# @flag -v --version                           show version of exa
# @flag -1 --oneline                           display one entry per line
# @flag -l --long                              display extended file metadata as a table
# @flag -G --grid                              display entries as a grid (default)
# @flag -x --across                            sort the grid across, rather than downwards
# @flag -R --recurse                           recurse into directories
# @flag -T --tree                              recurse into directories as a tree
# @flag -F --classify                          display type indicator by file names
# @option --color[always|auto|never] <WHEN>    when to use terminal colours
# @flag --color-scale                          highlight levels of file sizes distinctly
# @flag --icons                                display icons
# @flag --no-icons                             don't display icons (always overrides --icons)
# @flag -a --all                               show hidden and 'dot' files
# @flag -d --list-dirs                         list directories as files; don't list their contents
# @option -L --level <DEPTH>                   limit the depth of recursion
# @flag -r --reverse                           reverse the sort order
# @option -s --sort[name|Name|size|extension|Extension|modified|changed|accessed|created|inode|type|none] <SORT_FIELD>  which field to sort by
# @flag --group-directories-first              list directories before other files
# @flag -D --only-dirs                         list only directories
# @option -I --ignore-glob <GLOBS>             glob patterns (pipe-separated) of files to ignore
# @flag --git-ignore                           ignore files mentioned in '.gitignore'
# @flag -b --binary                            list file sizes with binary prefixes
# @flag -B --bytes                             list file sizes in bytes, without any prefixes
# @flag -g --group                             list each file's group
# @flag -h --header                            add a header row to each column
# @flag -H --links                             list each file's number of hard links
# @flag -i --inode                             list each file's inode number
# @flag -m --modified                          use the modified timestamp field
# @flag -n --numeric                           list numeric user and group IDs
# @flag -S --blocks                            show number of file system blocks
# @option -t --time[modified|accessed|created] <FIELD>  which timestamp field to list
# @flag -u --accessed                          use the accessed timestamp field
# @flag -U --created                           use the created timestamp field
# @flag --changed                              use the changed timestamp field
# @option --time-style[default|iso|long-iso|full-iso]  how to format timestamps
# @flag --no-permissions                       suppress the permissions field
# @flag --octal-permissions                    list each file's permission in octal format
# @flag --no-filesize                          suppress the filesize field
# @flag --no-user                              suppress the user field
# @flag --no-time                              suppress the time field
# @flag --git                                  list each file's Git status, if tracked or ignored
# @flag -@ --extended                          list each file's extended attributes and sizes
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"