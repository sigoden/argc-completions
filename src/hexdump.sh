_patch_help() { 
    $@ --help | sed '/^Arguments:/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--color;[auto|never|always]' \
        '--length;[`_choice_multi_suffixes`]' \
        '--skip;[`_choice_multi_suffixes`]' \

}

_choice_multi_suffixes() {
    if [[ "$ARGC_CWORD" =~ ^[0-9]+ ]]; then
        value=$(expr "$ARGC_CWORD" : '\([0-9]*\)')
        units=( KiB MiB GiB TiB PiB EiB ZiB YiB )
        for u in ${units[@]}; do
            echo "$value$u"
        done
    fi
}
