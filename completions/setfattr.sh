#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n --name <name>      Specifies the name of the extended attribute to set.
# @option -v --value <value>    Specifies the new value of the extended attribute.
# @option -x --remove <name>    Remove the named extended attribute entirely.
# @flag -h --no-dereference     Do not follow symlinks.
# @option --restore <file>      Restores extended attributes from file.
# @flag --raw                   Do not decode the attribute value.
# @flag --version               Print the version of setfattr and exit.
# @flag --help                  Print help explaining the command line options.
# @arg pathname*

command eval "$(argc --argc-eval "$0" "$@")"