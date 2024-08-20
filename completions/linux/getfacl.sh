#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a --access            display the file access control list only
# @flag -d --default           display the default access control list only
# @flag -c --omit-header       do not display the comment header
# @flag -e --all-effective     print all effective rights
# @flag -E --no-effective      print no effective rights
# @flag -s --skip-base         skip files that only have the base entries
# @flag -R --recursive         recurse into subdirectories
# @flag -L --logical           logical walk, follow symbolic links
# @flag -P --physical          physical walk, do not follow symbolic links
# @flag -t --tabular           use tabular output format
# @flag -n --numeric           print numeric user/group identifiers
# @flag --one-file-system      skip files on different filesystems
# @flag -p --absolute-names    don't strip leading '/' in pathnames
# @flag -v --version           print version and exit
# @flag -h --help              this help text
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"