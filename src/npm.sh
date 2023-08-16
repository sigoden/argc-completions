_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# access - Set access level on published packages
    --json            Whether or not to output JSON data, rather than the normal output. 
    --opt <value>     This is a one-time password from a two-factor authenticator.
    --registry <url>  The base URL of the npm registry.
# adduser/add-user - Add a registry user account
    --registry <url>  The base URL of the npm registry.
    --scope <scope>   Associate an operation with a scope for a scoped registry.
    -auth-type <type> What authentication strategy to use with login. (web, legacy)
# audit (fix|signatures) - Run a security audit
    --audit-level <value>  The minimum level of vulnerability for npm audit to exit with a non-zero exit code. (info,low,moderate,high,critical,none)
    --dry-run              Indicates that you don't want npm to make any changes and that it should only report what it would have done
    -f --force             Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input.
    --json                 Whether or not to output JSON data, rather than the normal output.
    --package-lock-only    If set to true, the current operation will only use the package-lock.json, ignoring node_modules.
    --omit <value>         Dependency types to omit from the installation tree on disk. (dev,optional,peer)
    --foreground-scripts   Run all build scripts (ie, preinstall, install, and postinstall) scripts for installed packages in the foreground process, sharing standard input, output, and error with the main npm process.
    --ignore-scripts       If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
    --workspaces           Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root  Include the workspace root when workspaces are enabled for a command.
    --install-links        When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# bugs/issues [pkgname]... - Report bugs for a package in a web browser
    --browser <value>      The browser that is called by npm commands to open websites.
    --registry <url>       The base URL of the npm registry.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
    --workspaces           Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root  Include the workspace root when workspaces are enabled for a command.
# cache - Manipulates packages cache
    --cache <value>    The location of npm's cache directory.
## add <package-spec> - Add the specified packages to the local cache.
## clean [key] - Delete all data out of the cache folder.
## ls [name@version] - List all cache.
## verify - Verify the contents of the cache folder, garbage collecting any unneeded data, and verifying the integrity of the cache index and all cached data.
# ci/clean-install/ic/install-clean/isntall-clean - Clean install a project
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
# completion - Tab Completion for npm
# config/c - Manage the npm configuration files
    --json              Whether or not to output JSON data, rather than the normal output.
    -g --global         Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working directory. 
    --editor <value>    The command to run for npm edit and npm config edit.
    --location <value>  When passed to npm config this refers to which config file to use. (global, user, project)
    --long              Show extended information in ls, search, and help-search.
## set [<key>=<value>]... - Sets each of the config keys to the value provided.
## get [key]... - Echo the config value(s) to stdout.
## list - Show all the config settings. 
    --json  Whether or not to output JSON data, rather than the normal output.
## delete [key]... - Deletes the specified keys from all configuration files.
## edit - Opens the config file in an editor. 
## fix - Attempts  to  repair invalid configuration items. 
# dedupe/ddp - Reduce duplication in the package tree
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
# deprecate <package-spec> <message> - Deprecate a version of a package
    --registry <value>  The base URL of the npm registry.
    --otp <value>       This is a one-time password from a two-factor authenticator. 
# diff [paths]... - The registry diff command
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
# dist-tag/dist-tags - Modify package distribution tags
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
## add <package-spec> <tag> - Tags the specified version of the package with the specified tag, or the --tag config if not specified.
## rm <package-spec> <tag> - Clear a tag that is no longer in use from the package.
## ls [package-spec] - Show all of the dist-tags for a package, defaulting to the package in the current prefix.
# docs/home [pkgname]... - Open documentation for a package in a web browser
    --browser                         The browser that is called by npm commands to open websites.
    --registry <value>                The base URL of the npm registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# doctor - Check your npm environment
    --registry <value>  The base URL of the npm registry.
# edit <pkg> - Edit an installed package
    --editor <value>  The command to run for npm edit and npm config edit.
# exec/x <cmd> [args]... - Run a command from a local or remote npm package
    --package <value>                 The package or packages to install for npm help exec
    --call <value>                    Optional  companion  option for npm exec, npx that allows for specifying a custom command to be run along with the in‐
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# explain/why <package-spec> - Explain installed packages
    --json               Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# explore <package> [args]... - Browse an installed package
    --shell <value>  The shell to run for the npm explore command.
# find-dupes - Find duplication in the package tree
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
# fund [package-spec] - Retrieve funding information
    --json               Whether or not to output JSON data, rather than the normal output.
    --browser            The browser that is called by npm commands to open websites.
    --unicode            When set to true, npm uses unicode characters in the tree output. 
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --which <value>      If there are multiple funding sources, which 1-indexed source URL to open.
# help-search <text> - Search npm help documentation
    --long          Show extended information in ls, search, and help-search.
