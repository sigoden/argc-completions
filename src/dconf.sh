_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help 2>&1
    else
        cat <<-'EOF' | _patch_help_embed_help $@
# read KEY
# list DIR
# write KEY VALUE
# reset PATH
    -f      reset directories
# compile OUTPUT KEYFILEDIR
# update [DBDIR]
# watch PATH
# dump DIR
# load DIR
    -f      ignore changes to non-writable keys
EOF
    fi
}

_patch_table() {
    if [[ "$*" == "dconf read" ]] \
    || [[ "$*" == "dconf write" ]] \
    || [[ "$*" == "dconf reset" ]] \
    || [[ "$*" == "dconf watch" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'key;[`_choice_key`]'

    elif [[ "$*" == "dconf list" ]] \
      || [[ "$*" == "dconf dump" ]] \
      || [[ "$*" == "dconf load" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'key;[`_choice_group`]'

    else
        cat
    fi
}

_choice_key() {
    dconf dump / | \
    gawk '{
        if (match($0, /^\[(.*)\]$/, arr)) {
            dir = "/" arr[1]
        } else if (match($0, /^\s*$/)) {
            dir = ""
        } else if (dir != "" && match($0, /^([^= ]+)=/, arr)) {
            print dir "/" arr[1]
        }
    }' | \
    _argc_util_comp_parts /
}

_choice_group() {
    dconf dump / | \
    gawk '{
        if (match($0, /^\[(.*)\]$/, arr)) {
            print "/" arr[1] "/"
        }
    }' | \
    _argc_util_comp_parts /
}
