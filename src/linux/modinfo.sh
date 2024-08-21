_patch_table() { 
    _patch_table_edit_options \
        '--field;[author|description|license|parm|filename]' \
        '--set-version;[`_choice_set_version`]' \
    | \
    _patch_table_edit_arguments ';;' 'mod;*[`_choice_mod`]'
}

_choice_set_version() {
    ls -1 "$argc_basedir/lib/modules"
}

_choice_mod() {
    version="${argc_set_version:-`uname -r`}"
    find "$argc_basedir/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}
