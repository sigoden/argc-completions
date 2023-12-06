_patch_help() {
    _common_edit() {
        sed 's/<\.\.\.>/<value>/'
    }

    if [[ "$*" == "bun" ]]; then
        $1 --help | \
        sed \
            -e '/^------/,+3 c\Commands:' \
            -e 's/^  \(\S\+\)\s\{2,\}\(\S\+\( \S\+\)*\)\?\s\{2,\}\(\S.*\)$/  \1\t\4/' \
            -e '/ (bun \w\+)$/ s/  \(\w\+\)\(.*\)(bun \(\w\+\))$/  \1, \3\2/' \
        | _common_edit

    elif [[ "$*" == "bun x" ]]; then
        :;

    elif [[ "$*" == "bun pm" ]]; then
        echo "Commands:"
        $@ --help |
        sed -e "/^\s*$* -g/ d" -e "/^\s*$* ls --all/ d" |
        sed -n "s/^\s*$* \([a-z]\)/  \1/p"

    elif [[ "$*" == "bun pm "* ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# bin
    -g
# ls
    --all
EOF

    else
        $@ --help | _common_edit
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--asset-naming(<value>)' \
            '--backend;[hardlink|symlink|copyfile]' \
            '--cache-dir(<dir>)' \
            '--chunk-naming(<value>)' \
            '--config(<file>)' \
            '--cwd(<dir>)' \
            '--define(<k:v>...)' \
            '--entry-naming(<value>)' \
            '--env-file(<file>)' \
            '--extension-order(<exts>)' \
            '--external;*[`_choice_dependency`]' \
            '--format(<value>)' \
            '--jsx-runtime;[automatic|classic]' \
            '--link-native-bins(<value>)' \
            '--loader(<.ext:loader>...)' \
            '--main-fileds(<field>)' \
            '--outdir(<dir>)' \
            '--outfile(<dir>)' \
            '--port(<port>)' \
            '--preload(<module>)' \
            '--public-path(<value>)' \
            '--root(<dir>)' \
            '--sourcemap;[inline|external|none]' \
            '--target;[browser|bun|node]' \
            '--timeout(<value>)' \
            '--tsconfig-override(<file>)' \
    )"
    if [[ "$*" == "bun" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' '[args]...;[`_choice_script_or_bin`]'

    elif [[ "$*" == "bun run" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'script_or_bin;[`_choice_script_or_bin`]' 'args...'

    elif [[ "$*" == "bun remove" ]] \
      || [[ "$*" == "bun link" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;' 'package;[`_choice_dependency`]'

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
