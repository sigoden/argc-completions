_patch_help() {
    if [[ "$*" == "bun" ]]; then
        bun --help | \
        sed \
            -e '/^------/,+3 c\Commands:' \
            -e 's/^  \(\S\+\)\s\{2,\}\(\S\+\( \S\+\)*\)\?\s\{2,\}\(\S.*\)$/  \1\t\4/' \
            -e '/ (bun \w\+)$/ s/  \(\w\+\)\(.*\)(bun \(\w\+\))$/  \1, \3\2/' \
        
    elif [[ "$*" == "bun run" ]] \
      || [[ "$*" == "bun test" ]] \
      || [[ "$*" == "bun build" ]] \
    ; then
        $@ --help | sed '/----/,$ d'

    elif [[ "$*" == "bun create" ]]; then
        echo "Usage: bun create <pkg> [args]..."

    elif [[ "$*" == "bun install" ]] \
      || [[ "$*" == "bun add" ]] \
      || [[ "$*" == "bun remove" ]] \
      || [[ "$*" == "bun update" ]] \
      || [[ "$*" == "bun link" ]] \
      || [[ "$*" == "bun unlink" ]] \
    ; then
        echo "Usage: $* <pkg>"
        $@ --help

    else
        cat <<-'EOF' | _patch_help_embed_help $@ 
# x <cmd> args...

# init

# create <pkg>

# pm
## bin - Print the path to bin folder
    -g, --global   Install globally
## ls - List the dependency tree according to the current lockfile
    --all         All installed dependencies, including nth-order dependencies.
## cache - Print the path to the cache folder
### rm - Clear Bun's global module cache

# upgrade
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
        echo "$table" | _patch_table_edit_arguments ';;' 'script_or_bin;[`_choice_script_or_bin`]' 'args...'

    elif [[ "$*" == "bun remove" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pkg;[`_choice_dependency`]'

    elif [[ "$*" == "bun build" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'files...'

    else
        echo "$table"
    fi
}

_choice_script_or_bin() {
    if _argc_util_has_path_prefix; then
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
