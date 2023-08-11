_patch_table() { 
    _patch_table_edit_arguments ';;' 'modulename;[`_choice_mod`]'
}

_choice_mod() {
    version=`uname -r`
    find "/lib/modules/$version/kernel/" -type f -name *.ko | \
    gawk '{split($0, parts, "/"); v=parts[length(parts)]; gsub(/.ko$/, "", v); print v}'
}
