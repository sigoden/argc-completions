_patch_help() {
    if [[ "$*" == "pnpm" ]]; then
        $1 help
        cat <<-'EOF'
Miss options:
    -C, --dir <path>                         Run as if pnpm was started in <path> instead of the current working directory.
    -w, --workspace-root                     Run as if pnpm was started in the root of the workspace instead of the current working directory.
    --filter <pattern>                       Includes all direct and indirect dependents of the matched packages.
    --filter-prod <pattern>                  Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
    --test-pattern <pattern>                 Defines files related to tests.
    --changed-files-ignore-pattern <pattern>  Allows to ignore changed files by glob patterns when filtering for changed projects since the specified commit/branch.

Miss commands:
      fetch                Fetch packages from a lockfile into virtual store, package manifest is ignored.
      patch                Prepare a package for patching.
      patch-commit         Generate a patch out of a directory.
      dedup                Perform an install removing older dependencies in the lockfile if a newer version can be used.
      why                  Shows all packages that depend on the specified package.
      dlx                  Fetches a package from the registry without installing it as a dependency, hotloads it, and runs whatever default command binary it exposes.
      create               Create a project from a create-* or @foo/create-* starter kit.
      env                  Manages the Node.js environment.
      server               Manage a store server.
      bin                  Prints the directory into which the executables of dependencies are linked.
      setup                This command is used by the standalone installation scripts of pnpm.
      init                 Create a package.json file.
      deploy               Deploy a package from a workspace.
      docker               Checks for known common issues with pnpm configuration.
      config               Manage the configuration files.
EOF
    elif [[ "$*" == "pnpm config "* ]]; then
        cat <<-'EOF' | _patch_util_extract_subcmd $@
pnpm config set <key> <value> 
pnpm config get <key> 
pnpm config delete <key> 
pnpm config list
EOF
    elif [[ "$*" == "pnpm env "* ]]; then
        cat <<-'EOF' | _patch_util_extract_subcmd $@
pnpm env list
options:
    --remote       List the remote versions of Node.js
pnpm env remove
options:
    -g --global    Manages Node.js versions globally
pnpm env use
options:
    -g --global    Manages Node.js versions globally
EOF
    elif [[ "$*" == "pnpm store" ]]; then
        pnpm help store | sed 's/add <pkg>.../add         /'
    elif [[ "$*" == "pnpm store "* ]]; then
        cat <<-'EOF' | _patch_util_extract_subcmd $@
pnpm store add <pkg>...
pnpm store path
pnpm store prune
pnpm store status
EOF
    elif [[ "$*" == "pnpm server "* ]]; then
        :;
    else 
        "${@:1:$#-1}" help "${!#}" 2>&1
    fi
}

_patch_table() {
    table="$(sed \
        -e '/--depth -1/ d' \
        -e 's/-s, --silent, --reporter silent/-s, --silent/' | \
        _patch_util_edit_table_option \
            '--loglevel;[debug|info|warn|error|silent]' \
            '--filter;[`_choice_workspace`];Filtering allows you to restrict commands to specific subsets of packages.' \
            '--reporter;[`_choice_reporter`];Set reporter.' \
    )"
    if [[ "$*" == "pnpm" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;' 'cmd;[`_choice_script`]'
    elif [[ "$*" == "pnpm config" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;'
    elif [[ "$*" == "pnpm config "* ]]; then
        echo "$table" | _patch_util_edit_table_argument 'key;[`_choice_config_key`]'
    elif [[ "$*" == "pnpm install" ]]; then
        echo "$table"| _patch_util_edit_table_option '--package-import-method;[`_choice_pacakge_import_method`];Import package method'
    elif [[ "$*" == "pnpm list" ]]; then
        echo "$table"| _patch_util_edit_table_option '--depth(<number>)'
    elif [[ "$*" == "pnpm run" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'args;[`_choice_script`]'
    elif [[ "$*" == "pnpm exec" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'exec;[`_choice_bin`]'
    elif [[ "$*" == "pnpm remove" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'pkg;[`_choice_dependency`]'
    elif [[ "$*" == "pnpm update" ]]; then
        echo "$table" | _patch_util_edit_table_argument 'pkg;[`_choice_dependency`]'
    elif [[ "$*" == "pnpm config" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;'
    elif [[ "$*" == "pnpm env" ]]; then
        echo "$table" | _patch_util_edit_table_argument ';;'
    else
        echo "$table"
    fi
}

_choice_bin() {
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -f "$pkg_json_path" ]]; then
        bin_dir="$(dirname "$pkg_json_path")/node_modules/.bin"
        if [[ -d "$bin_dir" ]]; then
            ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
        fi
    fi
}

_choice_config_key() {
    pnpm config list --json | yq 'keys | .[]'
}

_choice_script() {
    _helper_apply_filter
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}
_choice_reporter() {
    cat <<-'EOF' | sed 's/: \+/\t/'
append-only:     The output is always appended to the end. No cursor manipulations are performed"
default:         The default reporter when the stdout is TTY"
ndjson:          The most verbose reporter. Prints all logs in ndjson format"
silent:          No output is logged to the console, except fatal errors"
EOF
}

_choice_pacakge_import_method() {
    cat <<-'EOF' | sed 's/: \+/\t/'
auto:      Clones/hardlinks or copies packages. The selected method depends from the file system"
clone:     Clone (aka copy-on-write) packages from the store"
copy:      Copy packages from the store"
hardlink:  Hardlink packages from the store"
EOF
}

_choice_dependency() {
    _helper_apply_filter
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_workspace() {
    pnpm recursive list --json | yq '.[] | .name'
}

_helper_apply_filter() {
    if [[ -n "$argc_filter" ]]; then
        local path = "$(pnpm recursive list --json | yq '.[] | select(.name == "'"$argc_filter"'") | .path')"
        if [[ -n "$path" ]]; then
            pkg_json_path="$(_argc_util_path_to_unix "$path")/package.json"
        fi
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