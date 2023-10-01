#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ sdk install
# @cmd
# @arg candidate![`_choice_candidate`]
# @arg version[`_choice_version`]
# @arg path
install() {
    :;
}
# }} sdk install

# {{ sdk uninstall
# @cmd
# @arg candidate![`_choice_candidate`]
# @arg version![`_choice_installed_version`]
uninstall() {
    :;
}
# }} sdk uninstall

# {{ sdk list
# @cmd
# @arg candidate[`_choice_candidate`]
list() {
    :;
}
# }} sdk list

# {{ sdk use
# @cmd
# @arg candidate![`_choice_candidate`]
# @arg version![`_choice_installed_version`]
use() {
    :;
}
# }} sdk use

# {{ sdk config
# @cmd
config() {
    :;
}
# }} sdk config

# {{ sdk default
# @cmd
# @arg candidate![`_choice_candidate`]
# @arg version[`_choice_installed_version`]
default() {
    :;
}
# }} sdk default

# {{ sdk home
# @cmd
# @arg candidate![`_choice_candidate`]
# @arg version![`_choice_installed_version`]
home() {
    :;
}
# }} sdk home

# {{ sdk env
# @cmd
# @arg enum[init|install|clear]
env() {
    :;
}
# }} sdk env

# {{ sdk current
# @cmd
# @arg candidate[`_choice_candidate`]
current() {
    :;
}
# }} sdk current

# {{ sdk upgrade
# @cmd
# @arg candidate[`_choice_candidate`]
upgrade() {
    :;
}
# }} sdk upgrade

# {{ sdk version
# @cmd
version() {
    :;
}
# }} sdk version

# {{ sdk offline
# @cmd
# @arg enum[enable|disable]
offline() {
    :;
}
# }} sdk offline

# {{ sdk selfupdate
# @cmd
# @arg state[force]
selfupdate() {
    :;
}
# }} sdk selfupdate

# {{ sdk update
# @cmd
update() {
    :;
}
# }} sdk update

# {{ sdk flush
# @cmd
# @arg enum[tmp|metadata|version]
flush() {
    :;
}
# }} sdk flush

_choice_candidate() {
    cat "$HOME"/.sdkman/var/candidates | tr ',' '\n'
}

_choice_version() {
    curl --silent https://api.sdkman.io/2/candidates/$argc_candidate/linuxx64/versions/all | tr ',' '\n'
}

_choice_installed_version() {
    if [[ -d "$HOME"/.sdkman/candidates/$argc_candidate/current ]]; then
        ls -1 "$HOME"/.sdkman/candidates/$argc_candidate | grep -v current
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"