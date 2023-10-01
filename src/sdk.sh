_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# install <candidate> [version] [path]
# uninstall <candidate> <version>
# list [candidate]
# use <candidate> <version>
# config
# default <candidate> [version]
# home <candidate> <version>
# env {init|install|clear}
# current [candidate]
# upgrade [candidate]
# version
# offline {enable|disable}
# selfupdate {force}
# update
# flush {tmp|metadata|version}
EOF
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'candidate;[`_choice_candidate`]' \
    )"

    if [[ "$*" == "sdk install" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'version;[`_choice_version`]' \

    elif [[ "$*" == "sdk uninstall" ]] \
      || [[ "$*" == "sdk use" ]] \
      || [[ "$*" == "sdk default" ]] \
      || [[ "$*" == "sdk home" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'version;[`_choice_installed_version`]' \

    elif [[ "$*" == "sdk selfupdate" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'state;[force]'

    else
        echo "$table"
    fi
}

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
