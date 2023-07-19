_patch_help() {
    if [[ "$*" == "bun" ]]; then
        echo "Options: "
        bun --help | \
        sed \
            -e 's/^  \(\S\+\).\{20\}\(.*\)$/  \1 \2/' \
            -e '/ (bun \w\+)$/ s/  \(\w\+\)\(.*\)(bun \(\w\+\))$/  \1, \3\2/' \

    elif [[ "$*" == "bun run" ]]; then
        echo "Usage: bun run [script_or_bin]..."
        $@ --help | sed '/----/,$ d'

    elif [[ "$*" == "bun dev" ]]; then
        $@ --help | sed '/----/,$ d'

    elif [[ "$*" == "bun add" ]] \
      || [[ "$*" == "bun install" ]] \
      || [[ "$*" == "bun remove" ]] \
      || [[ "$*" == "bun link" ]] \
      || [[ "$*" == "bun unlink" ]] \
      ; then
        echo "Usage: $* <pkg>"
        $@ --help

    elif [[ "$*" == "bun create" ]]; then
        echo "Usage: bun create <pkg> [args]..."
        $@ --help

    elif [[ "$*" == "bun pm" ]]; then
        cat <<-'EOF'
Usage: bun pm

Commands:
    bin          Print the path to bin folder
    ls           List the dependency tree according to the current lockfile
    hash         Generate & print the hash of the current lockfile
    hash-string  Print the string used to hash the lockfile
    hash-print   Print the hash stored in the current lockfile
    cache        Print the path to the cache folder
EOF
    elif [[ "$*" == "bun pm cache" ]]; then
        cat <<-'EOF'
Usage: bun pm cache
Commands:
    rm        Clear Bun's global module cache
EOF

    elif [[ "$*" == "bun pm "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
bun pm bin
options:
   -g, --global   Install globally

bun pm ls
options:
    --all         All installed dependencies, including nth-order dependencies.
EOF

    else
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
bun build [file]...
bun x <cmd> [args]...
bun completions [dir]
bun discord
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
    echo __argc_value=file
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