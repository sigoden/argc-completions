_patch_help() {
    if [[ "$*" == "yarn" ]]; then
        $@ --help | sed '/^  Commands:/, $ d'
        cat <<-'EOF'
Commands:
    add             Installs a package and any packages that it depends on.
    audit           Perform a vulnerability audit against the installed packages.
    autoclean       Cleans and removes unnecessary files from package dependencies.
    bin             Displays the location of the yarn bin folder.
    cache           Manage yarn cache.
    check           Verifies that versions of the package dependencies in the current project’s package.json match those in yarn’s lock file.
    config          Manages the yarn configuration files.
    create          Creates new projects from any create-* starter kits.
    generate-lock-entry, generateLockEntry  Generates a lock file entry.
    global          Install packages globally on your operating system.
    import          Generates yarn.lock from an npm package-lock.json file in the same location or an existing npm-installed node_modules folder.
    info            Show information about a package.
    init            Interactively creates or updates a package.json file.
    install         Install all dependencies for a project.
    licenses        List licenses for installed packages.
    link            Symlink a package folder during development.
    list            List installed packages.
    login           Store registry username and email.
    logout          Clear registry username and email.
    node             Runs Node with the same version that the one used by Yarn itself, and by default from the project root.
    outdated        Checks for outdated package dependencies.
    owner           Manage package owners.
    pack            Creates a compressed gzip archive of package dependencies.
    policies        Defines project-wide policies for your project.
    publish         Publishes a package to the npm registry.
    remove          Remove the package named foo from your direct dependencies updating your package.json and yarn.lock files in the process.
    run             Runs a defined package script.
    tag             Add, remove, or list tags on a package.
    team            Maintain team memberships.
    test            Runs the test script defined by the package.
    unlink          Unlink a previously created symlink for a package.
    unplug          Runs Node with the same version that the one used by Yarn itself, and by default from the project root.
    upgrade         Upgrades packages to their latest version based on the specified range.
    upgrade-interactive, upgradeInteractive  Update outdated packages in interactive mode.
    version         Updates the package version.
    versions        Displays version information of the currently installed Yarn, Node.js, and its dependencies.
    why             Show information about why a package is installed.
    workspace       Run the chosen Yarn command in the selected workspace.
    workspaces      Show information about your workspaces.
EOF

    elif [[ "$*" == "yarn cache" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    list, ls  print out every cached package.
    dir       print out the path where yarn’s global cache is currently stored.
    clean     clear the global cache.
EOF

    elif [[ "$*" == "yarn cache "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn cache list
options:
    --pattern <pattern>
yarn cache dir
yarn cache clean [<module_name>...]
EOF

    elif [[ "$*" == "yarn config" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    set     Sets the config key to a certain value.
    get     Echoes the value for a given key to stdout.
    delete  Deletes a given key from the config.
    list    Displays the current configuration.
EOF
 
    elif [[ "$*" == "yarn config "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn config set <key> <value>
options:
    -g --global
yarn config get <key>
yarn config delete <key>
yarn config list
EOF

    elif [[ "$*" == "yarn global" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    add         Installs packages and any packages that it depends on.
    bin         Displays the location of the yarn bin folder.
    remove      Remove packages.
    upgrade     Upgrades packages to their latest version based on the specified range.
EOF

    elif [[ "$*" == "yarn global "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn global add <packages>...
options:
    --prefix <prefix>   bin prefix
yarn global bin
options:
    --prefix <prefix>   bin prefix
yarn global remove <packages>...
options:
    --prefix <prefix>   bin prefix
yarn global upgrade <packages>...
options:
    --prefix <prefix>   bin prefix
EOF

    elif [[ "$*" == "yarn licenses" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    list                    List in alphabetical order all of the packages that were installed by yarn or yarn install, and give you the license.
    generate-disclaimer     Return a sorted list of licenses from all the packages you have installed to the stdout

EOF

    elif [[ "$*" == "yarn licenses "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn licenses list
yarn licenses generate-disclaimer
EOF

    elif [[ "$*" == "yarn owner" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    list    Lists all of the owners of a <package>.
    add     Adds the <user> as an owner of the <package>.
    remove  Removes the <user> as an owner of the <package>.
EOF

    elif [[ "$*" == "yarn owner "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn owner list <package>
yarn owner add <user> <package>
yarn owner remove <user> <package>
EOF

    elif [[ "$*" == "yarn policies" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    set-version  Enforcing Yarn’s version across your project.
EOF

    elif [[ "$*" == "yarn policies "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn policies set-version <ver>
options:
    --rc   Use latest rc release
EOF

    elif [[ "$*" == "yarn team" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    create      Create a new team.
    destroy     Destroys an existing team.
    add         Add a user to an existing team.
    remove      Remove a user from a team they belong to.
    list        List of existing teams under that organization.
EOF

    elif [[ "$*" == "yarn team "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn team create <scope:team>
yarn team destroy <scope:team>
yarn team add <scope:team> <user>
yarn team remove <scope:team> <user>
yarn team list <scope[:team]>
EOF

    elif [[ "$*" == "yarn workspaces" ]]; then
        $@ --help
        cat <<-'EOF'
Commands:
    info    display the workspace dependency tree of your current project.
    run     run the chosen Yarn command in each workspace.
EOF

    elif [[ "$*" == "yarn workspaces "* ]]; then
        cat <<-'EOF' | _patch_help_select_subcmd $@ 
yarn workspaces info
options:
    --json
yarn workspace run <cmd>
EOF

    elif [[ "$*" == "yarn test" ]]; then
        :;

    else
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "yarn" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[`_choice_script`]'

    elif [[ "$*" == "yarn autoclean" ]]; then
        _patch_table_dedup_options --force

    elif [[ "$*" == "yarn config "* ]]; then
        _patch_table_edit_arguments 'key;[`_choice_config_key`]'

    elif [[ "$*" == "yarn generate-lock-entry" ]]; then
        _patch_table_dedup_options --registry

    elif [[ "$*" == "yarn global remove" ]] || [[ "$*" == "yarn global upgrade" ]]; then
        _patch_table_edit_arguments 'packages;[`_choice_global_dependency`]'

    elif [[ "$*" == "yarn run" ]]; then
        _patch_table_edit_arguments ';;' 'script;[`_choice_script`]'

    elif [[ "$*" == "yarn remove" ]]; then
        _patch_table_edit_arguments 'packages;[`_choice_dependency`]'

    elif [[ "$*" == "yarn upgrade" ]]; then
        _patch_table_edit_arguments ';;' '[packages]...;[`_choice_dependency`]'

    elif [[ "$*" == "yarn workspace" ]]; then
        _patch_table_edit_arguments ';;' \
            '<workspace-name>;[`_choice_workspace`]' \
            '[workspace-args]...;~[`_choice_workspace_args`]'

    elif [[ "$*" == "yarn workspaces" ]]; then
        _patch_table_edit_arguments ';;'
    else
        cat
    fi
}

_choice_config_key() {
    yarn config list --json |  yq 'select(.type == "inspect") | .data | keys | .[]'
}

_choice_dependency() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" |  yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_script() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_choice_global_dependency() {
    cat "$(_argc_util_path_resolve "$(yarn global dir)" package.json)" | \
    yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
}

_choice_workspace() {
    yarn workspaces info | sed '1d;$d' | yq 'keys | .[]' | tr -d '"'
}

_choice_workspace_args() {
    location="$(yarn workspaces info | sed '1d;$d' | yq '."'$1'".location // ""')"
    if [[ -z "$location" ]]; then
        return
    fi
    pkg_json_path="$location/package.json"
    if [[ ! -f "$pkg_json_path" ]]; then
        return
    fi
    (cd "$location" && _argc_util_comp_subcommand 1 yarn)
    
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}