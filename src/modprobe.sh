_patch_help() { 
    $@ --help | sed \
        -e 's/-i, --ignore-remove/    --ignore-remove/' \
        -e 's/-c, --show-config/    --show-config/' \
        -e 's/-n, --show/    --show/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--set-version;[`_choice_set_version`]' \
    | \
    _patch_table_edit_arguments ';;' 'mod;*[`_choice_mod`]'
}

_choice_set_version() {
    ls -1 "$argc_basedir/lib/modules"
}

_choice_mod() {
    if [[ -n "$argc_remove" ]]; then
        lsmod | gawk '{if(NR>1) { print $1}}'
        return
    fi
    version="${argc_set_version:-`uname -r`}"
    find "$argc_basedir/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}
