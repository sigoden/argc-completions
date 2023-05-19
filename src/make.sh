_patch_help() {
    make --help | sed 's/\[target\] \.\.\./[target].../'
}

_patch_table() {
    _patch_util_bind_choices_fn 'target:_choice_target'
}

_choice_target() {
    if [[ -f Makefile ]]; then
        awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' Makefile
    fi
}