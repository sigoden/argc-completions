#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg cmd
# @arg args~[`_choice_args`]

# {{ yadm init
# @cmd Initialize an empty repository
init() {
    :;
}
# }} yadm init

# {{ yadm clone
# @cmd Clone an existing repository
clone() {
    :;
}
# }} yadm clone

# {{ yadm config
# @cmd Configure a setting
# @flag --global                                  use global config file
# @flag --system                                  use system config file
# @flag --local                                   use repository config file
# @flag --worktree                                use per-worktree config file
# @option -f --file <file>                        use given config file
# @option --blob <blob-id>                        read config from given blob object
# @option --get[`_choice_config_key`] <name>      get value: name [value-pattern]
# @option --get-all[`_choice_config_key`] <name>  get all values: key [value-pattern]
# @option --get-regexp <name-regex>               get values for regexp: name-regex [value-pattern]
# @option --get-urlmatch <section>                get value specific for the URL: section[.var] URL
# @option --replace-all[`_choice_replace_key`] <name> <value>  replace all matching variables: name value [value-pattern]
# @option --add <name> <value>                    add a new variable: name value
# @option --unset[`_choice_config_key`] <name>    remove a variable: name [value-pattern]
# @option --unset-all~[`_choice_config_key`] <name>  remove all matches: name [value-pattern]
# @option --rename-section <old-name> <new-name>  rename section: old-name new-name
# @option --remove-section <old-name>             remove a section: name
# @flag -l --list                                 list all
# @flag --fixed-value                             use string equality when comparing values to 'value-pattern'
# @flag -e --edit                                 open an editor
# @option --get-color <slot>                      find the color configured: slot [default]
# @option --get-colorbool <slot>                  find the color setting: slot [stdout-is-tty]
# @option -t --type <type>                        value is given this type
# @flag --bool                                    value is "true" or "false"
# @flag --int                                     value is decimal number
# @flag --bool-or-int                             value is --bool or --int
# @flag --bool-or-str                             value is --bool or string
# @flag --path                                    value is a path (file or directory name)
# @flag --expiry-date                             value is an expiry date
# @flag -z --null                                 terminate values with NUL byte
# @flag --name-only                               show variable names only
# @flag --includes                                respect include directives on lookup
# @flag --show-origin                             show origin of config (file, standard input, blob, command line)
# @option --show-scope[worktree|local|global|system|command]  show scope of config
# @option --default <value>                       with --get, use default value when missing entry
config() {
    :;
}
# }} yadm config

# {{ yadm list
# @cmd List tracked files
list() {
    :;
}
# }} yadm list

# {{ yadm alt
# @cmd Create links for alternates
alt() {
    :;
}
# }} yadm alt

# {{ yadm bootstrap
# @cmd Execute $HOME/.config/yadm/bootstrap
bootstrap() {
    :;
}
# }} yadm bootstrap

# {{ yadm encrypt
# @cmd Encrypt files
encrypt() {
    :;
}
# }} yadm encrypt

# {{ yadm decrypt
# @cmd Decrypt files
decrypt() {
    :;
}
# }} yadm decrypt

# {{ yadm perms
# @cmd Fix perms for private files
perms() {
    :;
}
# }} yadm perms

# {{ yadm enter
# @cmd Run sub-shell with GIT variables set
enter() {
    :;
}
# }} yadm enter

# {{ yadm git-crypt
# @cmd Run git-crypt commands for the yadm repo
git-crypt() {
    :;
}
# }} yadm git-crypt

# {{ yadm transcrypt
# @cmd Run transcrypt commands for the yadm repo
transcrypt() {
    :;
}
# }} yadm transcrypt

# {{ yadm gitconfig
# @cmd Pass options to the git config command.
gitconfig() {
    :;
}
# }} yadm gitconfig

# {{ yadm introspect
# @cmd Report internal yadm data.
introspect() {
    :;
}
# }} yadm introspect

# {{ yadm upgrade
# @cmd Version  3  of yadm uses a different directory for storing data
upgrade() {
    :;
}
# }} yadm upgrade

# {{ yadm version
# @cmd Print the version of yadm.
version() {
    :;
}
# }} yadm version

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    _argc_util_comp_subcommand 0 git
}

_choice_config_key() {
    yadm introspect configs
}

_choice_replace_key() {
    if [[ "${#argc_replace_all[@]}" -eq 1 ]]; then
        _choice_config_key
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"