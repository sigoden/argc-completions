#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -@ --loud                               output annoying low-level debug info while running
# @flag -0 --print-null                         when printing matches, use null bytes instead of CR/LF bytes, just like 'find -print0' does.
# @flag -1 --one-file-system                    do not match files that are on different filesystems or devices
# @flag -A --no-hidden                          exclude hidden files from consideration
# @flag -B --dedupe                             issue the btrfs same-extents ioctl to trigger a deduplication on disk.
# @option -C --chunk-size <BYTES>               set the I/O chunk size manually; larger values may improve performance on rotating media by reducing the number of head seeks required, but also increases memory usage and can reduce performance in some cases
# @flag -D --debug                              if this feature is compiled in, show debugging statistics and info at the end of program execution
# @flag -d --delete                             prompt user for files to preserve, deleting all others (see CAVEATS below)
# @flag -f --omit-first                         omit the first file in each set of matches
# @flag -H --hard-links                         normally, when two or more files point to the same disk area they are treated as non-duplicates; this option will change this behavior
# @flag -h --help                               displays help
# @flag -i --reverse                            reverse (invert) the sort order of matches
# @flag -I --isolate                            isolate each command-line parameter from one another; only match if the files are under different parameter specifications
# @flag -L --link-hard                          replace all duplicate files with hardlinks to the first file in each set of duplicates
# @flag -m --summarize                          summarize duplicate file information
# @flag -M --print-summarize                    print matches and summarize the duplicate file information at the end
# @flag -N --no-prompt                          when used together with --delete, preserve the first file in each set of duplicates and delete the others without prompting the user
# @flag -O --param-order                        parameter order preservation is more important than the chosen sort; this is particularly useful with the -N option to ensure that automatic deletion behaves in a controllable way
# @option -o --order[`_choice_order`] <WORD>    order files according to WORD: time - sort by modification time name - sort by filename (default)
# @flag -p --permissions                        don't consider files with different owner/group or permission bits as duplicates
# @option -P --print[`_choice_print`] <type>    print extra information to stdout; valid options are: early - matches that pass early size/permission/link/etc.
# @flag -Q --quick                              [WARNING: RISK OF DATA LOSS, SEE CAVEATS] skip byte-for-byte verification of duplicate pairs (use hashes only)
# @flag -q --quiet                              hide progress indicator
# @flag -R --recurse:                           for each directory given after this option follow subdirectories encountered within (note the ':' at the end of option; see the Examples section below for further explanation)
# @flag -r --recurse                            for every directory given follow subdirectories encountered within
# @flag -l --link-soft                          replace all duplicate files with symlinks to the first file in each set of duplicates
# @flag -S --size                               show size of duplicate files
# @flag -s --symlinks                           follow symlinked directories
# @flag -T --partial-only                       [WARNING: EXTREME RISK OF DATA LOSS, SEE CAVEATS] match based on hash of first block of file data, ignoring the rest
# @option -u --print-unique[non-duplicate|unmatched]  print only a list of unique files
# @flag -v --version                            display jdupes version and compilation feature flags
# @option -X --ext-filter[`_choice_ext_filter`] <spec:info>  exclude/filter files based on specified criteria; general format:
# @flag -z --zero-match                         consider zero-length files to be duplicates; this replaces the old default behavior when -n was not specified
# @flag -Z --soft-abort                         if the user aborts the program (as with CTRL-C) act on the matches that were found before the abort was received.
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