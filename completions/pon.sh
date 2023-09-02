#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -q --quick    pppd hangs up after all ip-up scripts are run
# @arg provider[`_choice_provider`]

_choice_provider() {
    find /etc/ppp/peers/ -type f -printf '%f\n'
}

command eval "$(argc --argc-eval "$0" "$@")"