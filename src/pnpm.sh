_patch_help() {
    if [[ $# -eq 1 ]]; then
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
        cat <<-'EOF' | _patch_utils_extract_subcmd $@
pnpm config set <key> <value> 
pnpm config get <key> 
pnpm config delete <key> 
pnpm config list
EOF
    elif [[ "$*" == "pnpm env "* ]]; then
        cat <<-'EOF' | _patch_utils_extract_subcmd $@
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
        cat <<-'EOF' | _patch_utils_extract_subcmd $@
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
        -e '/option # --filter !<selector> /, /option # --filter <pattern>\^\.\.\./ coption # --filter <pattern> # Includes all direct and indirect dependents of the matched packages.' \
        -e '/option # --loglevel / coption # --loglevel <level> # What level of logs to report. # [debug|info|warn|error|silent]' \
    )"
    if [[ "$*" == "pnpm" ]]; then
        echo "$table"
        echo 'argument # cmd # # [`_choice_cmd`]'
    elif [[ "$*" == "pnpm install" ]]; then
        echo "$table" | sed \
            -e '/option # --package-import-method auto/, /option # --package-import-method hardlink/ coption # --package-import-method <method> # Import package from # [auto|clone|copy|hardlink]' \
            -e '/option # --reporter append-only/, /option # --reporter ndjson/ coption # --reporter # Secific the reporter # [append-only|default|ndjson|silent]' \
            -e '/option # --reporter <silent>/ d' \
            -e '/-s, --silent/ coption # -s, --silent # No output is logged to the console, except fatal errors'
    elif [[ "$*" == "pnpm dlx" ]]; then
        echo "$table" | sed \
            -e '/option # --reporter append-only/, /option # --reporter ndjson/ coption # --reporter # Secific the reporter # [append-only|default|ndjson|silent]' \
            -e '/option # --reporter <silent>/ d' \
            -e '/-s, --silent/ coption # -s, --silent # No output is logged to the console, except fatal errors'
    elif [[ "$*" == "pnpm link" ]]; then
        echo "$table" | sed 's/<dir>/<_dir>/'
    elif [[ "$*" == "pnpm list" ]]; then
        echo "$table" | sed '/option # --depth -1/, /option # --depth 0/ coption # --depth <number> # Max display depth of the dependency tree'
    elif [[ "$*" == "pnpm run" ]]; then
        echo "$table" | sed '/<args>.../ cargument # [<args>...] #  # [`_choice_script`]'
    elif [[ "$*" == "pnpm exec" ]]; then
        echo "$table" | sed '/# exec / cargument # exec # # [`_choice_bin`]'
    elif [[ "$*" == "pnpm remove" ]]; then
        echo "$table" | sed '/# <pkg>/ cargument # <pkg>[@<version>]... # # [`_choice_dependency`]'
    elif [[ "$*" == "pnpm update" ]]; then
        echo "$table" | sed '/# \[<pkg>...\]/ cargument # [<pkg>...] # # [`_choice_dependency`]'
    elif [[ "$*" == "pnpm config" ]]; then
        echo "$table" | sed '/argument/ d'
    elif [[ "$*" == "pnpm env" ]]; then
        echo "$table" | sed '/argument/ d'
    else
        echo "$table"
    fi
}

_patch_script() {
    sed \
        -e '/{ pnpm config/, /} pnpm config/ s/@arg key\(!\)\?/@arg key\1[`_choice_config_key`]/' \
        -e 's/@option --filter <pattern>\s\+/@option --filter[`_choice_workspace`] <pattern>  /'
}

_choice_cmd() {
    _choice_script
    _choice_bin
}

_choice_script() {
    _helper_apply_filter
    project_dir="$(_helper_locate_project)"
    cat "$project_dir/package.json" | jq -r '.scripts | keys[]' 
}

_choice_dependency() {
    _helper_apply_filter
    project_dir="$(_helper_locate_project)"
    cat  "$project_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_config_key() {
    pnpm config list --json | jq -r 'keys[]'
}

_choice_workspace() {
    pnpm recursive list --json | jq -r '.[].name // empty'
}

_choice_bin() {
    bin_dir="$(_helper_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_helper_apply_filter() {
    if [[ -n "$argc_filter" ]]; then
        local path = "$(pnpm recursive list --json | jq -r '.[] | select(.name == "'"$argc_filter"'") | .path // empty')"
        if [[ -n "$path" ]]; then
            project_dir="$(_argc_util_unix_path "$path")"
        fi
    fi
}

_helper_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_helper_locate_base)"
    fi
    echo "$_project_dir"
}

_helper_locate_base() {
    if [ -f package.json ]; then
        pwd
    else
        echo "$(cd "$(_argc_util_unix_path "$(pnpm root)")/.." && pwd)"
    fi
}