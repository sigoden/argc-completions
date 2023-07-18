#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --strip <NUM>                 Strip NUM leading components from file names.
# @option -F --fuzz <LINES>                Set the fuzz factor to LINES for inexact matching.
# @flag -l --ignore-whitespace             Ignore white space changes between patch and input.
# @flag -c --context                       Interpret the patch as a context difference.
# @flag -e --ed                            Interpret the patch as an ed script.
# @flag -n --normal                        Interpret the patch as a normal difference.
# @flag -u --unified                       Interpret the patch as a unified difference.
# @flag -N --forward                       Ignore patches that appear to be reversed or already applied.
# @flag -R --reverse                       Assume patches were created with old and new files swapped.
# @option -i --input <PATCHFILE>           Read patch from PATCHFILE instead of stdin.
# @option -o --output <FILE>               Output patched files to FILE.
# @option -r --reject-file <FILE>          Output rejects to FILE.
# @option -D --ifdef <NAME>                Make merged if-then-else output using NAME.
# @flag --merge                            Merge using conflict markers instead of creating reject files.
# @flag -E --remove-empty-files            Remove output files that are empty after patching.
# @flag -Z --set-utc                       Set times of patched files, assuming diff uses UTC (GMT).
# @flag -T --set-time                      Likewise, assuming local time.
# @option --quoting-style <WORD>           output file names using quoting style WORD.
# @flag -b --backup                        Back up the original contents of each file.
# @flag --backup-if-mismatch               Back up if the patch does not match exactly.
# @flag --no-backup-if-mismatch            Back up mismatches only if otherwise requested.
# @option -V --version-control[simple|numbered|existing] <STYLE>  Use STYLE version control.
# @option -B --prefix                      Prepend PREFIX to backup file names.
# @option -Y --basename-prefix <PREFIX>    Prepend PREFIX to backup file basenames.
# @option -z --suffix                      Append SUFFIX to backup file names.
# @option -g --get <NUM>                   Get files from RCS etc.
# @flag -t --batch                         Ask no questions; skip bad-Prereq patches; assume reversed.
# @flag -f --force                         Like -t, but ignore bad-Prereq patches, and assume unreversed.
# @flag -s                                 Work silently unless an error occurs.
# @flag --quiet                            Work silently unless an error occurs.
# @flag --silent                           Work silently unless an error occurs.
# @flag --verbose                          Output extra information about the work being done.
# @flag --dry-run                          Do not actually change any files; just print what would happen.
# @flag --posix                            Conform to the POSIX standard.
# @option -d --directory <DIR>             Change the working directory to DIR first.
# @option --reject-format[context|unified] <FORMAT>  Create 'context' or 'unified' rejects.
# @flag --binary                           Read and write data in binary mode.
# @option --read-only[ignore|warn|fail] <BEHAVIOR>  How to handle read-only input files: 'ignore' that they are read-only, 'warn' (default), or 'fail'.
# @flag -v --version                       Output version info.
# @flag --help                             Output this help.
# @arg originfile
# @arg patchfile

command eval "$(argc --argc-eval "$0" "$@")"