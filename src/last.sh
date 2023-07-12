_patch_help() { 
    $@ --help | sed '/^ -<number>/ d'
}

_patch_table() { 
    _patch_table_edit_options '--time-format;[notime|short|full|iso]' | \
    _patch_table_edit_arguments ';;' 'user-or-tty;*[`_choice_value`]'
}

_choice_value() {
    _argc_util_parallel _choice_user ::: _choice_tty
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_tty() {
    ps aux | gawk '{ if ($7 != "?" && NR > 1) {print $7 "\t" $1} }'
}