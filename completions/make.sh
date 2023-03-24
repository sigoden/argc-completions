#!/usr/bin/env bash
# Generated with `./generate.sh make`. DON'T MODIFY IT

# @flag -b
# @flag -m
# @flag -B --always-make
# @option -C --directory
# @flag -d
# @option --debug
# @flag -e --environment-overrides
# @option -E --eval
# @option -f
# @option --file
# @option --makefile
# @flag -i --ignore-errors
# @option -I --include-dir
# @option -j --jobs
# @flag -k --keep-going
# @option -l
# @option --load-average
# @option --max-load
# @flag -L --check-symlink-times
# @flag -n
# @flag --just-print
# @flag --dry-run
# @flag --recon
# @option -o
# @option --old-file
# @option --assume-old
# @option -O --output-sync
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
# @option -W
# @option --what-if
# @option --new-file
# @option --assume-new
# @flag --warn-undefined-variables
# @arg target[`_choice_target`]

_choice_target() {
    if [[ -f Makefile ]]; then
        cat Makefile | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}'
    fi
}


eval "$(argc "$0" "$@")"