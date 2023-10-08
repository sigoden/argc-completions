_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e 's/^  \(-\S\)|\(--\S\+\)/  \2, \1/' \
            -e '/ --help\|--version / d' \
            -e '/^Commands:/,/^\s*$/ s/  -/  \\-/' \
            -e '/^Options:/,/^\s*$/ {s/^  -z#/  -z<v>/;s/^  \(-\S\)</  \1- </;}' \

    else
        $1 --help | \
        sed -n "s/^\s*\(.*|\)\?\($2 .*\) [A-Z].*/Usage: $1 \2/p"

    fi
}

_patch_table() {
    if [[ "$*" == "dpkg-deb" ]]; then
        _patch_table_add_metadata inherit-flag-options

    else
        _patch_table_edit_arguments \
            'deb(file:.deb)' \

    fi
}
