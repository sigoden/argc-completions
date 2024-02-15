_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e '/^\s*<flag>=/ d' \
            -e 's/\s*\[-A\]\s*/ /' \
            -e 's/^        \(\S\)/    \1/' \

    else
        $1 --help | \
        sed  's/\s*\[-A\]\s*/ /' | \
        sed -n "s/^        $2 /Usage: $1 $2 /p" | \
        sed  's/  \+.*//'

    fi
}

_patch_table() {
    if [[ "$*" == "opkg" ]]; then
        _patch_table_add_metadata inherit-flag-options | \
        _patch_table_edit_options \
            '--verbosity;[`_choice_verbosity_level`]' \
            '-V;[`_choice_verbosity_level`]' \

    elif [[ "$*" == "opkg upgrade" ]] \
      || [[ "$*" == "opkg configure" ]] \
      || [[ "$*" == "opkg remove" ]] \
      || [[ "$*" == "opkg files" ]] \
    ; then
        _patch_table_edit_arguments \
            'pkgs;[`_choice_installed_package`]' \
            'pkgs-regexp;[`_choice_installed_package`]' \
            'pkg;[`_choice_installed_package`]' \

    elif [[ "$*" == "opkg install" ]]; then
        _patch_table_edit_arguments \
            'pkgs;[`_choice_package`]' \

    elif [[ "$*" == "opkg flag" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'flag;[hold|noprune|user|ok|installed|unpacked]' \
            'pkgs;[`_choice_package`]' \

    elif [[ "$*" == "opkg info" ]] \
      || [[ "$*" == "opkg status" ]] \
      || [[ "$*" == "opkg download" ]] \
    ; then
        _patch_table_edit_arguments \
            'pkg-regexp;[`_choice_package`]' \
            'pkg;[`_choice_package`]' \

    elif [[ "$*" == "opkg depends" ]] \
      || [[ "$*" == "opkg whatdepends" ]] \
      || [[ "$*" == "opkg whatdependsrec" ]] \
      || [[ "$*" == "opkg whatrecommends" ]] \
      || [[ "$*" == "opkg whatsuggests" ]] \
      || [[ "$*" == "opkg whatprovides" ]] \
      || [[ "$*" == "opkg whatconflicts" ]] \
      || [[ "$*" == "opkg whatreplaces" ]] \
    ; then
        _patch_table_edit_arguments \
            'pkgname-pat;[`_choice_package`]' \

    else
        cat
    fi
}

_choice_verbosity_level() {
    cat <<-'EOF'
0	errors only
1	normal messages (default)
2	informative messages
3	debug
4	debug level 2
EOF
}

_choice_installed_package() {
    opkg list-installed | sed -n 's/^\(\S\+\) - \(.*\)/\1\t\2/p'
}

_choice_package() {
    opkg list | sed -n 's/^\(\S\+\) - \(.*\)/\1\t\2/p'
}