# hook - Manage registry hooks
    --registry <value>  The base URL of the npm registry.
    --otp <value>       This is a one-time password from a two-factor authenticator. 
## add <pkg> <url> <secret> - Add a hook
## ls [pkg] - List hooks
## rm <id> - Remove a hook
## update <id> <url> <secret> - Update a hook
# init/create/innit <package-spec> - Create a package.json file
    --yes                             Automatically answer "yes" to any prompts that npm might print on the command line.
    -f --force                        Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
    --scope <value>                   Associate an operation with a scope for a scoped registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --workspaces-update               If set to true, the npm cli will run an update after operations that may possibly change the workspaces  installed  to
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# install/add/i/in/isnt  [package-spec]... - Install a package
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
# install-ci-test/cit/clean-install-test/sit - Install a project with a clean slate and run tests
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
# install-test/it [package-spec]... - Install package(s) and run tests
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
# link [package-spec] - Symlink a package folder
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
# login - Login to a registry user account
    --registry <value>   The base URL of the npm registry.
    --scope <value>      Associate an operation with a scope for a scoped registry.
    --auth-type <value>  What authentication strategy to use with login. 
# logout - Log out of the registry
    --registry <value>  The base URL of the npm registry.
    --scope <value>     Associate an operation with a scope for a scoped registry.
# ls/list  [package-spec]... - List installed packages
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
# org/ogr - Manage orgs
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
    --json               Whether or not to output JSON data, rather than the normal output.
    --parseable          Output parseable results from commands that write to standard output. 
## set <orgname> <username> (developer|admin|owner) - Add user to org.
## rm <orgname> <username> - Remove a user from an org.
## ls <orgname> [username] - List all users in an org.
# outdated [package-spec]... - Check for outdated packages
    --all                When  running  npm  outdated  and npm ls, setting --all will show all outdated or installed packages, rather than only
    --json               Whether or not to output JSON data, rather than the normal output.
    --long               Show extended information in ls, search, and help-search.
    --parseable          Output parseable results from commands that write to standard output. 
    -g --global          Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# owner/author - Manage package owners
    --registry <value>    The base URL of the npm registry.
    --otp <value>         This  is  a one-time password from a two-factor authenticator. 
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
## ls <package-spec> - List all the users who have access to modify a package and push new versions.
## add <user> <package-spec> - Add a new user as a maintainer of a package. This user is enabled to modify metadata, publish new versions, and add other owners.
## rm <user> <package-spec> - Remove a user from the package owner list. This immediately revokes their privileges.
# pack <package-spec> - Create a tarball from a package
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --json                            Whether or not to output JSON data, rather than the normal output.
    --pack-destination <value>        Directory in which npm pack will save tarballs.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --Description <value>             
# ping - Ping npm registry
    --registry <value>  The base URL of the npm registry.
# pkg - Manages your package.json
    -f --force            Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
    --json                Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
## get <field>... - Retrieves a value key, defined in your package.json file.
## set <key=value>... - Sets a value in your package.json based on the field value.
## delete <field>... - Deletes a key from your package.json.
# prefix - Display prefix
    -g --global       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
# profile - Change settings on your registry profile
    --registry <value>   The base URL of the npm registry.
    --json               Whether or not to output JSON data, rather than the normal output.
    --parseable          Output parseable results from commands that write to standard output. 
    --otp <value>        This  is  a one-time password from a two-factor authenticator. 
## get [key] - Display all of the properties of your profile, or one or more specific properties.
## set <key> <value> - Set the value of a profile property. You can set the following properties this way: email, fullname, homepage, freenode, twitter, github.
## enable-2fa (auth-only|auth-and-writes) - Enables two-factor authentication.
## disable-2fa - Disables two-factor authentication.
# prune [pkg]... - Remove extraneous packages
    --omit <value>                    Dependency types to omit from the installation tree on disk. (dev, optional, peer (can be set multiple times))
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --json                            Whether or not to output JSON data, rather than the normal output.
    --foreground-scripts              Run  all  build  scripts  (ie,  preinstall, install, and postinstall) scripts for installed packages in the foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym‐
# publish <package-spec> - Publish a package
    --tag <value>                     If you ask npm to install a package and don't tell it a specific version, then it will install the specified tag.
    --access <value>                  If you do not want your scoped package to be publicly viewable (and installable) set --access=restricted. (null, restricted, public)
    --dry-run                         Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    --otp <value>                     This is a one-time password from a two-factor authenticator. 
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# query <selector> - Dependency selector query
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# rebuild/rb [package-spec]... - Rebuild a package
    -g --global                       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
    --bin-links                       Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# repo [pkgname]... - Open package repository page in the browser 
    --browser                         The browser that is called by npm commands to open websites.
    --registry <value>                The base URL of the npm registry.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
