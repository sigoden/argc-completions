#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                this help
# @option -c --card[`_choice_card`] <NUMBER>     sound card number or id
# @option -D --device <NAME>                     mixer device name
# @flag -m --mouse                               enable mouse
# @flag -M --no-mouse                            disable mouse
# @option -f --config <FILE>                     configuration file
# @flag -F --no-config                           do not load configuration file
# @option -V --view[playback|capture|all] <MODE>  starting view mode: playback/capture/all
# @flag -g --no-color                            toggle using of colors
# @option -a --abstraction[none|basic] <NAME>    mixer abstraction level: none/basic

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}

command eval "$(argc --argc-eval "$0" "$@")"