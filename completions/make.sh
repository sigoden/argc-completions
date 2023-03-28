#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b
# @flag -m
# @flag -B --always-make
# @option -C --directory
# @flag -d
# @option --debug <FLAGS>
# @flag -e --environment-overrides
# @option -E --eval <STRING>
# @option -f <FILE>
# @option --file <FILE>
# @option --makefile <FILE>
# @flag -i --ignore-errors
# @option -I --include-dir <DIRECTORY>
# @option -j --jobs <N>
# @flag -k --keep-going
# @option -l <N>
# @option --load-average <N>
# @option --max-load <N>
# @flag -L --check-symlink-times
# @flag -n
# @flag --just-print
# @flag --dry-run
# @flag --recon
# @option -o <FILE>
# @option --old-file <FILE>
# @option --assume-old <FILE>
# @option -O --output-sync <TYPE>
# @flag -p --print-data-base
# @flag -q --question
# @flag -r --no-builtin-rules
# @flag -R --no-builtin-variables
# @flag -s
# @flag --silent
# @flag --quiet
# @flag --no-silent
# @flag -S
# @flag --no-keep-going
# @flag --stop
# @flag -t --touch
# @flag --trace
# @flag -w --print-directory
# @flag --no-print-directory
# @option -W <FILE>
# @option --what-if <FILE>
# @option --new-file <FILE>
# @option --assume-new <FILE>
# @flag --warn-undefined-variables
# @arg target[`_choice_target`]

_choice_target() {
    if [[ -f Makefile ]]; then
        awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' Makefile
    fi
}


eval "$(argc "$0" "$@")"