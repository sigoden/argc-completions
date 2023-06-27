_patch_help() {
    if [[ "$*" == "bun" ]]; then
    echo "Options: "
        bun --help | awk '
BEGIN {
    COMMANDS_ZONE=0
    REPLACE_END=30
}   
{
    if (match($0, /^bun: /)) {
        COMMANDS_ZONE=1
        print $0
        print "commands:"
    } else if (COMMANDS_ZONE == 1 && match($0, /  (\w+) /, head_arr)) {
        spaceIdx = index(substr($0, 3), " ")
        head = substr($0, 1, 3 + spaceIdx - 1)
        SPACES = sprintf("%*s", REPLACE_END - spaceIdx, "")
        tail = substr($0, REPLACE_END)
        alias = ""
        if (match(tail, / \(bun (\w+)\)/, tail_arr)) {
            alias = ", " tail_arr[1]
            tail = substr(tail, 1, length(tail) - length(tail_arr[0]))
        }
        if (alias != "") {
            gsub(head_arr[1], head_arr[1] alias, head)
        }
        print head SPACES tail
    } else {
        print $0
    }
}'
    elif [[ "$*" == "bun run" ]]; then
        echo "Usage: bun run [script_or_bin]..."
         $@ --help | sed '/----/,$ d'
    elif [[ "$*" == "bun dev" ]]; then
        $@ --help | sed '/----/,$ d'
    elif [[ "$*" == "bun add" ]] || [[ "$*" == "bun install" ]] || [[ "$*" == "bun remove" ]] || [[ "$*" == "bun link" ]] || [[ "$*" == "bun unlink" ]]; then
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
    cache rm     Clear the cache
EOF
    elif [[ "$*" == "bun pm cache" ]]; then
            cat <<-'EOF'
Usage: bun pm cache
Commands:
    rm        Clear Bun's global module cache
EOF

    elif [[ "$*" == "bun pm "* ]]; then
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
bun pm bin
options:
   -g, --global   Install globally

bun pm ls
options:
    --all         All installed dependencies, including nth-order dependencies.
EOF

    else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
bun build [file]...
bun x <cmd> [args]...
bun completions [dir]
bun discord
EOF
    fi
}

_patch_table() {
    table="$(_patch_util_edit_table_option '--cwd(<DIR>)')"
    if [[ "$*" == "bun" ]]; then
        echo "$table" | \
            _patch_util_edit_table_option '--target;[browser|bun|node]' | \
            _patch_util_edit_table_argument ';;' '[args]...;[`_choice_script_or_bin`]'
    elif [[ "$*" == "bun run" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;' 'script_or_bin;[`_choice_script_or_bin`]'
    elif [[ "$*" == "bun remove" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;' 'pkg;[`_choice_dependency`]'
    else
        echo "$table"
    fi
}

_choice_script_or_bin() {
    echo __argc_value:file
    _helper_script
}

_choice_dependency() {
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_helper_script() {
    pkg_json_path="$(_helper_pkg_json_path)"
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_pkg_json_path() {
    if [[ -v pkg_json_path ]]; then
        echo "$pkg_json_path"
    else
        pkg_json_path=$(_argc_util_path_search_parent package.json)
        echo "$pkg_json_path"
    fi
}