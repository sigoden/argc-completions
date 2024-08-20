#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                          this help
# @option -c --card[`_choice_card`] <N>    select the card
# @option -D --device <N>                  select the device, default 'default'
# @flag -d --debug                         debug mode
# @flag -n --nocheck                       do not perform range checking
# @flag -v --version                       print version of this program
# @flag -q --quiet                         be quiet
# @flag -i --inactive                      show also inactive controls
# @flag -a --abstract                      L select abstraction level (none or basic)
# @flag -s --stdin                         Read and execute commands from stdin sequentially
# @flag -R --raw-volume                    Use the raw value (default)
# @flag -M --mapped-volume                 Use the mapped volume

# {{ amixer scontrols
# @cmd show <all> mixer simple controls
scontrols() {
    :;
}
# }} amixer scontrols

# {{ amixer scontents
# @cmd show <contents> of all mixer simple controls (default command)
scontents() {
    :;
}
# }} amixer scontents

# {{ amixer sset
# @cmd set contents for one mixer simple control
# @alias set
# @arg sid[`_choice_control`]
# @arg p
sset() {
    :;
}
# }} amixer sset

# {{ amixer sget
# @cmd get contents for one mixer simple control
# @alias get
# @arg sid[`_choice_control`]
sget() {
    :;
}
# }} amixer sget

# {{ amixer controls
# @cmd show <all> controls for given card
controls() {
    :;
}
# }} amixer controls

# {{ amixer contents
# @cmd show <contents> of all controls for given card
contents() {
    :;
}
# }} amixer contents

# {{ amixer cset
# @cmd set control contents for one control
# @arg cid[`_choice_content`]
# @arg p
cset() {
    :;
}
# }} amixer cset

# {{ amixer cget
# @cmd get control contents for one control
# @arg cid[`_choice_content`]
cget() {
    :;
}
# }} amixer cget

# {{ amixer sevents
# @cmd show the mixer events for simple controls
sevents() {
    :;
}
# }} amixer sevents

# {{ amixer events
# @cmd show the mixer events for simple controls
events() {
    :;
}
# }} amixer events

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}

_choice_control() {
    amixer scontrols | sed -n "s/Simple mixer control '\(.*\)',.*/\1/p"
}

_choice_content() {
    amixer contents | sed -n "s/^numid.*,name='\(.*\)'$/\1/p"
}

command eval "$(argc --argc-eval "$0" "$@")"