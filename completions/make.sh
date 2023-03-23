#!/usr/bin/env bash
# Generated with `./generate.sh make`. DON'T MODIFY IT

# @flag -B --always-make
# @option -C --directory
# @flag -d --debug
# @flag -e --environment-overrides
# @option -E --eval
# @option -f --file
# @option --makefile
# @flag -i --ignore-errors
# @option -I --include-dir
# @option -j --jobs
# @flag -k --keep-going
# @option -l --load-average
# @option --max-load
# @flag -L --check-symlink-times
# @flag -n --just-print
# @flag --dry-run
# @flag --recon
# @option -o --old-file
# @option --assume-old
# @option -O --output-sync
# @flag -p --print-data-base
# @flag -q --question
# @flag -r --no-builtin-rules
# @flag -R --no-builtin-variables
# @flag -s --silent
# @flag --quiet
# @flag --no-silent
# @flag -S --no-keep-going
# @flag --stop
# @flag -t --touch
# @flag --trace
# @flag -w --print-directory
# @flag --no-print-directory
# @option -W --what-if
# @option --new-file
# @option --assume-new
# @flag --warn-undefined-variables
# @arg target[`__choice_target`]

__choice_target() {
    if [[ -f Makefile ]]; then
        cat Makefile | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}'
    fi
}


eval "$(argc "$0" "$@")"