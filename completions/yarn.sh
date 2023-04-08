#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @flag --check-files                install will verify file tree of packages for consistency
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @flag --disable-pnp                disable the Plug'n'Play installation
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --flat                       only allow one version of a package
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @option --global-folder <path>     specify a custom folder to store global packages
# @flag --har                        save HAR output of network traffic
# @option --https-proxy <host>       
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --non-interactive            do not show interactive prompts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --no-progress                disable progress bar
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --prod <prod>              
# @option --production <prod>        
# @option --proxy <host>             
# @flag --pure-lockfile              don't generate a lockfile
# @option --registry <url>           override configuration registry
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --strict-semver              
# @flag --update-checksums           update package checksums from current repository
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag -v --version                 output the version number
# @flag --verbose                    output verbose messages on internal operations
# @flag -h --help                    output usage information
# @arg cmd[`_choice_cmd`]            

# {{ yarn access
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
access() {
    :;
}

# @cmd
# @arg package
access::public() {
    :;
}

# @cmd
# @arg package
access::restricted() {
    :;
}

# @cmd
# @arg mode[read-only|read-write]
# @arg scope-team
# @arg package
access::grant() {
    :;
}

# @cmd
# @arg scope-team
# @arg package
access::revoke() {
    :;
}

# @cmd
# @arg user-or-scope
access::ls-packages() {
    :;
}

# @cmd
# @arg package
# @arg user
access::ls-collaborators() {
    :;
}

# @cmd
# @arg package
access::edit() {
    :;
}
# }} yarn access


# {{ yarn add
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -W --ignore-workspace-root-check  required to run yarn add inside a workspace root
# @flag -D --dev                     save package to your `devDependencies`
# @flag -P --peer                    save package to your `peerDependencies`
# @flag -O --optional                save package to your `optionalDependencies`
# @flag -E --exact                   install exact version
# @flag -T --tilde                   install most recent release with the same minor version
# @flag -A --audit                   Run vulnerability audit on installed packages
# @flag -h --help                    output usage information
# @arg packages*                     
add() {
    :;
}
# }} yarn add


# {{ yarn audit
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag --summary                    Only print the summary.
# @option --groups* <group_name> <group_name>  Only audit dependencies from listed groups.
# @option --level <severity>         Only print advisories with severity greater than or equal to one of the following:     info|low|moderate|high|critical.
# @flag -h --help                    output usage information
audit() {
    :;
}
# }} yarn audit


# {{ yarn autoclean
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -I --init                    Create ".yarnclean" file with the default entries.
# @flag -F --force                   Run autoclean using the existing ".yarnclean" file.
# @flag -h --help                    output usage information
autoclean() {
    :;
}
# }} yarn autoclean


# {{ yarn bin
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
bin() {
    :;
}
# }} yarn bin


# {{ yarn cache
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --pattern <pattern>
cache() {
    :;
}

# @cmd
# @option --pattern
cache::list() {
    :;
}

# @cmd
cache::dir() {
    :;
}

# @cmd
# @arg module_name*
cache::clean() {
    :;
}
# }} yarn cache


# {{ yarn check
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag --integrity                  
# @flag --verify-tree                
# @flag -h --help                    output usage information
check() {
    :;
}
# }} yarn check


# {{ yarn config
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
config() {
    :;
}

# @cmd
# @flag -g --global
# @arg key[`_choice_config_key`]
# @arg value
config::set() {
    :;
}

# @cmd
# @arg key[`_choice_config_key`]
config::get() {
    :;
}

# @cmd
# @arg key[`_choice_config_key`]
config::delete() {
    :;
}

# @cmd
config::list() {
    :;
}
# }} yarn config


# {{ yarn create
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
create() {
    :;
}
# }} yarn create


# {{ yarn exec
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
exec() {
    :;
}
# }} yarn exec


