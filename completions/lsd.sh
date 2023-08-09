#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -1 --oneline                              Display one entry per line
# @flag -a --all                                  Do not ignore entries starting with .
# @flag -A --almost-all                           Do not list implied .
# @option --blocks*[permission|user|group|context|size|date|name|inode|links] <blocks>  Specify the blocks that will be displayed and in what order
# @flag --classic                                 Enable classic mode (display output similar to ls)
# @option --color[always|auto|never] <color>      When to use terminal colours [default: auto]
# @option --config-file <config-file>             Provide a custom lsd configuration file
# @flag -d --directory-only                       Display directories themselves, and not their contents (recursively when used with --tree)
# @option --date <date>                           How to display date [possible values: date, relative, +date-time-format] [default: date]
# @option --depth <num>                           Stop recursing into directories after reaching specified depth
# @flag -F --classify                             Append indicator (one of */=>@|) at the end of the file names
# @flag --group-directories-first                 Groups the directories at the top before the files.
# @option --group-dirs[none|first|last] <group-dirs>  Sort the directories then the files
# @flag -h --human-readable                       For ls compatibility purposes ONLY, currently set by default
# @flag --header                                  Display block headers
# @flag --help                                    Print help information
# @option --hyperlink[always|auto|never] <hyperlink>  Attach hyperlink to filenames [default: never]
# @flag -i --inode                                Display the index number of each file
# @option -I --ignore-glob <pattern>              Do not display files/directories with names matching the glob pattern(s).
# @option --icon[always|auto|never] <icon>        When to print the icons [default: auto]
# @option --icon-theme[fancy|unicode] <icon-theme>  Whether to use fancy or unicode icons [default: fancy]
# @flag --ignore-config                           Ignore the configuration file
# @flag -l --long                                 Display extended file metadata as a table
# @flag -L --dereference                          When showing file information for a symbolic link, show information for the file the link references rather than for the link itself
# @flag --no-symlink                              Do not display symlink target
# @option --permission[rwx|octal] <permission>    How to display permissions [default: rwx]
# @flag -r --reverse                              Reverse the order of the sort
# @flag -R --recursive                            Recurse into directories
# @flag -S --sizesort                             Sort by size
# @option --size[default|short|bytes] <size>      How to display size [default: default]
# @option --sort[size|time|version|extension|none] <WORD>  sort by WORD instead of name
# @flag -t --timesort                             Sort by time modified
# @flag --total-size                              Display the total size of directories
# @flag --tree                                    Recurse into directories and present the result as a tree
# @flag -U --no-sort                              Do not sort.
# @flag -v --versionsort                          Natural sort of (version) numbers within text
# @flag -V --version                              Print version information
# @flag -X --extensionsort                        Sort by file extension
# @flag -Z --context                              Print security context (label) of each file
# @arg file+                                      [default: .]

command eval "$(argc --argc-eval "$0" "$@")"