#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @flag --check-files                           install will verify file tree of packages for consistency
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --flat                                  only allow one version of a package
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @option --global-folder <path>                specify a custom folder to store global packages
# @flag --har                                   save HAR output of network traffic
# @option --https-proxy <host>
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --non-interactive                       do not show interactive prompts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --no-progress                           disable progress bar
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --prod <prod>
# @option --production <prod>
# @option --proxy <host>
# @flag --pure-lockfile                         don't generate a lockfile
# @option --registry <url>                      override configuration registry
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --strict-semver
# @flag --update-checksums                      update package checksums from current repository
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag -v --version                            output the version number
# @flag --verbose                               output verbose messages on internal operations
# @flag -h --help                               output usage information
# @arg cmd[`_choice_script`]

# {{ yarn add
# @cmd Installs a package and any packages that it depends on.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -W --ignore-workspace-root-check        required to run yarn add inside a workspace root
# @flag -D --dev                                save package to your `devDependencies`
# @flag -P --peer                               save package to your `peerDependencies`
# @flag -O --optional                           save package to your `optionalDependencies`
# @flag -E --exact                              install exact version
# @flag -T --tilde                              install most recent release with the same minor version
# @flag -A --audit                              Run vulnerability audit on installed packages
# @flag -h --help                               output usage information
# @arg packages*
add() {
    :;
}
# }} yarn add

# {{ yarn audit
# @cmd Perform a vulnerability audit against the installed packages.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag --summary                               Only print the summary.
# @option --groups[devDependencies|dependencies|optionalDependencies] <group_name+>  Only audit dependencies from listed groups.
# @option --level[info|low|moderate|high|critical] <severity>  Only print advisories with severity greater than or equal
# @flag -h --help                               output usage information
audit() {
    :;
}
# }} yarn audit

# {{ yarn autoclean
# @cmd Cleans and removes unnecessary files from package dependencies.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -I --init                               Create ".yarnclean" file with the default entries.
# @flag -F --force                              Run autoclean using the existing ".yarnclean" file.
# @flag -h --help                               output usage information
autoclean() {
    :;
}
# }} yarn autoclean

# {{ yarn bin
# @cmd Displays the location of the yarn bin folder.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
bin() {
    :;
}
# }} yarn bin

# {{ yarn cache
# @cmd Manage yarn cache.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --pattern <pattern>                   filter cached packages by pattern
# @flag -h --help                               output usage information
cache() {
    :;
}

# {{{ yarn cache list
# @cmd print out every cached package.
# @alias ls
# @option --pattern <pattern>
cache::list() {
    :;
}
# }}} yarn cache list

# {{{ yarn cache dir
# @cmd print out the path where yarn’s global cache is currently stored.
cache::dir() {
    :;
}
# }}} yarn cache dir

# {{{ yarn cache clean
# @cmd clear the global cache.
# @arg module_name*
cache::clean() {
    :;
}
# }}} yarn cache clean
# }} yarn cache

# {{ yarn check
# @cmd Verifies that versions of the package dependencies in the current project’s package.json match those in yarn’s lock file.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag --integrity
# @flag --verify-tree
# @flag -h --help                               output usage information
check() {
    :;
}
# }} yarn check

# {{ yarn config
# @cmd Manages the yarn configuration files.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
config() {
    :;
}

# {{{ yarn config set
# @cmd Sets the config key to a certain value.
# @flag -g --global
# @arg key![`_choice_config_key`]
# @arg value!
config::set() {
    :;
}
# }}} yarn config set

# {{{ yarn config get
# @cmd Echoes the value for a given key to stdout.
# @arg key![`_choice_config_key`]
config::get() {
    :;
}
# }}} yarn config get

# {{{ yarn config delete
# @cmd Deletes a given key from the config.
# @arg key![`_choice_config_key`]
config::delete() {
    :;
}
# }}} yarn config delete

# {{{ yarn config list
# @cmd Displays the current configuration.
config::list() {
    :;
}
# }}} yarn config list
# }} yarn config

# {{ yarn create
# @cmd Creates new projects from any create-* starter kits.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
create() {
    :;
}
# }} yarn create

# {{ yarn generate-lock-entry
# @cmd Generates a lock file entry.
# @alias generateLockEntry
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --use-manifest <location>             description
# @option --resolved <resolved>                 description
# @option --registry <registry>                 description
# @flag -h --help                               output usage information
generate-lock-entry() {
    :;
}
# }} yarn generate-lock-entry

# {{ yarn global
# @cmd Install packages globally on your operating system.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --prefix <prefix>                     bin prefix to use to install binaries
# @flag --latest                                upgrade to the latest version of packages
# @flag -h --help                               output usage information
global() {
    :;
}

