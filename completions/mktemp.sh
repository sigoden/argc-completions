#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -d --directory         create a directory, not a file
# @flag -u --dry-run           do not create anything; merely print a name (unsafe)
# @flag -q --quiet             suppress diagnostics about file/dir-creation failure
# @option --suffix <SUFF>      append SUFF to TEMPLATE; SUFF must not contain a slash.
# @option -p --tmpdir <DIR>    interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR if set, else /tmp.
# @flag -t                     interpret TEMPLATE as a single file name component, relative to a directory: $TMPDIR, if set; else the directory specified via -p; else /tmp [deprecated]
# @flag --help                 display this help and exit
# @flag --version              output version information and exit
# @arg template

command eval "$(argc --argc-eval "$0" "$@")"