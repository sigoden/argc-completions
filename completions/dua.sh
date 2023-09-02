#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -t --threads                      The amount of threads to use.
# @option -f --format[metric|binary|bytes|gb|gib|mb|mib]  The format with which to print byte counts
# @flag -A --apparent-size                  Display apparent size instead of disk usage
# @flag -l --count-hard-links               Count hard-linked files each time they are seen
# @flag -x --stay-on-filesystem             If set, we will not cross filesystems or traverse mount points
# @option -i --ignore-dirs <IGNORE_DIRS>    One or more absolute directories to ignore.
# @flag -h --help                           Print help (see a summary with '-h')
# @flag -V --version                        Print version
# @arg paths*                               One or more input files or directories.

# {{ dua interactive
# @cmd Launch the terminal user interface [aliases: i]
# @flag -h --help    Print help
# @arg paths*        One or more input files or directories.
interactive() {
    :;
}
# }} dua interactive

# {{ dua aggregate
# @cmd Aggregrate the consumed space of one or more directories or files [aliases: a]
# @flag --stats       If set, print additional statistics about the file traversal to stderr
# @flag --no-sort     If set, paths will be printed in their order of occurrence on the command-line.
# @flag --no-total    If set, no total column will be computed for multiple inputs
# @flag -h --help     Print help
# @arg paths*         One or more input files or directories.
aggregate() {
    :;
}
# }} dua aggregate

command eval "$(argc --argc-eval "$0" "$@")"