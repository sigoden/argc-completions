#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -@ --loud                               output annoying low-level debug info while running
# @flag -0 --print-null                         output nulls instead of CR/LF (like 'find -print0')
# @flag -1 --one-file-system                    do not match files on different filesystems/devices
# @flag -A --no-hidden                          exclude hidden files from consideration
# @flag -B --dedupe                             do a copy-on-write (reflink/clone) deduplication
# @option -C --chunk-size <#>                   override I/O chunk size in KiB (min 4, max 262144)
# @flag -d --delete                             prompt user for files to preserve and delete all others; important: under particular circumstances, data may be lost when using this option together with -s or --symlinks, or when specifying a particular directory more than once; refer to the documentation for additional information
# @flag -e --error-on-dupe                      exit on any duplicate found with status code 255
# @flag -f --omit-first                         omit the first file in each set of matches
# @flag -h --help                               display this help message
# @flag -H --hard-links                         treat any linked files as duplicate files.
# @flag -i --reverse                            reverse (invert) the match sort order
# @flag -I --isolate                            files in the same specified directory won't match
# @flag -j --json                               produce JSON (machine-readable) output
# @flag -l --link-soft                          make relative symlinks for duplicates w/o prompting
# @flag -L --link-hard                          hard link all duplicate files without prompting
# @flag -m --summarize                          summarize dupe information
# @flag -M --print-summarize                    print match sets and --summarize at the end
# @flag -N --no-prompt                          together with --delete, preserve the first file in each set of duplicates and delete the rest without prompting the user
# @option -o --order[`_choice_order`] <BY>      select sort order for output, linking and deleting; by mtime (BY=time) or filename (BY=name, the default)
# @flag -O --param-order                        Parameter order is more important than selected -o sort
# @flag -p --permissions                        don't consider files with different owner/group or permission bits as duplicates
# @option -P --print[`_choice_print`] <type>    print extra info
# @flag -q --quiet                              hide progress indicator
# @flag -Q --quick                              skip byte-for-byte confirmation for quick matching WARNING: -Q can result in data loss! Be very careful!
# @flag -r --recurse                            for every directory, process its subdirectories too
# @flag -R --recurse:-                          for each directory given after this option follow subdirectories encountered within (note the ':' at the end of the option, manpage for more details)
# @flag -s --symlinks                           follow symlinks
# @flag -S --size                               show size of duplicate files
# @flag -t --no-change-check                    disable security check for file changes (aka TOCTTOU)
# @flag -T --partial-only                       match based on partial hashes only.
# @flag -u --print-unique                       print only a list of unique (non-matched) files
# @flag -U --no-trav-check                      disable double-traversal safety check (BE VERY CAREFUL) This fixes a Google Drive File Stream recursion issue
# @flag -v --version                            display jdupes version and license information
# @option -X --ext-filter[`_choice_ext_filter`] <x:y>  filter files based on specified criteria Use '-X help' for detailed extfilter help
# @option -y --hash-db <file>                   use a hash database text file to speed up repeat runs Passing '-y .' will expand to  '-y jdupes_hashdb.txt'
# @flag -z --zero-match                         consider zero-length files to be duplicates
# @flag -Z --soft-abort                         If the user aborts (i.e.
# @arg files
# @arg and-or <and/or>
# @arg directories*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_order() {
    cat <<-'EOF'
time	sort by modification time
name	sort by filename (default)
EOF
}

_choice_print() {
    cat <<-'EOF'
early	matches that pass early size/permission/link/etc. checks
partial	files whose partial hashes match 
fullhash	files whose full hashes match
EOF
}

_choice_ext_filter() {
    cat <<-'EOF' | _argc_util_comp_kv ':'
size+=;;match only if size is greater (+) than the specified number
size-=;;match only if size is less than (-) the specified number
noext=;;exclude files with certain extension(s), specified as a comma-separated list. Do not use a leading dot.
onlyext=;;only include files with certain extension(s), specified as a comma-separated list. Do not use a leading dot.
nostr=;;exclude all paths containing the substring text_string.
onlystr=;;require all paths to contain the substring text_string.
newer=;;only include files newer than specified date.
older=;;only include files older than specified date.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"