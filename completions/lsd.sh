#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                                   Do not ignore entries starting with
# @flag -A --almost-all                            Do not list implied .
# @option --color[always|auto|never] <MODE>        When to use terminal colours [default: auto]
# @option --icon[always|auto|never] <MODE>         When to print the icons [default: auto]
# @option --icon-theme[fancy|unicode] <THEME>      Whether to use fancy or unicode icons [default: fancy]
# @flag -F --classify                              Append indicator (one of */=>@|) at the end of the file names
# @flag -l --long                                  Display extended file metadata as a table
# @flag --ignore-config                            Ignore the configuration file
# @option --config-file <PATH>                     Provide a custom lsd configuration file
# @flag -1 --oneline                               Display one entry per line
# @flag -R --recursive                             Recurse into directories
# @flag -h --human-readable                        For ls compatibility purposes ONLY, currently set by default
# @flag --tree                                     Recurse into directories and present the result as a tree
# @option --depth <NUM>                            Stop recursing into directories after reaching specified depth
# @flag -d --directory-only                        Display directories themselves, and not their contents (recursively when used with --tree)
# @option --permission[rwx|octal] <MODE>           How to display permissions [default: rwx]
# @option --size[default|short|bytes] <MODE>       How to display size [default: default]
# @flag --total-size                               Display the total size of directories
# @option --date                                   How to display date [default: date] [possible values: date, relative, +date-time-format]
# @flag -t --timesort                              Sort by time modified
# @flag -S --sizesort                              Sort by size
# @flag -X --extensionsort                         Sort by file extension
# @flag -G --gitsort                               Sort by git status
# @flag -v --versionsort                           Natural sort of (version) numbers within text
# @option --sort[size|time|version|extension|git|none] <TYPE>  Sort by TYPE instead of name
# @flag -U --no-sort                               Do not sort.
# @flag -r --reverse                               Reverse the order of the sort
# @option --group-dirs[none|first|last] <MODE>     Sort the directories then the files
# @flag --group-directories-first                  Groups the directories at the top before the files.
# @option --blocks[permission|user|group|context|size|date|name|inode|links|git]  Specify the blocks that will be displayed and in what order
# @flag --classic                                  Enable classic mode (display output similar to ls)
# @flag --no-symlink                               Do not display symlink target
# @option -I --ignore-glob <PATTERN>               Do not display files/directories with names matching the glob pattern(s).
# @flag -i --inode                                 Display the index number of each file
# @flag -g --git                                   Show git status on file and directory" Only when used with --long option
# @flag -L --dereference                           When showing file information for a symbolic link, show information for the file the link references rather than for the link itself
# @flag -Z --context                               Print security context (label) of each file
# @option --hyperlink[always|auto|never] <MODE>    Attach hyperlink to filenames [default: never]
# @flag --header                                   Display block headers
# @flag --help                                     Print help information
# @flag -V --version                               Print version
# @arg file*                                       [default: .]

command eval "$(argc --argc-eval "$0" "$@")"