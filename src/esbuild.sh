_patch_help() {
    $@ --help | \
    sed \
        -e '/^\s*-/ {s/:/-... :/; s/=\.\.\./=string/; s/\(-\S\+\)=string/\1 string/;}' \

}

_patch_table() {
    _patch_table_detect_value_type | \
    _patch_table_dedup_options \
        '--sourcemap' \
    | \
    _patch_table_edit_options \
        '--format;[iife|cjs|esm]' \
        '--sourcemap;[external|inline];Set sourcemap option' \
        '--supported; ;' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'

}