# {{{ yarn global add
# @cmd Installs packages and any packages that it depends on.
# @option --prefix <prefix>    bin prefix
# @arg packages+
global::add() {
    :;
}
# }}} yarn global add

# {{{ yarn global bin
# @cmd Displays the location of the yarn bin folder.
# @option --prefix <prefix>    bin prefix
global::bin() {
    :;
}
# }}} yarn global bin

# {{{ yarn global remove
# @cmd Remove packages.
# @option --prefix <prefix>    bin prefix
# @arg packages+[`_choice_global_dependency`]
global::remove() {
    :;
}
# }}} yarn global remove

# {{{ yarn global upgrade
# @cmd Upgrades packages to their latest version based on the specified range.
# @option --prefix <prefix>    bin prefix
# @arg packages+[`_choice_global_dependency`]
global::upgrade() {
    :;
}
# }}} yarn global upgrade
# }} yarn global

# {{ yarn import
# @cmd Generates yarn.lock from an npm package-lock.json file in the same location or an existing npm-installed node_modules folder.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
import() {
    :;
}
# }} yarn import

# {{ yarn info
# @cmd Show information about a package.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
info() {
    :;
}
# }} yarn info

# {{ yarn init
# @cmd Interactively creates or updates a package.json file.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -y --yes                                use default options
# @flag -p --private                            use default options and private true
# @option -i --install <value>                  install a specific Yarn release
# @flag -2                                      generates the project using Yarn 2
# @flag -h --help                               output usage information
init() {
    :;
}
# }} yarn init

# {{ yarn install
# @cmd Install all dependencies for a project.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -A --audit                              Run vulnerability audit on installed packages
# @flag -g --global                             DEPRECATED
# @flag -S --save                               DEPRECATED - save package to your `dependencies`
# @flag -D --save-dev                           DEPRECATED - save package to your `devDependencies`
# @flag -P --save-peer                          DEPRECATED - save package to your `peerDependencies`
# @flag -O --save-optional                      DEPRECATED - save package to your `optionalDependencies`
# @flag -E --save-exact                         DEPRECATED
# @flag -T --save-tilde                         DEPRECATED
# @flag -h --help                               output usage information
install() {
    :;
}
# }} yarn install

# {{ yarn licenses
# @cmd List licenses for installed packages.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
licenses() {
    :;
}

# {{{ yarn licenses list
# @cmd List in alphabetical order all of the packages that were installed by yarn or yarn install, and give you the license.
licenses::list() {
    :;
}
# }}} yarn licenses list

# {{{ yarn licenses generate-disclaimer
# @cmd Return a sorted list of licenses from all the packages you have installed to the stdout
licenses::generate-disclaimer() {
    :;
}
# }}} yarn licenses generate-disclaimer
# }} yarn licenses

# {{ yarn link
# @cmd Symlink a package folder during development.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
link() {
    :;
}
# }} yarn link

# {{ yarn list
# @cmd List installed packages.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --depth <depth>                       Limit the depth of the shown dependencies
# @option --pattern <pattern>                   Filter dependencies by pattern
# @flag -h --help                               output usage information
list() {
    :;
}
# }} yarn list

# {{ yarn login
# @cmd Store registry username and email.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
login() {
    :;
}
# }} yarn login

# {{ yarn logout
# @cmd Clear registry username and email.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
logout() {
    :;
}
# }} yarn logout

# {{ yarn node
# @cmd Runs Node with the same version that the one used by Yarn itself, and by default from the project root.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --into <path>                         Sets the cwd to the specified location
# @flag -h --help                               output usage information
# @arg args*
node() {
    :;
}
# }} yarn node

# {{ yarn outdated
# @cmd Checks for outdated package dependencies.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
# @arg packages*
outdated() {
    :;
}
# }} yarn outdated

# {{ yarn owner
# @cmd Manage package owners.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
owner() {
    :;
}

# {{{ yarn owner list
# @cmd Lists all of the owners of a <package>.
# @arg package!
owner::list() {
    :;
}
# }}} yarn owner list

# {{{ yarn owner add
# @cmd Adds the <user> as an owner of the <package>.
# @arg user!
# @arg package!
owner::add() {
    :;
}
# }}} yarn owner add

# {{{ yarn owner remove
# @cmd Removes the <user> as an owner of the <package>.
# @arg user!
# @arg package!
owner::remove() {
    :;
}
# }}} yarn owner remove
# }} yarn owner

# {{ yarn pack
# @cmd Creates a compressed gzip archive of package dependencies.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option -f --filename <filename>              filename
# @flag -h --help                               output usage information
pack() {
    :;
}
# }} yarn pack

