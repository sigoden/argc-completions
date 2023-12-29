#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                                  show list of command-line options
# @flag -v --version                            show version of eza
# @flag -1 --oneline                            display one entry per line
# @flag -l --long                               display extended file metadata as a table
# @flag -G --grid                               display entries as a grid (default)
# @flag -x --across                             sort the grid across, rather than downwards
# @flag -R --recurse                            recurse into directories
# @flag -T --tree                               recurse into directories as a tree
# @flag -X --dereference                        dereference symbolic links when displaying information
# @flag -F --classify                           display type indicator by file names
# @option --color[always|auto|never] <WHEN>     when to use terminal colours
# @option --color-scale[all|age|size]           highlight levels of 'field' distinctly
# @option --color-scale-mode[fixed|gradient]    use gradient or fixed colors in --color-scale
# @option --icons[always|auto|never] <WHEN>     when to display icons
# @flag --no-quotes                             don't quote file names with spaces
# @flag --hyperlink                             display entries as hyperlinks
# @option -w --width <COLS>                     set screen width in columns
# @flag -a --all                                show hidden and 'dot' files.
# @flag -A --almost-all                         equivalent to --all; included for compatibility with `ls -A`
# @flag -d --list-dirs                          list directories as files; don't list their contents
# @option -L --level <DEPTH>                    limit the depth of recursion
# @flag -r --reverse                            reverse the sort order
# @option -s --sort[`_choice_sort`] <SORT_FIELD>  which field to sort by
# @flag --group-directories-first               list directories before other files
# @flag -D --only-dirs                          list only directories
# @flag -f --only-files                         list only files
# @option -I --ignore-glob <GLOBS>              glob patterns (pipe-separated) of files to ignore
# @flag --git-ignore                            ignore files mentioned in '.gitignore'
# @flag -b --binary                             list file sizes with binary prefixes
# @flag -B --bytes                              list file sizes in bytes, without any prefixes
# @flag -g --group                              list each file's group
# @flag --smart-group                           only show group if it has a different name from owner
# @flag -h --header                             add a header row to each column
# @flag -H --links                              list each file's number of hard links
# @flag -i --inode                              list each file's inode number
# @flag -m --modified                           use the modified timestamp field
# @flag -M --mounts                             show mount details (Linux and Mac only)
# @flag -n --numeric                            list numeric user and group IDs
# @flag -O --flags                              list file flags (Mac, BSD, and Windows only)
# @flag -S --blocksize                          show size of allocated file system blocks
# @option -t --time[modified|accessed|created] <FIELD>  which timestamp field to list
# @flag -u --accessed                           use the accessed timestamp field
# @flag -U --created                            use the created timestamp field
# @flag --changed                               use the changed timestamp field
# @flag --time-style                            how to format timestamps (default, iso, long-iso, full-iso, relative, or a custom style '+<FORMAT>' like '+%Y-%m-%d %H:%M')
# @flag --total-size                            show the size of a directory as the size of all files and directories inside (unix only)
# @flag --no-permissions                        suppress the permissions field
# @flag -o --octal-permissions                  list each file's permission in octal format
# @flag --no-filesize                           suppress the filesize field
# @flag --no-user                               suppress the user field
# @flag --no-time                               suppress the time field
# @flag --stdin                                 read file names from stdin, one per line or other separator specified in environment
# @flag --git                                   list each file's Git status, if tracked or ignored
# @flag --no-git                                suppress Git status (always overrides --git, --git-repos, --git-repos-no-status)
# @flag --git-repos                             list root of git-tree status
# @flag -@ --extended                           list each file's extended attributes and sizes
# @flag -Z --context                            list each file's security context
# @arg files*

_choice_sort() {
    cat <<-'EOF'
accessed	Sort by file accessed time
age	Sort by file modified time (newest first)
changed	Sort by changed time
created	Sort by file modified time
date	Sort by file modified time
ext	Sort by file extension
Ext	Sort by file extension (uppercase first)
extension	Sort by file extension
Extension	Sort by file extension (uppercase first)
filename	Sort by filename
Filename	Sort by filename (uppercase first)
inode	Sort by file inode
modified	Sort by file modified time
name	Sort by filename
Name	Sort by filename (uppercase first)
newest	Sort by file modified time (newest first)
none	Do not sort files at all
oldest	Sort by file modified time
size	Sort by file size
time	Sort by file modified time
type	Sort by file type
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"