#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --altdir <directory>      change the alternatives directory (default is /etc/alternatives).
# @option --admindir <directory>    change the administrative directory (default is /var/lib/dpkg/alternatives).
# @option --instdir <directory>     change the installation directory.
# @option --root <directory>        change the filesystem root directory.
# @option --log <file>              change the log file.
# @flag --force                     allow replacing files with alternative links.
# @flag --skip-auto                 skip prompt for alternatives correctly configured in automatic mode (relevant for --config only)
# @flag --quiet                     quiet operation, minimal output.
# @flag --verbose                   verbose operation, more output.
# @flag --debug                     debug output, way more output.
# @flag --help                      show this help message.
# @flag --version                   show the version.

# {{ update-alternatives --install
# @cmd add a group of alternatives to the system.
# @arg link-path!
# @arg name![`_choice_alternative`]
# @arg path!
# @arg priority!
--install() {
    :;
}
# }} update-alternatives --install

# {{ update-alternatives --remove
# @cmd remove <path> from the <name> group alternative.
# @arg name![`_choice_alternative`]
# @arg path!
--remove() {
    :;
}
# }} update-alternatives --remove

# {{ update-alternatives --remove-all
# @cmd remove <name> group from the alternatives system.
# @arg name![`_choice_alternative`]
--remove-all() {
    :;
}
# }} update-alternatives --remove-all

# {{ update-alternatives --auto
# @cmd switch the master link <name> to automatic mode.
# @arg name![`_choice_alternative`]
--auto() {
    :;
}
# }} update-alternatives --auto

# {{ update-alternatives --display
# @cmd display information about the <name> group.
# @arg name![`_choice_alternative`]
--display() {
    :;
}
# }} update-alternatives --display

# {{ update-alternatives --query
# @cmd machine parseable version of --display <name>.
# @arg name![`_choice_alternative`]
--query() {
    :;
}
# }} update-alternatives --query

# {{ update-alternatives --list
# @cmd display all targets of the <name> group.
# @arg name![`_choice_alternative`]
--list() {
    :;
}
# }} update-alternatives --list

# {{ update-alternatives --get-selections
# @cmd list master alternative names and their status.
--get-selections() {
    :;
}
# }} update-alternatives --get-selections

# {{ update-alternatives --set-selections
# @cmd read alternative status from standard input.
--set-selections() {
    :;
}
# }} update-alternatives --set-selections

# {{ update-alternatives --config
# @cmd show alternatives for the <name> group and ask the user to select which one to use.
# @arg name![`_choice_alternative`]
--config() {
    :;
}
# }} update-alternatives --config

# {{ update-alternatives --set
# @cmd set <path> as alternative for <name>.
# @arg name![`_choice_alternative`]
# @arg path!
--set() {
    :;
}
# }} update-alternatives --set

# {{ update-alternatives --all
# @cmd call --config on all alternatives.
--all() {
    :;
}
# }} update-alternatives --all

_choice_alternative() {
    local admindir="$argc_admindir"
    if [[ -z "$admindir" ]]; then
        for i in alternatives dpkg/alternatives rpm/alternatives; do
            [[ -d /var/lib/$i ]] && admindir=/var/lib/$i && break
        done
    fi
    ls -1 "$admindir"
}

command eval "$(argc --argc-eval "$0" "$@")"