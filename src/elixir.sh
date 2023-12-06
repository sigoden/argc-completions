_patch_help() { 
    $@ --help 2>&1 | gawk '{
        if (match($0, /^  -/)) {
            line = $0
            line = gensub(/"(\S+)"/, "\\1", "g", line)
            gsub(" ", " ", line)
            if (match(line, /\(\*\)$/)) {
                line = substr(line, 1, RSTART - 1)
                line = gensub(/^  ((\S+)( \S+)+)/, "  \\1...", "g", line)
            }
            print line
        } else if (match($0, /^-/)) {
            echo "The " $0
        } else {
            print $0
        }
    }'
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'script(file:.exs)' 'args...'
}
