#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f                   Force the operation to proceed even if it is anticipated to require an excessive amount of memory or CPU time.
# @option --logN <value>     Set the work parameter N to 2^value.
# @option -M <maxmem>        Use at most maxmem bytes of RAM to compute the derived encryption key.
# @option -m <maxmemfrac>    Use at most the fraction maxmemfrac of the available RAM to compute the derived encryption key.
# @flag -P                   Deprecated synonym for --passphrase dev:stdin-once.
# @option -p <value>         Set the work parameter p to value.
# @option --passphrase[`_choice_passphrase`] <method:arg>  Read the passphrase using the specified method.
# @option -r <value>         Set the work parameter r to value.
# @option -t <maxtime>       Use at most maxtime seconds of CPU time to compute the derived encryption key.
# @option -v[N|r|p]          Print encryption parameters and memory/cpu limits.
# @flag --version            Print version of scrypt, and exit.
# @arg enum[enc|dec|info]
# @arg infile
# @arg outfile

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_passphrase() {
    cat <<-'EOF' | _argc_util_comp_kv :
dev=tty-stdin,stdin-once,tty-once
env=`_choice_env_key`
file=__argc_value=path
EOF
}

_choice_env_key() {
    env | sed 's/=/\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"