# {{ yarn generate-lock-entry
# @cmd
# @alias generateLockEntry
# @flag -v --version                   output the version number
# @flag --no-default-rc                prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>          specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                      output verbose messages on internal operations
# @flag --offline                      trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline               use network only if dependencies are not available in local cache
# @flag --enable-pnp                   enable the Plug'n'Play installation
# @flag --pnp                          enable the Plug'n'Play installation
# @flag --disable-pnp                  disable the Plug'n'Play installation
# @flag --strict-semver                
# @flag --json                         format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts               don't run lifecycle scripts
# @flag --har                          save HAR output of network traffic
# @flag --ignore-platform              ignore platform checks
# @flag --ignore-engines               ignore engines check
# @flag --ignore-optional              ignore optional dependencies
# @flag --force                        install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check         run install without checking if node_modules is installed
# @flag --check-files                  install will verify file tree of packages for consistency
# @flag --no-bin-links                 don't generate bin links when setting up packages
# @flag --flat                         only allow one version of a package
# @option --prod <prod>                
# @option --production <prod>          
# @flag --no-lockfile                  don't read or generate a lockfile
# @flag --pure-lockfile                don't generate a lockfile
# @flag --frozen-lockfile              don't generate a lockfile and fail if an update is needed
# @flag --update-checksums             update package checksums from current repository
# @flag --link-duplicates              create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>         specify a custom folder to store global links
# @option --global-folder <path>       specify a custom folder to store global packages
# @option --modules-folder <path>      rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>        specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>               enable emoji in output (default: false)
# @flag -s --silent                    skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                  working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>               
# @option --https-proxy <host>         
# @option --registry <url>             override configuration registry
# @flag --no-progress                  disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive              do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check        do not warn when using a potentially unsupported Node version
# @flag --focus                        Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>              one-time password for two factor authentication
# @option --use-manifest <location>    description
# @option --resolved <resolved>        description
# @flag -h --help                      output usage information
generate-lock-entry() {
    :;
}
# }} yarn generate-lock-entry


# {{ yarn global
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --prefix <prefix>
# @flag --latest
global() {
    :;
}

# @cmd
# @option --prefix
# @arg package
global::add() {
    :;
}

# @cmd
# @option --prefix
global::bin() {
    :;
}

# @cmd
# @option --prefix
global::list() {
    :;
}

# @cmd
# @option --prefix
# @arg packages*[`_choice_global_dependency`]
global::remove() {
    :;
}

# @cmd
# @option --prefix
# @arg packages*[`_choice_global_dependency`]
global::upgrade() {
    :;
}

# @cmd
# @option --prefix
global::upgrade-interactive() {
    :;
}
# }} yarn global


# {{ yarn import
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
import() {
    :;
}
# }} yarn import


# {{ yarn info
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
info() {
    :;
}
# }} yarn info


# {{ yarn init
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -y --yes                     use default options
# @flag -p --private                 use default options and private true
# @option -i --install <value>       install a specific Yarn release
# @flag -2                           generates the project using Yarn 2
# @flag -h --help                    output usage information
init() {
    :;
}
# }} yarn init


# {{ yarn install
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -A --audit                   Run vulnerability audit on installed packages
# @flag -g --global                  DEPRECATED
# @flag -S --save                    DEPRECATED - save package to your `dependencies`
# @flag -D --save-dev                DEPRECATED - save package to your `devDependencies`
# @flag -P --save-peer               DEPRECATED - save package to your `peerDependencies`
# @flag -O --save-optional           DEPRECATED - save package to your `optionalDependencies`
# @flag -E --save-exact              DEPRECATED
# @flag -T --save-tilde              DEPRECATED
# @flag -h --help                    output usage information
install() {
    :;
}
# }} yarn install


# {{ yarn licenses
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
licenses() {
    :;
}
# }} yarn licenses


# {{ yarn link
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
link() {
    :;
}
# }} yarn link


# {{ yarn list
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option --depth <depth>            Limit the depth of the shown dependencies
# @option --pattern <pattern>        Filter dependencies by pattern
# @flag -h --help                    output usage information
list() {
    :;
}
# }} yarn list


# {{ yarn login
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
login() {
    :;
}
# }} yarn login


# {{ yarn logout
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
logout() {
    :;
}
# }} yarn logout


# {{ yarn node
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option --into <path>              Sets the cwd to the specified location
# @flag -h --help                    output usage information
# @arg args*                         
node() {
    :;
}
# }} yarn node


# {{ yarn outdated
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
# @arg packages*                     
outdated() {
    :;
}
# }} yarn outdated