# restart [args]... - Restart a package
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# root - Display npm root
    -g --global       Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc‐
# run-script/run/rum/urn <cmd> [args]... - Run arbitrary package scripts
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --if-present                      If  true,  npm  will  not  exit  with  an error code when run-script is invoked for a script that isn't defined in the
    --ignore-scripts                  If true, npm does not run scripts specified in package.json files.
    --foreground-scripts              Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
    --script-shell <value>            The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# search/find/s/se [terms]... - Search for packages
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
# shrinkwrap - Lock down dependency versions for publication
# star [pkg]... - Mark your favorite packages
    --registry <value>  The base URL of the npm registry.
    --unicode           When set to true, npm uses unicode characters in the tree output. 
    --otp <value>       This  is  a one-time password from a two-factor authenticator. 
# stars [user] - View packages marked as favorites
    --registry <value>  The base URL of the npm registry.
# start [args]... - Start a package
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# stop [args]... - Stop a package
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# team - Manage organization teams and team memberships
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
    --parseable          Output parseable results from commands that write to standard output. 
    --json               Whether or not to output JSON data, rather than the normal output.
## create <scope:team> - Create a new team.
## destroy <scope:team> - Destroy a team.
## add <scope:team> <user> - Add a user to existing team.
## rm <scope:team> <user> - Using npm team rm you can also remove users from a team they belong to.
## ls <scope> - If performed on an organization name, will return a list of existing teams under that organization.
# test/tst/t [args]... - Test a package
    --ignore-scripts          If true, npm does not run scripts specified in package.json files.
    --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# token - Manage your authentication tokens
    --read-only          This is used to mark a token as unable to publish when configuring limited access tokens with the npm token create
    --cidr <value>       This is a list of CIDR address to be used when configuring limited access tokens with the npm token create command.
    --registry <value>   The base URL of the npm registry.
    --otp <value>        This is a one-time password from a two-factor authenticator. 
## list - Shows a table of all active authentication tokens
## create - Create a new authentication token.
  --read-only
  --cidr <value>
## revoke <id|token> - Immediately removes an authentication token from the registry.
# uninstall/unlink/remove/rm/r/un <pkg>... - Remove a package
    -S --save                         Save installed packages to a package.json file as dependencies.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --install-links                   When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# unpublish [package-spec] - Remove a package from the registry
    --dry-run             Indicates that you don't want npm to make any changes and that it should only report what it would have done. 
    -f --force            Removes  various  protections  against unfortunate side effects, common mistakes, unnecessary performance degradation,
    -w --workspace <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces          Set to true to run the command in the context of all configured workspaces.
# unstar [package-spec]... - Remove an item from your favorite packages
    --registry <value>  The base URL of the npm registry.
    --unicode           When set to true, npm uses unicode characters in the tree output. 
    --otp <value>       This  is  a one-time password from a two-factor authenticator. 
# update/up/upgrade/udpate [pkg]... - Update packages
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
# version/verison <ver> - Bump a package version
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
# view/info/show/v <package-spec> <filed> - View registry info
    --json                            Whether or not to output JSON data, rather than the normal output.
    -w --workspace <value>            Enable running a command in the context of the configured workspaces of the current project while filtering by running
    --workspaces                      Set to true to run the command in the context of all configured workspaces.
    --include-workspace-root          Include the workspace root when workspaces are enabled for a command.
    --Output <value>                  
# whoami - Display npm username
    --registry <value>  The base URL of the npm registry.
EOF
}

_patch_table() {
    table="$(_patch_table_edit_options '--workspace;[`_choice_workspace`]')"
    if [[ "$*" == "npm run-script" ]]; then
        echo "$table" | _patch_table_edit_arguments 'cmd;[`_choice_script`]'
    elif [[ "$*" == "npm uninstall" ]]; then
        echo "$table" | _patch_table_edit_arguments 'pkg;[`_choice_dependency`]'
    elif [[ "$*" == "npm update" ]]; then
        echo "$table" | _patch_table_edit_arguments 'pkg;[`_choice_dependency`]'
    elif [[ "$*" == "npm config "* ]]; then
        echo "$table" | _patch_table_edit_arguments 'key;[`_choice_config_key`]' 'key-value;[`_choice_config_key`]'
    else
        echo "$table"
    fi
}

_choice_workspace() {
    npm query .workspace | yq '.[].location'
}

_choice_config_key() {
    npm config list $(_argc_util_param_select_options --global) --json | yq 'keys | .[]'
}

_choice_script() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_choice_dependency() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}
