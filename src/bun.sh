_patch_help() {
    if [[ "$*" == "bun" ]]; then
        bun --help | \
        sed \
            -e '/^------/,+3 c\Commands:' \
            -e 's/^  \(\S\+\)\s\{2,\}\(\S\+\( \S\+\)*\)\?\s\{2,\}\(\S.*\)$/  \1\t\4/' \
            -e '/ (bun \w\+)$/ s/  \(\w\+\)\(.*\)(bun \(\w\+\))$/  \1, \3\2/' \
        
    elif [[ "$*" == "bun run" ]]; then
        echo "Usage: bun run [script_or_bin]..."
        $@ --help | sed '/----/,$ d'

    elif [[ "$*" == "bun create" ]]; then
        echo "Usage: bun create <pkg> [args]..."
        $@ --help

    elif [[ "$*" == "bun install" ]] \
      || [[ "$*" == "bun add" ]] \
      || [[ "$*" == "bun link" ]] \
      || [[ "$*" == "bun remove" ]] \
      || [[ "$*" == "bun unlink" ]] \
    ; then
        echo "Usage: $* <pkg>"
        $@ --help

    elif [[ "$*" == "bun dev" ]]; then
        $@ --help | sed '/----/,$ d'

    else
        cat <<-'EOF' | _patch_help_embed_help $@ 
# pm
## bin - Print the path to bin folder
    -g, --global   Install globally
## ls - List the dependency tree according to the current lockfile
    --all         All installed dependencies, including nth-order dependencies.
## hash - Generate & print the hash of the current lockfile
## hash-string - Print the string used to hash the lockfile
## hash-print - Print the hash stored in the current lockfile
## cache - Print the path to the cache folder
### rm - Clear Bun's global module cache

# build [file]...
# x <cmd> [args]...
# completions [dir]
# discord
EOF
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--cwd(<DIR>)' \
            '--target;[browser|bun|node]' \
    )"
    if [[ "$*" == "bun" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' '[args]...;[`_choice_script_or_bin`]'

    elif [[ "$*" == "bun run" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'script_or_bin;[`_choice_script_or_bin`]'
    elif [[ "$*" == "bun remove" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pkg;[`_choice_dependency`]'

    else
        echo "$table"
    fi
}

_choice_script_or_bin() {
    if _argc_util_has_path_prefix "$ARGC_FILTER"; then
        _argc_util_comp_path
        return
    fi
    _choice_script
}

_choice_dependency() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_script() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}
