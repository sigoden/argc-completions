#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f                 freshen: only changed files
# @flag -u                 update: only changed or new files
# @flag -d                 delete entries in zipfile
# @flag -m                 move into zipfile (delete OS files)
# @flag -r                 recurse into directories
# @flag -j                 junk (don't record) directory names
# @flag -0                 store only
# @flag -l                 convert LF to CR LF (-ll CR LF to LF)
# @flag -1                 compress faster
# @flag -9                 compress better
# @flag -q                 quiet operation
# @flag -v                 verbose operation/print version info
# @flag -c                 add one-line comments
# @flag -z                 add zipfile comment
# @flag -@                 read names from stdin
# @flag -o                 make zipfile as old as latest entry
# @flag -x                 exclude the following names
# @flag -i                 include only the following names
# @flag -F                 fix zipfile (-FF try harder)
# @flag -D                 do not add directory entries
# @flag -A                 adjust self-extracting exe
# @flag -J                 junk zipfile prefix (unzipsfx)
# @flag -T                 test zipfile integrity
# @flag -X                 eXclude eXtra file attributes
# @flag -y                 store symbolic links as the link instead of the referenced file
# @flag -e                 encrypt
# @option -n <suffixes>    don't compress these suffixes
# @flag -h2                show more help
# @option -b <path>
# @option -t <mmddyyyy>
# @arg file+

command eval "$(argc --argc-eval "$0" "$@")"