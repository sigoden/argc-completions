_patch_help() { 
    $@ --help | \
    sed -n '/^-/,/^$/ {s/^\s*\one [^:]\+: \(.*\)$/[possible values: \1]/; s/^/        /; s/^\s\+-/  -/; p}'
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'paths...'
}
