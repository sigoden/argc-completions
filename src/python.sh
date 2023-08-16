_patch_help() {
    $@ --help | sed '/^Options/,/^Arguments/ s/\s*:/    /'
}

_patch_table() { 
    _patch_table_edit_options \
        '-X;[`_choice_opt`]' \
        '-m;[`_choice_model_cached`]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}

_choice_model_cached() {
    _argc_util_cache 86400 _choice_model
}

_choice_opt() {
    cat <<-'EOF' | _argc_util_comp_kv =
faulthandler;;enable faulthandler
oldparser;;enable the traditional LL(1) parser; also PYTHONOLDPARSER
showrefcount;;output the total reference count and number of used memory
tracemalloc;;start tracing Python memory allocations using the tracemalloc module
importtime;;show how long each import takes
dev;;enable CPython's development mode
utf8;;enable UTF-8 mode for operating system interfaces
pycache_prefix=__argc_value=dir;;enable writing .pyc files to a parallel tree
EOF
}

_choice_model() {
    python -c "help('modules')" 2>/dev/null | \
    gawk 'BEGIN {
            split("", LINES)
            LINES_LEN = 0
        }
        {
            LINES_LEN = LINES_LEN + 1
            LINES[LINES_LEN] = $0
        }
        END {
            for (i in LINES) {
                if (i > 3 && i < LINES_LEN - 3) {
                    gsub(/\s+/, "\n", LINES[i])
                    print LINES[i]
                }
            }
        }'
}
