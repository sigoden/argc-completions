_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e '/^\s*-/ s/ | -/, -/' \
            -e '/^ [A-Z]/ c\Commands:'

    else
        $@ --help | \
        sed \
            -e 's/^  //' \
            -e '/^SYNOPSIS/,/^\s*/ {s/^  /  virsh /;s/{\[-\S\+][^}]\+}\.\.\.//;}' \
            -e 's/^  \[\(-[^]]\+\)\]/  \1/' \


    fi
}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_edit_options \
        '--domain;[`_choice_domain`]' \
    | \
    _patch_table_edit_arguments \
        'domain;[`_choice_domain`]' \
        'network;[`_choice_network`]' \

}

_choice_domain() {
    virsh -q list --name --all
}

_choice_network() {
    virsh -q net-list --name --all
}