# {{ yarn owner
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
owner() {
    :;
}

# @cmd
# @arg package
owner::list() {
    :;
}

# @cmd
# @arg user
# @arg package
owner::add() {
    :;
}

# @cmd
# @arg user
# @arg package
owner::remove() {
    :;
}
# }} yarn owner


# {{ yarn pack
# @cmd
# @flag -v --version                  output the version number
# @flag --no-default-rc               prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>         specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                     output verbose messages on internal operations
# @flag --offline                     trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline              use network only if dependencies are not available in local cache
# @flag --enable-pnp                  enable the Plug'n'Play installation
# @flag --pnp                         enable the Plug'n'Play installation
# @flag --disable-pnp                 disable the Plug'n'Play installation
# @flag --strict-semver               
# @flag --json                        format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts              don't run lifecycle scripts
# @flag --har                         save HAR output of network traffic
# @flag --ignore-platform             ignore platform checks
# @flag --ignore-engines              ignore engines check
# @flag --ignore-optional             ignore optional dependencies
# @flag --force                       install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check        run install without checking if node_modules is installed
# @flag --check-files                 install will verify file tree of packages for consistency
# @flag --no-bin-links                don't generate bin links when setting up packages
# @flag --flat                        only allow one version of a package
# @option --prod <prod>               
# @option --production <prod>         
# @flag --no-lockfile                 don't read or generate a lockfile
# @flag --pure-lockfile               don't generate a lockfile
# @flag --frozen-lockfile             don't generate a lockfile and fail if an update is needed
# @flag --update-checksums            update package checksums from current repository
# @flag --link-duplicates             create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>        specify a custom folder to store global links
# @option --global-folder <path>      specify a custom folder to store global packages
# @option --modules-folder <path>     rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>       specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>              enable emoji in output (default: false)
# @flag -s --silent                   skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                 working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>              
# @option --https-proxy <host>        
# @option --registry <url>            override configuration registry
# @flag --no-progress                 disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive             do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check       do not warn when using a potentially unsupported Node version
# @flag --focus                       Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>             one-time password for two factor authentication
# @option -f --filename <filename>    filename
# @flag -h --help                     output usage information
pack() {
    :;
}
# }} yarn pack


# {{ yarn policies
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
policies() {
    :;
}

# @cmd
# @flag --rc
# @arg version
policies::set-version() {
    :;
}
# }} yarn policies


# {{ yarn publish
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option --new-version <version>    new version
# @flag --major                      auto-increment major version number
# @flag --minor                      auto-increment minor version number
# @flag --patch                      auto-increment patch version number
# @flag --premajor                   auto-increment premajor version number
# @flag --preminor                   auto-increment preminor version number
# @flag --prepatch                   auto-increment prepatch version number
# @flag --prerelease                 auto-increment prerelease version number
# @option --preid <preid>            add a custom identifier to the prerelease
# @option --message <message>        message
# @flag --no-git-tag-version         no git tag version
# @flag --no-commit-hooks            bypass git hooks when committing new version
# @option --access <access>          access
# @option --tag <tag>                tag
# @flag -h --help                    output usage information
# @arg tarball-folder <<tarball>|<folder>>  
publish() {
    :;
}
# }} yarn publish


# {{ yarn remove
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -W --ignore-workspace-root-check  required to run yarn remove inside a workspace root
# @flag -h --help                    output usage information
# @arg packages*[`_choice_dependency`]  
remove() {
    :;
}
# }} yarn remove


# {{ yarn run
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
# @arg script[`_choice_script`]      
run() {
    :;
}
# }} yarn run


# {{ yarn tag
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
tag() {
    :;
}
# }} yarn tag


# {{ yarn team
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
team() {
    :;
}

# @cmd
# @arg scope-team
team::create() {
    :;
}

# @cmd
# @arg scope-team
team::destroy() {
    :;
}

# @cmd
# @arg scope-team
# @arg user
team::add() {
    :;
}

# @cmd
# @arg scope-team
# @arg user
team::remove() {
    :;
}

# @cmd
# @arg scope-or-scope-team
team::list() {
    :;
}
# }} yarn team