# {{ yarn policies
# @cmd Defines project-wide policies for your project.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
policies() {
    :;
}

# {{{ yarn policies set-version
# @cmd Enforcing Yarn’s version across your project.
# @flag --rc    Use latest rc release
# @arg ver!
policies::set-version() {
    :;
}
# }}} yarn policies set-version
# }} yarn policies

# {{ yarn publish
# @cmd Publishes a package to the npm registry.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --new-version <version>               new version
# @flag --major                                 auto-increment major version number
# @flag --minor                                 auto-increment minor version number
# @flag --patch                                 auto-increment patch version number
# @flag --premajor                              auto-increment premajor version number
# @flag --preminor                              auto-increment preminor version number
# @flag --prepatch                              auto-increment prepatch version number
# @flag --prerelease                            auto-increment prerelease version number
# @option --preid <preid>                       add a custom identifier to the prerelease
# @option --message <message>                   message
# @flag --no-git-tag-version                    no git tag version
# @flag --no-commit-hooks                       bypass git hooks when committing new version
# @option --access <access>                     access
# @option --tag <tag>                           tag
# @flag -h --help                               output usage information
# @arg tarball-folder <<tarball>|<folder>>
publish() {
    :;
}
# }} yarn publish

# {{ yarn remove
# @cmd Remove the package named foo from your direct dependencies updating your package.json and yarn.lock files in the process.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -W --ignore-workspace-root-check        required to run yarn remove inside a workspace root
# @flag -h --help                               output usage information
# @arg packages*[`_choice_dependency`]
remove() {
    :;
}
# }} yarn remove

# {{ yarn run
# @cmd Runs a defined package script.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
# @arg script[`_choice_script`]
run() {
    :;
}
# }} yarn run

# {{ yarn tag
# @cmd Add, remove, or list tags on a package.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
tag() {
    :;
}
# }} yarn tag

# {{ yarn team
# @cmd Maintain team memberships.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
team() {
    :;
}

# {{{ yarn team create
# @cmd Create a new team.
# @arg scope-team! <scope:team>
team::create() {
    :;
}
# }}} yarn team create

# {{{ yarn team destroy
# @cmd Destroys an existing team.
# @arg scope-team! <scope:team>
team::destroy() {
    :;
}
# }}} yarn team destroy

# {{{ yarn team add
# @cmd Add a user to an existing team.
# @arg scope-team! <scope:team>
# @arg user!
team::add() {
    :;
}
# }}} yarn team add

# {{{ yarn team remove
# @cmd Remove a user from a team they belong to.
# @arg scope-team! <scope:team>
# @arg user!
team::remove() {
    :;
}
# }}} yarn team remove

# {{{ yarn team list
# @cmd List of existing teams under that organization.
# @arg scope-team! <scope[:team]>
team::list() {
    :;
}
# }}} yarn team list
# }} yarn team

# {{ yarn test
# @cmd Runs the test script defined by the package.
test() {
    :;
}
# }} yarn test

# {{ yarn unlink
# @cmd Unlink a previously created symlink for a package.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
unlink() {
    :;
}
# }} yarn unlink

# {{ yarn unplug
# @cmd Runs Node with the same version that the one used by Yarn itself, and by default from the project root.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag --clear                                 Delete the selected packages
# @flag --clear-all                             Delete all unplugged packages
# @flag -h --help                               output usage information
# @arg packages*
unplug() {
    :;
}
# }} yarn unplug

# {{ yarn upgrade
# @cmd Upgrades packages to their latest version based on the specified range.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option -S --scope <scope>                    upgrade packages under the specified scope
# @flag -L --latest                             list the latest version of packages, ignoring version ranges in package.json
# @flag -E --exact                              install exact version.
# @option -P --pattern <pattern>                upgrade packages that match pattern
# @flag -T --tilde                              install most recent release with the same minor version.
# @flag -C --caret                              install most recent release with the same major version.
# @flag -A --audit                              Run vulnerability audit on installed packages
# @flag -h --help                               output usage information
# @arg packages*[`_choice_dependency`]
upgrade() {
    :;
}
# }} yarn upgrade

# {{ yarn upgrade-interactive
# @cmd Update outdated packages in interactive mode.
# @alias upgradeInteractive
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option -S --scope <scope>                    upgrade packages under the specified scope
# @flag --latest                                list the latest version of packages, ignoring version ranges in package.json
# @flag -E --exact                              install exact version.
# @flag -T --tilde                              install most recent release with the same minor version.
# @flag -C --caret                              install most recent release with the same major version.
# @flag -h --help                               output usage information
upgrade-interactive() {
    :;
}
# }} yarn upgrade-interactive

