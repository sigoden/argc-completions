_patch_help() {
    if [[ "$*" == "pnpm" ]]; then
        pnpm help
        cat <<-'EOF'
Miss options:
    -C, --dir <path>                         Run as if pnpm was started in <path> instead of the current working directory.
    -w, --workspace-root                     Run as if pnpm was started in the root of the workspace instead of the current working directory.
    --filter <pattern>                       Includes all direct and indirect dependents of the matched packages.
    --filter-prod <pattern>                  Restricts the scope to package names matching the given pattern similar to --filter, but it ignores devDependencies when searching for dependencies and dependents.
    --test-pattern <pattern>                 Defines files related to tests.
    --changed-files-ignore-pattern <pattern>  Allows to ignore changed files by glob patterns when filtering for changed projects since the specified commit/branch.

Miss commands:
      store                Manage your store
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

    else
        if [[ $# -le 2 ]]; then
            _patch_help_run_help_subcmd $@
        else
            cat <<-'EOF' | _patch_help_embed_help $@ 
# config
## set <key> <value> 
## get <key> 
## delete <key> 
## list

# env
## ls
    --remote       List the remote versions of Node.js
## rm
    -g --global    Manages Node.js versions globally
## use
    -g --global    Manages Node.js versions globally

# store
## add <pkg>...
## path
## prune
## status
EOF
        fi
    fi
}

_patch_table() {
    table="$( \
        sed \
            -e '/--depth -1/ d' \
            -e 's/-s, --silent, --reporter silent/-s, --silent/' \
        | \
        _patch_table_edit_options \
            '--filter;[`_choice_workspace`];Filtering allows you to restrict commands to specific subsets of packages.' \
            '--loglevel;[debug|info|warn|error|silent]' \
            '--reporter;[`_choice_reporter`];Set reporter.' \
    )"

    if [[ "$*" == "pnpm" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'cmd;[`_choice_script`]'

    elif [[ "$*" == "pnpm install" ]]; then
        echo "$table" | \
        _patch_table_edit_options '--package-import-method;[`_choice_pacakge_import_method`];Import package method'

    elif [[ "$*" == "pnpm rb" ]] \
      || [[ "$*" == "pnpm up" ]] \
      || [[ "$*" == "pnpm outdated" ]] \
      || [[ "$*" == "pnpm why" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments 'pkg;[`_choice_dependency`]'

    elif [[ "$*" == "pnpm rm" ]]; then
        echo "$table" | _patch_table_edit_arguments 'pkg-version;[`_choice_dependency`]'

    elif [[ "$*" == "pnpm unlink" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'pkg;[`_choice_dependency`]'

    elif [[ "$*" == "pnpm licenses" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'cmd;[list]'

    elif [[ "$*" == "pnpm ls" ]]; then
        echo "$table" | \
        _patch_table_edit_options '--depth(<number>)' | \
        _patch_table_edit_arguments 'pkg;[`_choice_dependency`]'

    elif [[ "$*" == "pnpm exec" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'command;[`_choice_bin`]' 'args...'

    elif [[ "$*" == "pnpm run" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'command;[`_choice_script`]' 'args...'

    elif [[ "$*" == "pnpm dlx" ]] \
      || [[ "$*" == "pnpm env" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "pnpm config" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "pnpm config "* ]]; then
        echo "$table" | _patch_table_edit_arguments 'key;[`_choice_config_key`]'

    else
        echo "$table"
    fi
}

_choice_workspace() {
    pnpm recursive list --json | yq '.[] | .name'
}

_choice_script() {
    _helper_apply_filter
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_choice_pacakge_import_method() {
    cat <<-'EOF'
auto	Clones/hardlinks or copies packages. The selected method depends from the file system"
clone	Clone (aka copy-on-write) packages from the store"
copy	Copy packages from the store"
hardlink	Hardlink packages from the store"
EOF
}

_choice_reporter() {
    cat <<-'EOF'
append-only	The output is always appended to the end. No cursor manipulations are performed"
default	The default reporter when the stdout is TTY"
ndjson	The most verbose reporter. Prints all logs in ndjson format"
silent	No output is logged to the console, except fatal errors"
EOF
}

_choice_dependency() {
    _helper_apply_filter
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_bin() {
    _helper_find_pkg_json_path
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

_helper_apply_filter() {
    if [[ -n "$argc_filter" ]]; then
        local path = "$(pnpm recursive list --json | yq '.[] | select(.name == "'"$argc_filter"'") | .path')"
        if [[ -n "$path" ]]; then
            pkg_json_path="$(_argc_util_path_resolve -u "$path" package.json)"
        fi
    fi
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}
