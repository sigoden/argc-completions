#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ update-alternatives --install
# @cmd
# @arg link-path!
# @arg name![`_choice_alternative`]
# @arg path!
# @arg priority!
--install() {
    :;
}
# }} update-alternatives --install

# {{ update-alternatives --remove
# @cmd
# @arg name![`_choice_alternative`]
# @arg path!
--remove() {
    :;
}
# }} update-alternatives --remove

# {{ update-alternatives --remove-all
# @cmd
# @arg name![`_choice_alternative`]
--remove-all() {
    :;
}
# }} update-alternatives --remove-all

# {{ update-alternatives --auto
# @cmd
# @arg name![`_choice_alternative`]
--auto() {
    :;
}
# }} update-alternatives --auto

# {{ update-alternatives --display
# @cmd
# @arg name![`_choice_alternative`]
--display() {
    :;
}
# }} update-alternatives --display

# {{ update-alternatives --query
# @cmd
# @arg name![`_choice_alternative`]
--query() {
    :;
}
# }} update-alternatives --query

# {{ update-alternatives --list
# @cmd
# @arg name![`_choice_alternative`]
--list() {
    :;
}
# }} update-alternatives --list

# {{ update-alternatives --get-selections
# @cmd
--get-selections() {
    :;
}
# }} update-alternatives --get-selections

# {{ update-alternatives --set-selections
# @cmd
--set-selections() {
    :;
}
# }} update-alternatives --set-selections

# {{ update-alternatives --config
# @cmd
# @arg name![`_choice_alternative`]
--config() {
    :;
}
# }} update-alternatives --config

# {{ update-alternatives --set
# @cmd
# @arg name![`_choice_alternative`]
# @arg path!
--set() {
    :;
}
# }} update-alternatives --set

# {{ update-alternatives --all
# @cmd
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