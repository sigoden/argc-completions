_patch_help() {
    if [[ "$*" == "npm" ]]; then
        cat <<-'EOF'
Commands:
    access           Set access level on published packages
    adduser,add-user  Add a registry user account
    audit            Run a security audit
    bugs,issues      Report bugs for a package in a web browser
    cache            Manipulates packages cache
    ci,clean-install,ic,install-clean,isntall-clean  Clean install a project
    completion       Tab Completion for npm
    config,c         Manage the npm configuration files
    dedupe,ddp       Reduce duplication in the package tree
    deprecate        Deprecate a version of a package
    diff             The registry diff command
    dist-tag,dist-tags Modify package distribution tags
    docs,home        Open documentation for a package in a web browser
    edit             Edit an installed package
    exec,x           Run a command from a local or remote npm package
    explain,why      Explain installed packages
    explore          Browse an installed package
    find-dupes       Find duplication in the package tree
    fund             Retrieve funding information
    config           Manage the npm configuration files
    hook             Manage registry hooks
    init,create,innit  Create a package.json file
    install,add,i,in,isnt  Install a package
    install-ci-test,cit,clean-install-test,sit  Install a project with a clean slate and run tests
    install-test,it  Install package(s) and run tests
    link             Symlink a package folder
    login            Login to a registry user account
    logout           Log out of the registry
    ls,list          List installed packages
    org,ogr          Manage orgs
    outdated         Check for outdated packages
    owner,author     Manage package owners
    pack             Create a tarball from a package
    pkg              Manages your package.json
    prefix           Display prefix
    profile          Change settings on your registry profile
    prune            Remove extraneous packages
    publish          Publish a package
    query            Dependency selector query
    rebuild,rb       Rebuild a package
    restart          Restart a package
    root             Display npm root
    run-script,run,rum,urn  Run arbitrary package scripts
    search,find,s,se  Search for packages
    shrinkwrap       Lock down dependency versions for publication
    stars            View packages marked as favorites
    start            Start a package
    stop             Stop a package
    team             Manage organization teams and team memberships
    test,tst,t       Test a package
    token            Manage your authentication tokens
    uninstall,unlink,remove,rm,r,un  Remove a package
    unstar           Remove an item from your favorite packages
    update,up,upgrade,udpate  Update packages
    version,verison  Bump a package version
    view,info,show,v  View registry info
    whoami           Display npm username
EOF
    elif [[ "$*" == "npm access" ]]; then
        cat <<-'EOF'
Options:
    --json            Whether or not to output JSON data, rather than the normal output. 
    --opt <value>     This is a one-time password from a two-factor authenticator.
    --registry <url>  The base URL of the npm registry.
EOF
    elif [[ "$*" == "npm adduser" ]]; then
        cat <<-'EOF'
Options:
    --registry <url>  The base URL of the npm registry.
    --scope <scope>   Associate an operation with a scope for a scoped registry.
    -auth-type <type> What authentication strategy to use with login. (web, legacy)
EOF
    elif [[ "$*" == "npm audit" ]]; then
        cat <<-'EOF'
Usage: npm audit (fix|signatures)
Options:
    --audit-level <value>  The minimum level of vulnerability for npm audit to exit with a non-zero exit code. (info,low,moderate,high,critical,none)
    --dry-run              Indicates that you don't want npm to make any changes and that it should only report what it would have done
    -f --force             Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input.
    --json                 Whether or not to output JSON data, rather than the normal output.
    --package-lock-only    If set to true, the current operation will only use the package-lock.json, ignoring node_modules.
    --omit  <value>        Dependency types to omit from the installation tree on disk. (dev,optional,peer)
    --foreground-scripts   Run all build scripts (ie, preinstall, install, and postinstall) scripts for installed packages in the foreground process, sharing standard input, output, and error with the main npm process.
    --ignore-scripts       If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
    --workspaces           Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root  Include the workspace root when workspaces are enabled for a command.
    --install-links        When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm bugs" ]]; then
        cat <<-'EOF'
Usage: npm audit [pkgname]...
Options:
    --browser <value>      The browser that is called by npm commands to open websites.
    --registry <url>       The base URL of the npm registry.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
    --workspaces           Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root  Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm cache" ]] || [[ "$*" == "npm cache "* ]]; then
        if [[ "$#" == 2 ]]; then
            cat <<-'EOF'
Options:
    --cache <value>    The location of npm's cache directory.
Commands:
    add        Add the specified packages to the local cache.
    clean      Delete all data out of the cache folder.
    ls         List all cache.
    verify     Verify the contents of the cache folder, garbage collecting any unneeded data, and verifying the integrity of the cache index and all cached data.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm cache add <package-spec>
npm cache clean [key]
npm cache ls [name@version]
npm cache verify
EOF
        fi
    elif [[ "$*" == "npm clean-install" ]]; then
        cat <<-'EOF'
Options:
    -S --save                   Save installed packages to a package.json file as dependencies.
    -E --save-exact             Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
    -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>  Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling           Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
    --global-style              Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies. 
    --omit <value>              Dependency types to omit from the installation tree on disk. (dev, optional, peer)
    --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock              If set to false, then ignore package-lock.json files when installing. 
    --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts            If true, npm does not run scripts specified in package.json files.
    --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>      Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
    --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm config" ]] || [[ "$*" == "npm config "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    set     Sets each of the config keys to the value provided.
    get     Echo the config value(s) to stdout.
    list    Show all the config settings. 
    delete  Deletes the specified keys from all configuration files.
    edit    Opens the config file in an editor. 
    fix     Attempts  to  repair invalid configuration items. 
Options:
    --json              Whether or not to output JSON data, rather than the normal output.
    -g --global         Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working directory. 
    --editor <value>    The command to run for npm edit and npm config edit.
    --location <value>  When passed to npm config this refers to which config file to use. (global, user, project)
    --long              Show extended information in ls, search, and help-search.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm config set [<key>=<value>]...
npm config get [key]...
npm config list
options:
    --json Whether or not to output JSON data, rather than the normal output.
npm config delete [key]...
npm config edit
npm config fix
EOF
        fi
    elif [[ "$*" == "npm dedupe" ]]; then
        cat <<-'EOF'
Options:
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
    --global-style                    Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies. 
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm deprecate" ]]; then
        cat <<-'EOF'
Usage: npm deprecate <package-spec> <message>
Options:
    --registry <value>  The base URL of the npm registry.
    --otp <value>       This is a one-time password from a two-factor authenticator. 
EOF
    elif [[ "$*" == "npm diff" ]]; then
        cat <<-'EOF'
Usage: npm diff [paths]...
Options:
    --diff <value>                    Define arguments to compare in npm diff.
    --diff-name-only                  Prints only filenames when using npm diff.
    --diff-unified <value>            The number of lines of context to print in npm diff.
    --diff-ignore-all-space           Ignore whitespace when comparing lines in npm diff.
    --diff-no-prefix                  Do not show any source or destination prefix in npm diff output.
    --diff-src-prefix <value>         Source prefix to be used in npm diff output.
    --diff-dst-prefix <value>         Destination prefix to be used in npm diff output.
    --diff-text                       Treat all files as text in npm diff.
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --tag <value>                     If you ask npm to install a package and don't tell it a specific version, then it will install the specified tag.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF

    elif [[ "$*" == "npm dist-tag" ]] || [[ "$*" == "npm dist-tag "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    add      Tags the specified version of the package with the specified tag, or the --tag config if not specified.
    rm       Clear a tag that is no longer in use from the package.
    ls       Show all of the dist-tags for a package, defaulting to the package in the current prefix.
Options:
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm dist-tag add <package-spec> <tag>
npm dist-tag rm <package-spec> <tag>
npm dist-tag ls [package-spec]
EOF
        fi
    elif [[ "$*" == "npm docs" ]]; then
        cat <<-'EOF'
Usage: npm docs [pkgname]...
Options:
    --browser                         The browser that is called by npm commands to open websites.
    --registry <value>                The base URL of the npm registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm doctor" ]]; then
        cat <<-'EOF'
Options:
    --registry <value>  The base URL of the npm registry.
EOF
    elif [[ "$*" == "npm edit" ]]; then
        cat <<-'EOF'
Usage: npm edit <pkg>
Options:
    --editor <value>  The command to run for npm edit and npm config edit.
EOF
    elif [[ "$*" == "npm exec" ]]; then
        cat <<-'EOF'
Usage: npm exec <cmd> [args]...
Options:
    --package <value>                 The package or packages to install for npm help exec
    --call <value>                    Optional  companion  option for npm exec, npx that allows for specifying a custom command to be run along with the in‐
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm explain" ]]; then
        cat <<-'EOF'
Usage: npm explain <package-spec>
Options:
    --json               Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
EOF
    elif [[ "$*" == "npm explore" ]]; then
        cat <<-'EOF'
Usage: npm explore <package> [args]...
Options:
    --shell <value>  The shell to run for the npm explore command.
EOF
    elif [[ "$*" == "npm find-dupes" ]]; then
        cat <<-'EOF'
Options:
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
    --global-style                    Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies. 
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm fund" ]]; then
        cat <<-'EOF'
Usage: npm fund [package-spec]
Options:
    --json               Whether or not to output JSON data, rather than the normal output.
    --browser            The browser that is called by npm commands to open websites.
    --unicode            When set to true, npm uses unicode characters in the tree output. 
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --which <value>      If there are multiple funding sources, which 1-indexed source URL to open.
EOF
    elif [[ "$*" == "npm help-search" ]]; then
        cat <<-'EOF'
Usage: npm help-search <text>
Options:
    --long          Show extended information in ls, search, and help-search.
EOF
    elif [[ "$*" == "npm hook" ]] || [[ "$*" == "npm hook "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    add      Add a hook
    ls       List hooks
    rm       Remove a hook
    update   Update a hook
Options:
    --registry <value>  The base URL of the npm registry.
    --otp <value>       This is a one-time password from a two-factor authenticator. 
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm hook add <pkg> <url> <secret>
npm hook ls [pkg]
npm hook rm <id>
npm hook udpate <id> <url> <secret>
EOF
        fi
    elif [[ "$*" == "npm init" ]]; then
        cat <<-'EOF'
Usage: npm init <package-spec>
Options:
    --yes                             Automatically answer "yes" to any prompts that npm might print on the command line.
    -f --force                        Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
    --scope <value>                   Associate an operation with a scope for a scoped registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --workspaces-update               If set to true, the npm cli will run an update after operations that may possibly change the workspaces  installed  to
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm install" ]]; then
        cat <<-'EOF'
Usage: npm install [package-spec]...
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -E --save-exact                   Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
    --global-style                    Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym‐
EOF
    elif [[ "$*" == "npm install-ci-test" ]]; then
        cat <<-'EOF'
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -E --save-exact                   Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
    --global-style                    Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm install-test" ]]; then
        cat <<-'EOF'
Usage: npm install-test [package-spec]...
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -E --save-exact                   Dependencies saved to package.json will be configured with an exact version rather than  using  npm's  default  semver
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
    --global-style                    Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --foreground-scripts              Run  all  build  scripts  (ie,  preinstall, install, and postinstall) scripts for installed packages in the foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When "true" submit audit reports alongside the current npm command to the default registry and all registries  config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When "true" displays the message at the end of each npm install acknowledging the number of dependencies  looking  for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm link" ]]; then
        cat <<-'EOF'
Usage: npm link [package-spec]
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -E --save-exact                   Dependencies saved to package.json will be configured with an exact version rather than  using  npm's  default  semver
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
    --global-style                    Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies. 
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm login" ]]; then
        cat <<-'EOF'
Options:
    --registry <value>   The base URL of the npm registry.
    --scope <value>      Associate an operation with a scope for a scoped registry.
    --auth-type <value>  What authentication strategy to use with login. 
EOF
    elif [[ "$*" == "npm logout" ]]; then
        cat <<-'EOF'
Options:
    --registry <value>  The base URL of the npm registry.
    --scope <value>     Associate an operation with a scope for a scoped registry.
EOF
    elif [[ "$*" == "npm list" ]]; then
        cat <<-'EOF'
Usage: npm ls [package-spec]...
Options:
    --all                             When  running  npm  outdated  and npm ls, setting --all will show all outdated or installed packages, rather than only
    --json                            Whether or not to output JSON data, rather than the normal output.
    --long                            Show extended information in ls, search, and help-search.
    --parseable                       Output parseable results from commands that write to standard output. 
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --depth <value>                   The depth to go when recursing packages for npm ls.
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --link                            Used with npm ls, limiting output to only those packages that are linked.
    --package-lock-only               If set to true, the current operation will only use the package-lock.json, ignoring node_modules.
    --unicode                         When set to true, npm uses unicode characters in the tree output. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm org" ]] || [[ "$*" == "npm org "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    set    Add user to org.
    rm     Remove a user from an org.
    ls     List all users in an org.
Options:
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
    --json               Whether or not to output JSON data, rather than the normal output.
    --parseable          Output parseable results from commands that write to standard output. 
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm org set <orgname> <username> (developer|admin|owner)
npm org rm <orgname> <username>
npm org ls <orgname> [username]
EOF
        fi
    elif [[ "$*" == "npm outdated" ]]; then
        cat <<-'EOF'
Usage: npm outdated [package-spec]...
Options:
    --all                When  running  npm  outdated  and npm ls, setting --all will show all outdated or installed packages, rather than only
    --json               Whether or not to output JSON data, rather than the normal output.
    --long               Show extended information in ls, search, and help-search.
    --parseable          Output parseable results from commands that write to standard output. 
    -g --global          Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
EOF
    elif [[ "$*" == "npm owner" ]] || [[ "$*" == "npm owner "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    ls        List all the users who have access to modify a package and push new versions.
    add       Add a new user as a maintainer of a package. This user is enabled to modify metadata, publish new versions, and add other owners.
    rm        Remove a user from the package owner list. This immediately revokes their privileges.
Options:
    --registry <value>    The base URL of the npm registry.
    --otp <value>         This  is  a one-time password from a two-factor authenticator. 
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm owner ls <package-spec>
npm owner add <user> <package-spec>
npm owner rm <user> <package-spec>
EOF
        fi
    elif [[ "$*" == "npm pack" ]]; then
        cat <<-'EOF'
Usage: npm pack <package-spec>
Options:
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --json                            Whether or not to output JSON data, rather than the normal output.
    --pack-destination <value>        Directory in which npm pack will save tarballs.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --Description <value>             
EOF
    elif [[ "$*" == "npm ping" ]]; then
        cat <<-'EOF'
Options:
    --registry <value>  The base URL of the npm registry.
EOF
    elif [[ "$*" == "npm pkg" ]] || [[ "$*" == "npm pkg "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    get       Retrieves a value key, defined in your package.json file.
    set       Sets a value in your package.json based on the field value.
    delete    Deletes a key from your package.json.
Options:
    -f --force            Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
    --json                Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm pkg get <field>...
npm pkg set <key=value>...
npm pkg delete <field>...
EOF
        fi
    elif [[ "$*" == "npm prefix" ]]; then
        cat <<-'EOF'
Options:
    -g --global       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
EOF
    elif [[ "$*" == "npm profile" ]] || [[ "$*" == "npm profile "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    get          Display all of the properties of your profile, or one or more specific properties.
    set          Set the value of a profile property. You can set the following properties this way: email, fullname, homepage, freenode, twitter, github.
    enable-2fa   Enables two-factor authentication.
    disable-2fa  Disables two-factor authentication.
Options:
    --registry <value>   The base URL of the npm registry.
    --json               Whether or not to output JSON data, rather than the normal output.
    --parseable          Output parseable results from commands that write to standard output. 
    --otp <value>        This  is  a one-time password from a two-factor authenticator. 
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm profile get [key]
npm profile set <key> <value>
npm profile enable-2fa (auth-only|auth-and-writes)
npm profile disable-2fa
EOF
        fi
    elif [[ "$*" == "npm prune" ]]; then
        cat <<-'EOF'
Usage: npm prune [pkg]...
Options:
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --json                            Whether or not to output JSON data, rather than the normal output.
    --foreground-scripts              Run  all  build  scripts  (ie,  preinstall, install, and postinstall) scripts for installed packages in the foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym‐
EOF
    elif [[ "$*" == "npm publish" ]]; then
        cat <<-'EOF'
Usage: npm publish <package-spec>
Options:
    --tag <value>                     If you ask npm to install a package and don't tell it a specific version, then it will install the specified tag.
    --access <value>                  If you do not want your scoped package to be publicly viewable (and installable) set --access=restricted. (null, restricted, public)
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --otp <value>                     This is a one-time password from a two-factor authenticator. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm query" ]]; then
        cat <<-'EOF'
Usage: npm query <selector>
Options:
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm rebuild" ]]; then
        cat <<-'EOF'
Usage: npm prune [package-spec]...
Options:
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm repo" ]]; then
        cat <<-'EOF'
Usage: npm repo [pkgname]...
Options:
    --browser                         The browser that is called by npm commands to open websites.
    --registry <value>                The base URL of the npm registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
EOF
    elif [[ "$*" == "npm restart" ]]; then
        cat <<-'EOF'
Usage: npm restart [args]...
Options:
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
EOF
    elif [[ "$*" == "npm root" ]]; then
        cat <<-'EOF'
Options:
    -g --global       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
EOF
    elif [[ "$*" == "npm run-script" ]]; then
        cat <<-'EOF'
Usage: npm run-script <cmd> [args]...
Options:
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --if-present                      If  true,  npm  will  not  exit  with  an error code when run-script is invoked for a script that isn't defined in the
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --script-shell <value>            The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
EOF
    elif [[ "$*" == "npm search" ]]; then
        cat <<-'EOF'
Usage: npm search [terms]...
Options:
    --long                    Show extended information in ls, search, and help-search.
    --json                    Whether or not to output JSON data, rather than the normal output.
    --color                   If false, never shows colors. 
    --parseable               Output parseable results from commands that write to standard output. 
    --description             Show the description in npm search
    --searchopts <value>      Space-separated options that are always passed to search.
    --searchexclude <value>   Space-separated options that limit the results from search.
    --registry <value>        The base URL of the npm registry.
    --prefer-online           If true, staleness checks for cached data will be forced, making the CLI look for updates immediately even  for  fresh
    --prefer-offline          If  true,  staleness  checks  for cached data will be bypassed, but missing data will be requested from the server. 
    --offline                 Force offline mode: no network requests will be done during install. 
EOF
    elif [[ "$*" == "npm shrinkwrap" ]]; then
        cat <<-'EOF'
EOF
    elif [[ "$*" == "npm star" ]]; then
        cat <<-'EOF'
Usage: npm star [package-spec]...
Options:
    --registry <value>  The base URL of the npm registry.
    --unicode           When set to true, npm uses unicode characters in the tree output. 
    --otp <value>       This  is  a one-time password from a two-factor authenticator. 
EOF
    elif [[ "$*" == "npm stars" ]]; then
        cat <<-'EOF'
Usage: npm stars [user]
Options:
    --registry <value>  The base URL of the npm registry.
EOF
    elif [[ "$*" == "npm start" ]]; then
        cat <<-'EOF'
Usage: npm start [args]...
Options:
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
EOF
    elif [[ "$*" == "npm stop" ]]; then
        cat <<-'EOF'
Usage: npm stop [args]...
Options:
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
EOF
    elif [[ "$*" == "npm team" ]] || [[ "$*" == "npm team "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    create    Create a new team.
    destroy   Destroy a team.
    add       Add a user to existing team.
    rm        Using npm team rm you can also remove users from a team they belong to.
    ls        If performed on an organization name, will return a list of existing teams under that organization.
Options:
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
    --parseable          Output parseable results from commands that write to standard output. 
    --json               Whether or not to output JSON data, rather than the normal output.
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm team create <scope:team>
npm team destroy <scope:team>
npm team add <scope:team> <user>
npm team rm <scope:team> <user>
npm team ls <scope>
EOF
        fi
    elif [[ "$*" == "npm test" ]]; then
        cat <<-'EOF'
Usage: npm test [args]...
Options:
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
EOF
    elif [[ "$*" == "npm token" ]] || [[ "$*" == "npm token "* ]]; then
        if [[ $# -eq 2 ]]; then
            cat <<-'EOF'
Commands:
    list        Shows a table of all active authentication tokens
    create      Create a new authentication token.
    revoke      Immediately removes an authentication token from the registry.
Options:
    --read-only          This is used to mark a token as unable to publish when configuring limited access tokens with the npm token create
    --cidr <value>       This is a list of CIDR address to be used when configuring limited access tokens with the npm token create command.
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
EOF
        else
            cat <<-'EOF' | _patch_util_extract_subcmd $@ 
npm token list
npm token revoke <id|token>
npm token create
options:
  --read-only
  --cidr <value>
EOF
        fi
    elif [[ "$*" == "npm uninstall" ]]; then
        cat <<-'EOF'
Usage: npm uninstall <pkg>...
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
EOF
    elif [[ "$*" == "npm unpublish" ]]; then
        cat <<-'EOF'
Usage: npm unpublish [package-spec]
Options:
    --dry-run             Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -f --force            Removes  various  protections  against unfortunate side effects, common mistakes, unnecessary performance degradation,
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
EOF
    elif [[ "$*" == "npm unstar" ]]; then
        cat <<-'EOF'
Usage: npm unstar [package-spec]...
Options:
    --registry <value>  The base URL of the npm registry.
    --unicode           When set to true, npm uses unicode characters in the tree output. 
    --otp <value>       This  is  a one-time password from a two-factor authenticator. 
EOF
    elif [[ "$*" == "npm update" ]]; then
        cat <<-'EOF'
Usage: npm update [pkg]...
Options:
    -S --save                         Save installed packages to a package.json file as dependencies.
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --install-strategy <value>        Sets the strategy for installing packages in node_modules.  (hoisted, nested, shallow)
    --legacy-bundling                 Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
    --global-style                    Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies. 
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --strict-peer-deps                If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
    --package-lock                    If set to false, then ignore package-lock.json files when installing. 
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --audit                           When  "true" submit audit reports alongside the current npm command to the default registry and all registries config‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --fund                            When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym‐
EOF
    elif [[ "$*" == "npm version" ]]; then
        cat <<-'EOF'
Usage: npm version <ver>
Options:
    --allow-same-version              Prevents throwing an error when npm version is used to set the new version to the same value as the current version.
    --commit-hooks                    Run git commit hooks when using the npm version command.
    --git-tag-version                 Tag the commit when using the npm version command. 
    --json                            Whether or not to output JSON data, rather than the normal output.
    --preid <value>                   The "prerelease identifier" to use as a prefix for the "prerelease" part of a semver. 
    --sign-git-tag                    If set to true, then the npm version command will tag the version using -s to add a signature.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --workspaces-update               If set to true, the npm cli will run an update after operations that may possibly change the workspaces  installed  to
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --Description <value>             
EOF
    elif [[ "$*" == "npm view" ]]; then
        cat <<-'EOF'
Usage: npm view <package-spec> <filed>
Options:
    --json                            Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --Output <value>                  
EOF
    elif [[ "$*" == "npm whoami" ]]; then
        cat <<-'EOF'
Options:
    --registry <value>  The base URL of the npm registry.
EOF
    fi
}

_patch_table() {
    table="$(_patch_util_add_extra_column '--workspace:[`_choice_workspace`]')"
    if [[ "$*" == "npm config "* ]]; then
        echo "$table" | _patch_util_add_extra_column 'key:[`_choice_config_key`]' 'key-value:[`_choice_config_key`]'
    elif [[ "$*" == "npm run-script" ]]; then
        echo "$table" | _patch_util_add_extra_column 'cmd:[`_choice_script`]'
    elif [[ "$*" == "npm uninstall" ]]; then
        echo "$table" | _patch_util_add_extra_column 'pkg:[`_choice_dependency`]'
    elif [[ "$*" == "npm update" ]]; then
        echo "$table" | _patch_util_add_extra_column 'pkg:[`_choice_dependency`]'
    else
        echo "$table"
    fi
}

_choice_config_key() {
    npm config list $(_argc_util_param_select_options --global) --json | yq 'keys | .[]'
}

_choice_workspace() {
    npm query .workspace | yq '.[].location'
}

_choice_dependency() {
    pkg_json_path=$(_helper_pkg_json_path)
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_choice_script() {
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