#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config                    Use configuration of named table rather than the top-level table in .erdtree.toml
# @option -C --color[none|auto|force]    Mode of coloring output [default: auto]
# @option -d --disk-usage[logical|physical|line|word|block] <DISK_USAGE>  Print physical or logical file size [default: physical]
# @flag -f --follow                      Follow symlinks
# @flag -H --human                       Print disk usage in human-readable format
# @flag -i --no-ignore                   Do not respect .gitignore files
# @flag -I --icons                       Display file icons
# @flag -l --long                        Show extended metadata and attributes
# @flag --group                          Show file's groups
# @flag --ino                            Show each file's ino
# @flag --nlink                          Show the total number of hardlinks to the underlying inode
# @flag --octal                          Show permissions in numeric octal format instead of symbolic
# @option --time[create|access|mod]      Which kind of timestamp to use; modified by default
# @option --time-format[iso|iso-strict|short|default] <TIME_FORMAT>  Which format to use for the timestamp; default by default
# @option -L --level <NUM>               Maximum depth to display
# @option -p --pattern                   Regular expression (or glob if '--glob' or '--iglob' is used) used to match files
# @flag --glob                           Enables glob based searching
# @flag --iglob                          Enables case-insensitive glob based searching
# @option -t --file-type[file|dir|link] <FILE_TYPE>  Restrict regex or glob search to a particular file-type
# @flag -P --prune                       Remove empty directories from output
# @option -s --sort[name|rname|size|rsize|access|raccess|create|rcreate|mod|rmod]  How to sort entries [default: size]
# @option --dir-order[none|first|last] <DIR_ORDER>  Sort directories before or after all other file types [default: none]
# @option -T --threads                   Number of threads to use [default: 20]
# @option -u --unit[bin|si]              Report disk usage in binary or SI units [default: bin]
# @flag -x --one-file-system             Prevent traversal into directories that are on different filesystems
# @option -y --layout[regular|inverted|flat|iflat]  Which kind of layout to use when rendering the output [default: regular]
# @flag -. --hidden                      Show hidden files
# @flag --no-git                         Disable traversal of .git directory when traversing hidden files
# @option --completions[bash|elvish|fish|powershell|zsh]  Print completions for a given shell to stdout
# @flag --dirs-only                      Only print directories
# @flag --no-config                      Don't read configuration file
# @flag --no-progress                    Hides the progress indicator
# @flag --suppress-size                  Omit disk usage from output
# @flag --truncate                       Truncate output to fit terminal emulator window
# @flag -h --help                        Print help (see more with '--help')
# @flag -V --version                     Print version
# @arg dir                               Directory to traverse; defaults to current working directory

command eval "$(argc --argc-eval "$0" "$@")"