# {{ yarn version
# @cmd Updates the package version.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @option --new-version <version>               new version
# @flag --major                                 auto-increment major version number
# @flag --minor                                 auto-increment minor version number
# @flag --patch                                 auto-increment patch version number
# @flag --premajor                              auto-increment premajor version number
# @flag --preminor                              auto-increment preminor version number
# @flag --prepatch                              auto-increment prepatch version number
# @flag --prerelease                            auto-increment prerelease version number
# @option --preid <preid>                       add a custom identifier to the prerelease
# @option --message <message>                   message
# @flag --no-git-tag-version                    no git tag version
# @flag --no-commit-hooks                       bypass git hooks when committing new version
# @flag -h --help                               output usage information
version() {
    :;
}
# }} yarn version

# {{ yarn versions
# @cmd Displays version information of the currently installed Yarn, Node.js, and its dependencies.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
versions() {
    :;
}
# }} yarn versions

# {{ yarn why
# @cmd Show information about why a package is installed.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
why() {
    :;
}
# }} yarn why

# {{ yarn workspace
# @cmd Run the chosen Yarn command in the selected workspace.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
# @arg workspace-name![`_choice_workspace`]
# @arg workspace-args~[`_choice_workspace_args`]
workspace() {
    :;
}
# }} yarn workspace

# {{ yarn workspaces
# @cmd Show information about your workspaces.
# @flag -v --version                            output the version number
# @flag --no-default-rc                         prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>                   specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                               output verbose messages on internal operations
# @flag --offline                               trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline                        use network only if dependencies are not available in local cache
# @flag --enable-pnp                            enable the Plug'n'Play installation
# @flag --pnp                                   enable the Plug'n'Play installation
# @flag --disable-pnp                           disable the Plug'n'Play installation
# @flag --strict-semver
# @flag --json                                  format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts                        don't run lifecycle scripts
# @flag --har                                   save HAR output of network traffic
# @flag --ignore-platform                       ignore platform checks
# @flag --ignore-engines                        ignore engines check
# @flag --ignore-optional                       ignore optional dependencies
# @flag --force                                 install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check                  run install without checking if node_modules is installed
# @flag --check-files                           install will verify file tree of packages for consistency
# @flag --no-bin-links                          don't generate bin links when setting up packages
# @flag --flat                                  only allow one version of a package
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile                           don't read or generate a lockfile
# @flag --pure-lockfile                         don't generate a lockfile
# @flag --frozen-lockfile                       don't generate a lockfile and fail if an update is needed
# @flag --update-checksums                      update package checksums from current repository
# @flag --link-duplicates                       create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>                  specify a custom folder to store global links
# @option --global-folder <path>                specify a custom folder to store global packages
# @option --modules-folder <path>               rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>       specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>                 specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>          use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>                        enable emoji in output (default: false)
# @flag -s --silent                             skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                           working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>                      override configuration registry
# @flag --no-progress                           disable progress bar
# @option --network-concurrency <number>        maximum number of concurrent network requests
# @option --network-timeout <milliseconds>      TCP timeout for network requests
# @flag --non-interactive                       do not show interactive prompts
# @option --scripts-prepend-node-path <bool>    prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check                 do not warn when using a potentially unsupported Node version
# @flag --focus                                 Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>                       one-time password for two factor authentication
# @flag -h --help                               output usage information
workspaces() {
    :;
}

# {{{ yarn workspaces info
# @cmd display the workspace dependency tree of your current project.
# @flag --json
workspaces::info() {
    :;
}
# }}} yarn workspaces info

# {{{ yarn workspaces run
# @cmd run the chosen Yarn command in each workspace.
# @arg cmd~[`_choice_workspaces_cmd`]
workspaces::run() {
    :;
}
# }}} yarn workspaces run
# }} yarn workspaces

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_script() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_choice_config_key() {
    yarn config list --json |  yq 'select(.type == "inspect") | .data | keys | .[]'
}

_choice_global_dependency() {
    cat "$(_argc_util_path_resolve "$(yarn global dir)" package.json)" | \
    yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
}

_choice_dependency() {
    _helper_find_pkg_json_path
    if [[ -n "$pkg_json_path" ]]; then
        cat "$pkg_json_path" |  yq '(.dependencies // {}) + (.devDependencies // {}) + (.optionalDependencies // {}) | keys | .[]'
    fi
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

_choice_workspaces_cmd() {
    _argc_util_comp_subcommand 0 yarn
}

_helper_find_pkg_json_path() {
    pkg_json_path="$(_argc_util_path_search_parent package.json)"
}

command eval "$(argc --argc-eval "$0" "$@")"