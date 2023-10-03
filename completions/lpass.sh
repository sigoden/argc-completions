#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ lpass login
# @cmd
# @flag --trust
# @flag --plaintext-key
# @flag -f --force
# @option --color[auto|never|always]
# @arg username
login() {
    :;
}
# }} lpass login

# {{ lpass logout
# @cmd
# @flag -f --force
# @option --color[auto|never|always]
logout() {
    :;
}
# }} lpass logout

# {{ lpass passwd
# @cmd
passwd() {
    :;
}
# }} lpass passwd

# {{ lpass show
# @cmd
# @option --sync[auto|now|no]
# @flag -c --clip
# @flag -q --quiet
# @flag -x --expand-multi
# @flag -j --json
# @flag --all
# @flag --username
# @flag --password
# @flag --url
# @flag --notes
# @option --field
# @flag --id
# @flag --name
# @option --attach <ATTACHID>
# @flag -G --basic-regexp
# @flag -F --fixed-strings
# @option --color[auto|never|always]
# @arg uniquename-uniqueid[`_choice_name`] <UNIQUENAME|UNIQUEID>
show() {
    :;
}
# }} lpass show

# {{ lpass ls
# @cmd
# @option --sync[auto|now|no]
# @flag -l --long
# @flag -m
# @flag -u
# @option --color[auto|never|always]
# @arg group[`_choice_group`]
ls() {
    :;
}
# }} lpass ls

# {{ lpass mv
# @cmd
# @option --color[auto|never|always]
# @arg uniquename-uniqueid[`_choice_name`] <UNIQUENAME|UNIQUEID>
# @arg group[`_choice_group`]
mv() {
    :;
}
# }} lpass mv

# {{ lpass add
# @cmd
# @option --sync[auto|now|no]
# @flag --non-interactive
# @option --color[auto|never|always]
# @flag --username
# @flag --password
# @flag --url
# @flag --notes
# @option --field
# @option --note-type <NOTETYPE>
# @arg name[`_choice_name`]
add() {
    :;
}
# }} lpass add

# {{ lpass edit
# @cmd
# @option --sync[auto|now|no]
# @flag --non-interactive
# @option --color[auto|never|always]
# @flag --name
# @flag --username
# @flag --password
# @flag --url
# @flag --notes
# @option --field
# @arg name-uniqueid[`_choice_name`] <NAME|UNIQUEID>
edit() {
    :;
}
# }} lpass edit

# {{ lpass generate
# @cmd
# @option --sync[auto|now|no]
# @flag -c --clip
# @option --username
# @option --url
# @flag --no-symbols
# @arg name-uniqueid[`_choice_name`] <NAME|UNIQUEID>
# @arg length
generate() {
    :;
}
# }} lpass generate

# {{ lpass duplicate
# @cmd
# @option --sync[auto|now|no]
# @option --color[auto|never|always]
# @arg uniquename-uniqueid[`_choice_name`] <UNIQUENAME|UNIQUEID>
duplicate() {
    :;
}
# }} lpass duplicate

# {{ lpass rm
# @cmd
# @option --sync[auto|now|no]
# @option --color[auto|never|always]
# @arg uniquename-uniqueid[`_choice_name`] <UNIQUENAME|UNIQUEID>
rm() {
    :;
}
# }} lpass rm

# {{ lpass status
# @cmd
# @flag -q --quiet
# @option --color[auto|never|always]
status() {
    :;
}
# }} lpass status

# {{ lpass sync
# @cmd
# @flag -b --background
# @option --color[auto|never|always]
sync() {
    :;
}
# }} lpass sync

# {{ lpass export
# @cmd
# @option --sync[auto|now|no]
# @option --color[auto|never|always]
# @option --fields <FIELDLIST>
export() {
    :;
}
# }} lpass export

# {{ lpass import
# @cmd
# @flag --keep-dupes
# @arg csv_filename
import() {
    :;
}
# }} lpass import

# {{ lpass share
# @cmd
share() {
    :;
}

# {{{ lpass share userls
# @cmd
# @arg share
share::userls() {
    :;
}
# }}} lpass share userls

# {{{ lpass share useradd
# @cmd
# @option --read-only <[true|false #>
# @option --hidden <true|false>
# @option --admin <true|false>
# @arg share
# @arg username
share::useradd() {
    :;
}
# }}} lpass share useradd

# {{{ lpass share usermod
# @cmd
# @option --read-only <[true|false #>
# @option --hidden <true|false>
# @option --admin <true|false>
# @arg share
# @arg username
share::usermod() {
    :;
}
# }}} lpass share usermod

# {{{ lpass share userdel
# @cmd
# @arg share
# @arg username
share::userdel() {
    :;
}
# }}} lpass share userdel

# {{{ lpass share create
# @cmd
# @arg share
share::create() {
    :;
}
# }}} lpass share create

# {{{ lpass share rm
# @cmd
# @arg share
share::rm() {
    :;
}
# }}} lpass share rm

# {{{ lpass share limit
# @cmd
# @flag --deny
# @flag --allow
# @flag --add
# @flag --rm
# @flag --clear
# @arg share
# @arg username
# @arg sites*
share::limit() {
    :;
}
# }}} lpass share limit
# }} lpass share

_choice_name() {
    lpass ls | grep "^$ARGC_CWORD" | sed -e "s/ \[id.*//g"   
    lpass ls | grep "/$ARGC_CWORD" | sed -e "s/ \[id.*//g" | gawk -F '/' '{print $NF}'
}

_choice_group() {
    lpass ls | grep "^$ARGC_CWORD.*/" | gawk -F '/' '{print $1}'   
}

command eval "$(argc --argc-eval "$0" "$@")"