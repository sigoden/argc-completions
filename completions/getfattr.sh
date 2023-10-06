#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -n --name <name>                       Dump the value of the named extended attribute.
# @flag -d --dump                                Dump the values of all matched extended attributes.
# @option -e --encoding[text|hex|base64] <en>    Encode values after retrieving them.
# @flag -h --no-dereference                      Do not dereference symlinks.
# @option -m --match <pattern>                   Only include attributes with names matching the regular expression pattern.
# @flag --absolute-names                         Do not strip leading slash characters ('/').
# @flag --only-values                            Dump out the raw extended attribute value(s) without encoding them.
# @flag -R --recursive                           List the attributes of all files and directories recursively.
# @flag -L --logical                             Logical walk, follow symbolic links to directories.
# @flag -P --physical                            Physical walk, do not follow symbolic links to directories.
# @flag --version                                Print the version of getfattr and exit.
# @flag --help                                   Print help explaining the command line options.
# @arg pathname*

command eval "$(argc --argc-eval "$0" "$@")"