# {{ yarn unlink
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
unlink() {
    :;
}
# }} yarn unlink


# {{ yarn unplug
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag --clear                      Delete the selected packages
# @flag --clear-all                  Delete all unplugged packages
# @flag -h --help                    output usage information
# @arg packages*                     
unplug() {
    :;
}
# }} yarn unplug


# {{ yarn upgrade
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option -S --scope <scope>         upgrade packages under the specified scope
# @flag -L --latest                  list the latest version of packages, ignoring version ranges in package.json
# @flag -E --exact                   install exact version. Only used when --latest is specified.
# @option -P --pattern <pattern>     upgrade packages that match pattern
# @flag -T --tilde                   install most recent release with the same minor version.
# @flag -C --caret                   install most recent release with the same major version.
# @flag -A --audit                   Run vulnerability audit on installed packages
# @flag -h --help                    output usage information
# @arg packages*[`_choice_dependency`]  
upgrade() {
    :;
}
# }} yarn upgrade


# {{ yarn upgrade-interactive
# @cmd
# @alias upgradeInteractive
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option -S --scope <scope>         upgrade packages under the specified scope
# @flag --latest                     list the latest version of packages, ignoring version ranges in package.json
# @flag -E --exact                   install exact version. Only used when --latest is specified.
# @flag -T --tilde                   install most recent release with the same minor version.
# @flag -C --caret                   install most recent release with the same major version.
# @flag -h --help                    output usage information
# @arg upgrade-interactive           
upgrade-interactive() {
    :;
}
# }} yarn upgrade-interactive


# {{ yarn version
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @option --new-version <version>    new version
# @flag --major                      auto-increment major version number
# @flag --minor                      auto-increment minor version number
# @flag --patch                      auto-increment patch version number
# @flag --premajor                   auto-increment premajor version number
# @flag --preminor                   auto-increment preminor version number
# @flag --prepatch                   auto-increment prepatch version number
# @flag --prerelease                 auto-increment prerelease version number
# @option --preid <preid>            add a custom identifier to the prerelease
# @option --message <message>        message
# @flag --no-git-tag-version         no git tag version
# @flag --no-commit-hooks            bypass git hooks when committing new version
# @flag -h --help                    output usage information
version() {
    :;
}
# }} yarn version


# {{ yarn versions
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
versions() {
    :;
}
# }} yarn versions


# {{ yarn why
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
why() {
    :;
}
# }} yarn why


# {{ yarn workspace
# @cmd
# @flag -v --version                 output the version number
# @flag --no-default-rc              prevent Yarn from automatically detecting yarnrc and npmrc files
# @option --use-yarnrc <path>        specifies a yarnrc file that Yarn should use (.yarnrc only, not .npmrc) (default: )
# @flag --verbose                    output verbose messages on internal operations
# @flag --offline                    trigger an error if any required dependencies are not available in local cache
# @flag --prefer-offline             use network only if dependencies are not available in local cache
# @flag --enable-pnp                 enable the Plug'n'Play installation
# @flag --pnp                        enable the Plug'n'Play installation
# @flag --disable-pnp                disable the Plug'n'Play installation
# @flag --strict-semver              
# @flag --json                       format Yarn log messages as lines of JSON (see jsonlines.org)
# @flag --ignore-scripts             don't run lifecycle scripts
# @flag --har                        save HAR output of network traffic
# @flag --ignore-platform            ignore platform checks
# @flag --ignore-engines             ignore engines check
# @flag --ignore-optional            ignore optional dependencies
# @flag --force                      install and build packages even if they were built before, overwrite lockfile
# @flag --skip-integrity-check       run install without checking if node_modules is installed
# @flag --check-files                install will verify file tree of packages for consistency
# @flag --no-bin-links               don't generate bin links when setting up packages
# @flag --flat                       only allow one version of a package
# @option --prod <prod>              
# @option --production <prod>        
# @flag --no-lockfile                don't read or generate a lockfile
# @flag --pure-lockfile              don't generate a lockfile
# @flag --frozen-lockfile            don't generate a lockfile and fail if an update is needed
# @flag --update-checksums           update package checksums from current repository
# @flag --link-duplicates            create hardlinks to the repeated modules in node_modules
# @option --link-folder <path>       specify a custom folder to store global links
# @option --global-folder <path>     specify a custom folder to store global packages
# @option --modules-folder <path>    rather than installing modules into the node_modules folder relative to the cwd, output them here
# @option --preferred-cache-folder <path>  specify a custom folder to store the yarn cache if possible
# @option --cache-folder <path>      specify a custom folder that must be used to store the yarn cache
# @option --mutex <<type>[:specifier]>  use a mutex to ensure only one yarn instance is executing
# @option --emoji <bool>             enable emoji in output (default: false)
# @flag -s --silent                  skip Yarn console logs, other types of logs (script output) will be printed
# @option --cwd <cwd>                working directory to use (default: /home/sigo/w/argc-completions)
# @option --proxy <host>             
# @option --https-proxy <host>       
# @option --registry <url>           override configuration registry
# @flag --no-progress                disable progress bar
# @option --network-concurrency <number>  maximum number of concurrent network requests
# @option --network-timeout <milliseconds>  TCP timeout for network requests
# @flag --non-interactive            do not show interactive prompts
# @option --scripts-prepend-node-path <bool>  prepend the node executable dir to the PATH in scripts
# @flag --no-node-version-check      do not warn when using a potentially unsupported Node version
# @flag --focus                      Focus on a single workspace by installing remote copies of its sibling workspaces.
# @option --otp <otpcode>            one-time password for two factor authentication
# @flag -h --help                    output usage information
# @arg workspace-name![`_choice_workspace`]  
# @arg workspace-args*[`_choice_workspace_args`]  
workspace() {
    :;
}
# }} yarn workspace


