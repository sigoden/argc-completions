#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -r    Cause pppd to drop the line and redial.
# @flag -d    Toggle the state of pppd's debug option.
# @flag -c    Cause pppd to renegotiate compression.
# @flag -a    Stop all pppd's.
# @flag -h    Print this help summary and exit.
# @flag -v    Print version and exit.
# @arg provider[`_choice_provider`]

_choice_provider() {
    find /etc/ppp/peers/ -type f -printf '%f\n'
}

command eval "$(argc --argc-eval "$0" "$@")"