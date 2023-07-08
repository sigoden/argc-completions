#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b                                Ignored for compatibility.
# @flag -m                                Ignored for compatibility.
# @flag -B --always-make                  Unconditionally make all targets.
# @option -C --directory                  Change to DIRECTORY before doing anything.
# @flag -d                                Print lots of debugging information.
# @option --debug <FLAGS>                 Print various types of debugging information.
# @flag -e --environment-overrides        Environment variables override makefiles.
# @option -E --eval <STRING>              Evaluate STRING as a makefile statement.
# @option -f <FILE>                       Read FILE as a makefile.
# @option --file <FILE>                   Read FILE as a makefile.
# @option --makefile <FILE>               Read FILE as a makefile.
# @flag -h --help                         Print this message and exit.
# @flag -i --ignore-errors                Ignore errors from recipes.
# @option -I --include-dir <DIRECTORY>    Search DIRECTORY for included makefiles.
# @option -j --jobs <N>                   Allow N jobs at once; infinite jobs with no arg.
# @flag -k --keep-going                   Keep going when some targets can't be made.
# @option -l <N>                          Don't start multiple jobs unless load is below N.
# @option --load-average <N>              Don't start multiple jobs unless load is below N.
# @option --max-load <N>                  Don't start multiple jobs unless load is below N.
# @flag -L --check-symlink-times          Use the latest mtime between symlinks and target.
# @flag -n                                Don't actually run any recipe; just print them.
# @flag --just-print                      Don't actually run any recipe; just print them.
# @flag --dry-run                         Don't actually run any recipe; just print them.
# @flag --recon                           Don't actually run any recipe; just print them.
# @option -o <FILE>                       Consider FILE to be very old and don't remake it.
# @option --old-file <FILE>               Consider FILE to be very old and don't remake it.
# @option --assume-old <FILE>             Consider FILE to be very old and don't remake it.
# @option -O --output-sync <TYPE>         Synchronize output of parallel jobs by TYPE.
# @flag -p --print-data-base              Print make's internal database.
# @flag -q --question                     Run no recipe; exit status says if up to date.
# @flag -r --no-builtin-rules             Disable the built-in implicit rules.
# @flag -R --no-builtin-variables         Disable the built-in variable settings.
# @flag -s                                Don't echo recipes.
# @flag --silent                          Don't echo recipes.
# @flag --quiet                           Don't echo recipes.
# @flag --no-silent                       Echo recipes (disable --silent mode).
# @flag -S                                Turns off -k.
# @flag --no-keep-going                   Turns off -k.
# @flag --stop                            Turns off -k.
# @flag -t --touch                        Touch targets instead of remaking them.
# @flag --trace                           Print tracing information.
# @flag -v --version                      Print the version number of make and exit.
# @flag -w --print-directory              Print the current directory.
# @flag --no-print-directory              Turn off -w, even if it was turned on implicitly.
# @option -W <FILE>                       Consider FILE to be infinitely new.
# @option --what-if <FILE>                Consider FILE to be infinitely new.
# @option --new-file <FILE>               Consider FILE to be infinitely new.
# @option --assume-new <FILE>             Consider FILE to be infinitely new.
# @flag --warn-undefined-variables        Warn when an undefined variable is referenced.
# @arg target*[`_choice_target`]

_choice_target() {
    if [[ -f Makefile ]]; then
        gawk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' Makefile
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"