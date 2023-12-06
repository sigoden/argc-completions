_patch_help() {
    $@ --help | sed '/^Commands:/,$ d'
}

_patch_table() {
    _patch_table_dedup_options '--gui' | \
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
}

_choice_args() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    cat <<-'EOF' | _argc_util_comp_tv
list;;list categories
list-all;;list all categories and their verbs
apps=list;;list verbs in category 'applications'
benchmarks list;;list verbs in category 'benchmarks'
dlls=list;;list verbs in category 'dlls'
fonts=list;;list verbs in category 'fonts'
games=list;;list verbs in category 'games'
settings=list;;list verbs in category 'settings'
list-cached;;list cached-and-ready-to-install verbs
list-download;;list verbs which download automatically
list-manual-download;;list verbs which download with some help from the user
list-installed;;list already-installed verbs
arch=32,64;;create wineprefix with 32 or 64 bit, this option must be given before prefix=foobar and will not work in case of the default wineprefix.
prefix=foobar;;select WINEPREFIX=/home/sigo/.local/share/wineprefixes/foobar
annihilate;;Delete ALL DATA AND APPLICATIONS INSIDE THIS WINEPREFIX
EOF
}