# {{ yarn workspaces
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @option --prod <prod>
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
workspaces() {
    :;
}

# @cmd
# @flag --json
workspaces::info() {
    :;
}

# @cmd
# @arg command
workspaces::run() {
    :;
}
# }} yarn workspaces


_choice_cmd() {
    _choice_script
    _helper_bin
}

_choice_script() {
    project_dir="$(_helper_locate_project)"
    cat "$project_dir/package.json" | jq -r '.scripts | keys[]' 
}

_choice_dependency() {
    project_dir="$(_helper_locate_project)"
    cat  "$project_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_global_dependency() {
    global_dir="$(_argc_util_unix_path "$(yarn global dir)")"
    cat  "$global_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_workspace() {
    yarn workspaces info | sed '1d;$d' | jq -r 'keys[]'
}

_choice_workspace_args() {
    if [[ "$1" == workspace ]] && [[ -n "$2" ]]; then
        project_dir="$(_helper_locate_project)"
        location="$(yarn workspaces info | sed '1d;$d' | jq -r '."'$2'".location')"
        if [[ -z "$location" ]]; then
            return
        fi
        workspace_dir="$project_dir/$location"
        line=" ${@:3}"
        if [[ "$argc__line" =~ [[:space:]]$ ]]; then
            line="$line "
        fi
        while read -r item; do
            if [[ "$item" == \`*\` ]]; then
                ${item:1:-1}
            else
                echo "$item"
            fi
        done < <(argc --compgen "${BASH_SOURCE[0]}" "$line")
    fi
}

_choice_config_key() {
    yarn config list --json | jq -r 'select(.type == "inspect") | .data | keys[]'
}

_helper_bin() {
    bin_dir="$(_helper_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_helper_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_helper_locate_base)"
    fi
    echo "$_project_dir"
}

_helper_locate_base() {
    if [[ -n "$workspace_dir" ]]; then
        echo "$workspace_dir" 
    elif [ -f package.json ]; then
        pwd
    else
        echo "$(_argc_util_unix_path "$(npm prefix)")"
    fi
}

_argc_util_unix_path() {
	if _argc_util_exist_cygpath; then
		cygpath "$1"
	else
		echo "$1"
	fi
}


_argc_util_exist_cygpath() {
    if [[ -z $_argc_var_exist_cygpath ]]; then
        if [[ -x "$(command -v cygpath)" ]]; then
            _argc_var_exist_cygpath=0
        else
            _argc_var_exist_cygpath=1
        fi
    fi
    return $_argc_var_exist_cygpath
}


eval "$(argc --argc-eval "$0" "$@")"