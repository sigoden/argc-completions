#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ npm access
# @cmd Set access level on published packages
# @flag --json                Whether or not to output JSON data, rather than the normal output.
# @option --opt <value>       This is a one-time password from a two-factor authenticator.
# @option --registry <url>    The base URL of the npm registry.
access() {
    :;
}
# }} npm access

# {{ npm adduser
# @cmd Add a registry user account
# @alias add-user
# @option --registry <url>                 The base URL of the npm registry.
# @option --scope <scope>                  Associate an operation with a scope for a scoped registry.
# @option -auth-type[web|legacy] <type>    What authentication strategy to use with login.
adduser() {
    :;
}
# }} npm adduser

# {{ npm audit
# @cmd Run a security audit
# @option --audit-level[info|low|moderate|high|critical|none] <value>  The minimum level of vulnerability for npm audit to exit with a non-zero exit code.
# @flag --dry-run                              Indicates that you don't want npm to make any changes and that it should only report what it would have done
# @flag -f --force                             Removes various protections against unfortunate side effects, common mistakes, unnecessary performance degradation, and malicious input.
# @flag --json                                 Whether or not to output JSON data, rather than the normal output.
# @flag --package-lock-only                    If set to true, the current operation will only use the package-lock.json, ignoring node_modules.
# @option --omit[dev|optional|peer] <value>    Dependency types to omit from the installation tree on disk.
# @flag --foreground-scripts                   Run all build scripts (ie, preinstall, install, and postinstall) scripts for installed packages in the foreground process, sharing standard input, output, and error with the main npm process.
# @flag --ignore-scripts                       If true, npm does not run scripts specified in package.json files.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
# @flag --workspaces                           Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root               Include the workspace root when workspaces are enabled for a command.
# @flag --install-links                        When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg enum[fix|signatures]
audit() {
    :;
}
# }} npm audit

# {{ npm bugs
# @cmd Report bugs for a package in a web browser
# @alias issues
# @option --browser <value>         The browser that is called by npm commands to open websites.
# @option --registry <url>          The base URL of the npm registry.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running only the workspaces defined by this configuration option.
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg pkgname*
bugs() {
    :;
}
# }} npm bugs

# {{ npm cache
# @cmd Manipulates packages cache
# @option --cache <value>    The location of npm's cache directory.
cache() {
    :;
}

# {{{ npm cache add
# @cmd Add the specified packages to the local cache.
# @arg package-spec!
cache::add() {
    :;
}
# }}} npm cache add

# {{{ npm cache clean
# @cmd Delete all data out of the cache folder.
# @arg key
cache::clean() {
    :;
}
# }}} npm cache clean

# {{{ npm cache ls
# @cmd List all cache.
# @arg name-version <name@version>
cache::ls() {
    :;
}
# }}} npm cache ls

# {{{ npm cache verify
# @cmd Verify the contents of the cache folder, garbage collecting any unneeded data, and verifying the integrity of the cache index and all cached data.
cache::verify() {
    :;
}
# }}} npm cache verify
# }} npm cache

# {{ npm ci
# @cmd Clean install a project
# @alias clean-install,ic,install-clean,isntall-clean
# @flag -S --save                              Save installed packages to a package.json file as dependencies.
# @flag -E --save-exact                        Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
# @flag -g --global                            Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling                      Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
# @flag --global-style                         Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies.
# @option --omit[dev|optional|peer] <value>    Dependency types to omit from the installation tree on disk.
# @flag --strict-peer-deps                     If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock                         If set to false, then ignore package-lock.json files when installing.
# @flag --foreground-scripts                   Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @flag --ignore-scripts                       If true, npm does not run scripts specified in package.json files.
# @flag --audit                                When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                            Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                                 When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                              Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                           Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root               Include the workspace root when workspaces are enabled for a command.
# @flag --install-links                        When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
ci() {
    :;
}
# }} npm ci

# {{ npm completion
# @cmd Tab Completion for npm
completion() {
    :;
}
# }} npm completion

# {{ npm config
# @cmd Manage the npm configuration files
# @alias c
# @flag --json                Whether or not to output JSON data, rather than the normal output.
# @flag -g --global           Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working directory.
# @option --editor <value>    The command to run for npm edit and npm config edit.
# @option --location[global|user|project] <value>  When passed to npm config this refers to which config file to use.
# @flag --long                Show extended information in ls, search, and help-search.
config() {
    :;
}

# {{{ npm config set
# @cmd Sets each of the config keys to the value provided.
# @arg key-value*[`_choice_config_key`] <<key>=<value>>
config::set() {
    :;
}
# }}} npm config set

# {{{ npm config get
# @cmd Echo the config value(s) to stdout.
# @arg key*[`_choice_config_key`]
config::get() {
    :;
}
# }}} npm config get

# {{{ npm config list
# @cmd Show all the config settings.
# @flag --json    Whether or not to output JSON data, rather than the normal output.
config::list() {
    :;
}
# }}} npm config list

# {{{ npm config delete
# @cmd Deletes the specified keys from all configuration files.
# @arg key*[`_choice_config_key`]
config::delete() {
    :;
}
# }}} npm config delete

# {{{ npm config edit
# @cmd Opens the config file in an editor.
config::edit() {
    :;
}
# }}} npm config edit

# {{{ npm config fix
# @cmd Attempts  to  repair invalid configuration items.
config::fix() {
    :;
}
# }}} npm config fix
# }} npm config

# {{ npm dedupe
# @cmd Reduce duplication in the package tree
# @alias ddp
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
# @flag --global-style              Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
dedupe() {
    :;
}
# }} npm dedupe

# {{ npm deprecate
# @cmd Deprecate a version of a package
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This is a one-time password from a two-factor authenticator.
# @arg package-spec!
# @arg message!
deprecate() {
    :;
}
# }} npm deprecate

# {{ npm diff
# @cmd The registry diff command
# @option --diff <value>               Define arguments to compare in npm diff.
# @flag --diff-name-only               Prints only filenames when using npm diff.
# @option --diff-unified <value>       The number of lines of context to print in npm diff.
# @flag --diff-ignore-all-space        Ignore whitespace when comparing lines in npm diff.
# @flag --diff-no-prefix               Do not show any source or destination prefix in npm diff output.
# @option --diff-src-prefix <value>    Source prefix to be used in npm diff output.
# @option --diff-dst-prefix <value>    Destination prefix to be used in npm diff output.
# @flag --diff-text                    Treat all files as text in npm diff.
# @flag -g --global                    Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --tag <value>                If you ask npm to install a package and don't tell it a specific version, then it will install the specified tag.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                   Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root       Include the workspace root when workspaces are enabled for a command.
# @arg paths*
diff() {
    :;
}
# }} npm diff

# {{ npm dist-tag
# @cmd Modify package distribution tags
# @alias dist-tags
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
dist-tag() {
    :;
}

# {{{ npm dist-tag add
# @cmd Tags the specified version of the package with the specified tag, or the --tag config if not specified.
# @arg package-spec!
# @arg tag!
dist-tag::add() {
    :;
}
# }}} npm dist-tag add

# {{{ npm dist-tag rm
# @cmd Clear a tag that is no longer in use from the package.
# @arg package-spec!
# @arg tag!
dist-tag::rm() {
    :;
}
# }}} npm dist-tag rm

# {{{ npm dist-tag ls
# @cmd Show all of the dist-tags for a package, defaulting to the package in the current prefix.
# @arg package-spec
dist-tag::ls() {
    :;
}
# }}} npm dist-tag ls
# }} npm dist-tag

# {{ npm docs
# @cmd Open documentation for a package in a web browser
# @alias home
# @flag --browser                   The browser that is called by npm commands to open websites.
# @option --registry <value>        The base URL of the npm registry.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg pkgname*
docs() {
    :;
}
# }} npm docs

# {{ npm doctor
# @cmd Check your npm environment
# @option --registry <value>    The base URL of the npm registry.
doctor() {
    :;
}
# }} npm doctor

# {{ npm edit
# @cmd Edit an installed package
# @option --editor <value>    The command to run for npm edit and npm config edit.
# @arg pkg!
edit() {
    :;
}
# }} npm edit

# {{ npm exec
# @cmd Run a command from a local or remote npm package
# @alias x
# @option --package <value>         The package or packages to install for npm help exec
# @option --call <value>            Optional  companion  option for npm exec, npx that allows for specifying a custom command to be run along with the in-
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg cmd!
# @arg args*
exec() {
    :;
}
# }} npm exec

# {{ npm explain
# @cmd Explain installed packages
# @alias why
# @flag --json    Whether or not to output JSON data, rather than the normal output.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @arg package-spec!
explain() {
    :;
}
# }} npm explain

# {{ npm explore
# @cmd Browse an installed package
# @option --shell <value>    The shell to run for the npm explore command.
# @arg package!
# @arg args*
explore() {
    :;
}
# }} npm explore

# {{ npm find-dupes
# @cmd Find duplication in the package tree
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
# @flag --global-style              Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
find-dupes() {
    :;
}
# }} npm find-dupes

# {{ npm fund
# @cmd Retrieve funding information
# @flag --json               Whether or not to output JSON data, rather than the normal output.
# @flag --browser            The browser that is called by npm commands to open websites.
# @flag --unicode            When set to true, npm uses unicode characters in the tree output.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @option --which <value>    If there are multiple funding sources, which 1-indexed source URL to open.
# @arg package-spec
fund() {
    :;
}
# }} npm fund

# {{ npm hook
# @cmd Manage registry hooks
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This is a one-time password from a two-factor authenticator.
hook() {
    :;
}

# {{{ npm hook add
# @cmd Add a hook
# @arg pkg!
# @arg url!
# @arg secret!
hook::add() {
    :;
}
# }}} npm hook add

# {{{ npm hook ls
# @cmd List hooks
# @arg pkg
hook::ls() {
    :;
}
# }}} npm hook ls

# {{{ npm hook rm
# @cmd Remove a hook
# @arg id!
hook::rm() {
    :;
}
# }}} npm hook rm

# {{{ npm hook update
# @cmd Update a hook
# @arg id!
# @arg url!
# @arg secret!
hook::update() {
    :;
}
# }}} npm hook update
# }} npm hook

# {{ npm init
# @cmd Create a package.json file
# @alias create,innit
# @flag --yes                       Automatically answer "yes" to any prompts that npm might print on the command line.
# @flag -f --force                  Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
# @option --scope <value>           Associate an operation with a scope for a scoped registry.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --workspaces-update         If set to true, the npm cli will run an update after operations that may possibly change the workspaces  installed  to
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg package-spec!
init() {
    :;
}
# }} npm init

# {{ npm install
# @cmd Install a package
# @alias add,i,in,isnt
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @flag -E --save-exact             Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
# @flag --global-style              Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @flag --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym-
# @arg package-spec*
install() {
    :;
}
# }} npm install

# {{ npm install-ci-test
# @cmd Install a project with a clean slate and run tests
# @alias cit,clean-install-test,sit
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @flag -E --save-exact             Dependencies  saved  to  package.json  will be configured with an exact version rather than using npm's default semver
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
# @flag --global-style              Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @flag --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
install-ci-test() {
    :;
}
# }} npm install-ci-test

# {{ npm install-test
# @cmd Install package(s) and run tests
# @alias it
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @flag -E --save-exact             Dependencies saved to package.json will be configured with an exact version rather than  using  npm's  default  semver
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
# @flag --global-style              Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @flag --foreground-scripts        Run  all  build  scripts  (ie,  preinstall, install, and postinstall) scripts for installed packages in the foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When "true" submit audit reports alongside the current npm command to the default registry and all registries  config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When "true" displays the message at the end of each npm install acknowledging the number of dependencies  looking  for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg package-spec*
install-test() {
    :;
}
# }} npm install-test

# {{ npm link
# @cmd Symlink a package folder
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @flag -E --save-exact             Dependencies saved to package.json will be configured with an exact version rather than  using  npm's  default  semver
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead  of  hoisting package installs in node_modules, install packages in the same manner that they are depended on.
# @flag --global-style              Only  install  direct  dependencies  in  the top level node_modules, but hoist on deeper dependencies.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg package-spec
link() {
    :;
}
# }} npm link

# {{ npm login
# @cmd Login to a registry user account
# @option --registry <value>     The base URL of the npm registry.
# @option --scope <value>        Associate an operation with a scope for a scoped registry.
# @option --auth-type <value>    What authentication strategy to use with login.
login() {
    :;
}
# }} npm login

# {{ npm logout
# @cmd Log out of the registry
# @option --registry <value>    The base URL of the npm registry.
# @option --scope <value>       Associate an operation with a scope for a scoped registry.
logout() {
    :;
}
# }} npm logout

# {{ npm ls
# @cmd List installed packages
# @alias list
# @flag --all                       When  running  npm  outdated  and npm ls, setting --all will show all outdated or installed packages, rather than only
# @flag --json                      Whether or not to output JSON data, rather than the normal output.
# @flag --long                      Show extended information in ls, search, and help-search.
# @flag --parseable                 Output parseable results from commands that write to standard output.
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --depth <value>           The depth to go when recursing packages for npm ls.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --link                      Used with npm ls, limiting output to only those packages that are linked.
# @flag --package-lock-only         If set to true, the current operation will only use the package-lock.json, ignoring node_modules.
# @flag --unicode                   When set to true, npm uses unicode characters in the tree output.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg package-spec*
ls() {
    :;
}
# }} npm ls

# {{ npm org
# @cmd Manage orgs
# @alias ogr
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This is a one-time password from a two-factor authenticator.
# @flag --json                  Whether or not to output JSON data, rather than the normal output.
# @flag --parseable             Output parseable results from commands that write to standard output.
org() {
    :;
}

# {{{ npm org set
# @cmd Add user to org.
# @arg orgname!
# @arg username!
# @arg enum[developer|admin|owner]
org::set() {
    :;
}
# }}} npm org set

# {{{ npm org rm
# @cmd Remove a user from an org.
# @arg orgname!
# @arg username!
org::rm() {
    :;
}
# }}} npm org rm

# {{{ npm org ls
# @cmd List all users in an org.
# @arg orgname!
# @arg username
org::ls() {
    :;
}
# }}} npm org ls
# }} npm org

# {{ npm outdated
# @cmd Check for outdated packages
# @flag --all          When  running  npm  outdated  and npm ls, setting --all will show all outdated or installed packages, rather than only
# @flag --json         Whether or not to output JSON data, rather than the normal output.
# @flag --long         Show extended information in ls, search, and help-search.
# @flag --parseable    Output parseable results from commands that write to standard output.
# @flag -g --global    Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @arg package-spec*
outdated() {
    :;
}
# }} npm outdated

# {{ npm owner
# @cmd Manage package owners
# @alias author
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This  is  a one-time password from a two-factor authenticator.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces            Set to true to run the command in the context of all configured workspaces.
owner() {
    :;
}

# {{{ npm owner ls
# @cmd List all the users who have access to modify a package and push new versions.
# @arg package-spec!
owner::ls() {
    :;
}
# }}} npm owner ls

# {{{ npm owner add
# @cmd Add a new user as a maintainer of a package.
# @arg user!
# @arg package-spec!
owner::add() {
    :;
}
# }}} npm owner add

# {{{ npm owner rm
# @cmd Remove a user from the package owner list.
# @arg user!
# @arg package-spec!
owner::rm() {
    :;
}
# }}} npm owner rm
# }} npm owner

# {{ npm pack
# @cmd Create a tarball from a package
# @flag --dry-run                       Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @flag --json                          Whether or not to output JSON data, rather than the normal output.
# @option --pack-destination <value>    Directory in which npm pack will save tarballs.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                    Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root        Include the workspace root when workspaces are enabled for a command.
# @option --Description <value>
# @arg package-spec!
pack() {
    :;
}
# }} npm pack

# {{ npm ping
# @cmd Ping npm registry
# @option --registry <value>    The base URL of the npm registry.
ping() {
    :;
}
# }} npm ping

# {{ npm pkg
# @cmd Manages your package.json
# @flag -f --force      Removes various protections against unfortunate side effects, common mistakes,  unnecessary  performance  degradation,
# @flag --json          Whether or not to output JSON data, rather than the normal output.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces    Set to true to run the command in the context of all configured workspaces.
pkg() {
    :;
}

# {{{ npm pkg get
# @cmd Retrieves a value key, defined in your package.json file.
# @arg field+
pkg::get() {
    :;
}
# }}} npm pkg get

# {{{ npm pkg set
# @cmd Sets a value in your package.json based on the field value.
# @arg key-value+ <key=value>
pkg::set() {
    :;
}
# }}} npm pkg set

# {{{ npm pkg delete
# @cmd Deletes a key from your package.json.
# @arg field+
pkg::delete() {
    :;
}
# }}} npm pkg delete
# }} npm pkg

# {{ npm prefix
# @cmd Display prefix
# @flag -g --global    Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
prefix() {
    :;
}
# }} npm prefix

# {{ npm profile
# @cmd Change settings on your registry profile
# @option --registry <value>    The base URL of the npm registry.
# @flag --json                  Whether or not to output JSON data, rather than the normal output.
# @flag --parseable             Output parseable results from commands that write to standard output.
# @option --otp <value>         This  is  a one-time password from a two-factor authenticator.
profile() {
    :;
}

# {{{ npm profile get
# @cmd Display all of the properties of your profile, or one or more specific properties.
# @arg key
profile::get() {
    :;
}
# }}} npm profile get

# {{{ npm profile set
# @cmd Set the value of a profile property.
# @arg key!
# @arg value!
profile::set() {
    :;
}
# }}} npm profile set

# {{{ npm profile enable-2fa
# @cmd Enables two-factor authentication.
# @arg enum[auth-only|auth-and-writes]
profile::enable-2fa() {
    :;
}
# }}} npm profile enable-2fa

# {{{ npm profile disable-2fa
# @cmd Disables two-factor authentication.
profile::disable-2fa() {
    :;
}
# }}} npm profile disable-2fa
# }} npm profile

# {{ npm prune
# @cmd Remove extraneous packages
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @flag --json                      Whether or not to output JSON data, rather than the normal output.
# @flag --foreground-scripts        Run  all  build  scripts  (ie,  preinstall, install, and postinstall) scripts for installed packages in the foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym-
# @arg pkg*
prune() {
    :;
}
# }} npm prune

# {{ npm publish
# @cmd Publish a package
# @option --tag <value>             If you ask npm to install a package and don't tell it a specific version, then it will install the specified tag.
# @option --access[null|restricted|public] <value>  If you do not want your scoped package to be publicly viewable (and installable) set --access=restricted.
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option --otp <value>             This is a one-time password from a two-factor authenticator.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg package-spec!
publish() {
    :;
}
# }} npm publish

# {{ npm query
# @cmd Dependency selector query
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg selector!
query() {
    :;
}
# }} npm query

# {{ npm rebuild
# @cmd Rebuild a package
# @alias rb
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg package-spec*
rebuild() {
    :;
}
# }} npm rebuild

# {{ npm repo
# @cmd Open package repository page in the browser
# @flag --browser                   The browser that is called by npm commands to open websites.
# @option --registry <value>        The base URL of the npm registry.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @arg pkgname*
repo() {
    :;
}
# }} npm repo

# {{ npm restart
# @cmd Restart a package
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# @arg args*
restart() {
    :;
}
# }} npm restart

# {{ npm root
# @cmd Display npm root
# @flag -g --global    Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
root() {
    :;
}
# }} npm root

# {{ npm run-script
# @cmd Run arbitrary package scripts
# @alias run,rum,urn
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --if-present                If  true,  npm  will  not  exit  with  an error code when run-script is invoked for a script that isn't defined in the
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @option --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# @arg cmd![`_choice_script`]
# @arg args*
run-script() {
    :;
}
# }} npm run-script

# {{ npm search
# @cmd Search for packages
# @alias find,s,se
# @flag --long                       Show extended information in ls, search, and help-search.
# @flag --json                       Whether or not to output JSON data, rather than the normal output.
# @flag --color                      If false, never shows colors.
# @flag --parseable                  Output parseable results from commands that write to standard output.
# @flag --description                Show the description in npm search
# @option --searchopts <value>       Space-separated options that are always passed to search.
# @option --searchexclude <value>    Space-separated options that limit the results from search.
# @option --registry <value>         The base URL of the npm registry.
# @flag --prefer-online              If true, staleness checks for cached data will be forced, making the CLI look for updates immediately even  for  fresh
# @flag --prefer-offline             If  true,  staleness  checks  for cached data will be bypassed, but missing data will be requested from the server.
# @flag --offline                    Force offline mode: no network requests will be done during install.
# @arg terms*
search() {
    :;
}
# }} npm search

# {{ npm shrinkwrap
# @cmd Lock down dependency versions for publication
shrinkwrap() {
    :;
}
# }} npm shrinkwrap

# {{ npm star
# @cmd Mark your favorite packages
# @option --registry <value>    The base URL of the npm registry.
# @flag --unicode               When set to true, npm uses unicode characters in the tree output.
# @option --otp <value>         This  is  a one-time password from a two-factor authenticator.
# @arg pkg*
star() {
    :;
}
# }} npm star

# {{ npm stars
# @cmd View packages marked as favorites
# @option --registry <value>    The base URL of the npm registry.
# @arg user
stars() {
    :;
}
# }} npm stars

# {{ npm start
# @cmd Start a package
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# @arg args*
start() {
    :;
}
# }} npm start

# {{ npm stop
# @cmd Stop a package
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# @arg args*
stop() {
    :;
}
# }} npm stop

# {{ npm team
# @cmd Manage organization teams and team memberships
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This is a one-time password from a two-factor authenticator.
# @flag --parseable             Output parseable results from commands that write to standard output.
# @flag --json                  Whether or not to output JSON data, rather than the normal output.
team() {
    :;
}

# {{{ npm team create
# @cmd Create a new team.
# @arg scope-team! <scope:team>
team::create() {
    :;
}
# }}} npm team create

# {{{ npm team destroy
# @cmd Destroy a team.
# @arg scope-team! <scope:team>
team::destroy() {
    :;
}
# }}} npm team destroy

# {{{ npm team add
# @cmd Add a user to existing team.
# @arg scope-team! <scope:team>
# @arg user!
team::add() {
    :;
}
# }}} npm team add

# {{{ npm team rm
# @cmd Using npm team rm you can also remove users from a team they belong to.
# @arg scope-team! <scope:team>
# @arg user!
team::rm() {
    :;
}
# }}} npm team rm

# {{{ npm team ls
# @cmd If performed on an organization name, will return a list of existing teams under that organization.
# @arg scope!
team::ls() {
    :;
}
# }}} npm team ls
# }} npm team

# {{ npm test
# @cmd Test a package
# @alias tst,t
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @option --script-shell <value>    The shell to use for scripts run with the npm exec, npm run and npm init <package-spec> commands.
# @arg args*
test() {
    :;
}
# }} npm test

# {{ npm token
# @cmd Manage your authentication tokens
# @flag --read-only             This is used to mark a token as unable to publish when configuring limited access tokens with the npm token create
# @option --cidr <value>        This is a list of CIDR address to be used when configuring limited access tokens with the npm token create command.
# @option --registry <value>    The base URL of the npm registry.
# @option --otp <value>         This is a one-time password from a two-factor authenticator.
token() {
    :;
}

# {{{ npm token list
# @cmd Shows a table of all active authentication tokens
token::list() {
    :;
}
# }}} npm token list

# {{{ npm token create
# @cmd Create a new authentication token.
# @flag --read-only
# @option --cidr <value>
token::create() {
    :;
}
# }}} npm token create

# {{{ npm token revoke
# @cmd Immediately removes an authentication token from the registry.
# @arg id-token! <id|token>
token::revoke() {
    :;
}
# }}} npm token revoke
# }} npm token

# {{ npm uninstall
# @cmd Remove a package
# @alias unlink,remove,rm,r,un
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When  set  file: protocol dependencies will be packed and installed as regular dependencies instead of creating a symlink.
# @arg pkg+[`_choice_dependency`]
uninstall() {
    :;
}
# }} npm uninstall

# {{ npm unpublish
# @cmd Remove a package from the registry
# @flag --dry-run       Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @flag -f --force      Removes  various  protections  against unfortunate side effects, common mistakes, unnecessary performance degradation,
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces    Set to true to run the command in the context of all configured workspaces.
# @arg package-spec
unpublish() {
    :;
}
# }} npm unpublish

# {{ npm unstar
# @cmd Remove an item from your favorite packages
# @option --registry <value>    The base URL of the npm registry.
# @flag --unicode               When set to true, npm uses unicode characters in the tree output.
# @option --otp <value>         This  is  a one-time password from a two-factor authenticator.
# @arg package-spec*
unstar() {
    :;
}
# }} npm unstar

# {{ npm update
# @cmd Update packages
# @alias up,upgrade,udpate
# @flag -S --save                   Save installed packages to a package.json file as dependencies.
# @flag -g --global                 Operates in "global" mode, so that packages are installed into the prefix folder instead of the current working direc-
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @flag --legacy-bundling           Instead of hoisting package installs in node_modules, install packages in the same manner that they are  depended  on.
# @flag --global-style              Only install direct dependencies in the top level node_modules, but hoist  on  deeper  dependencies.
# @option --omit <value>            Dependency types to omit from the installation tree on disk.
# @flag --strict-peer-deps          If set to true, and --legacy-peer-deps is not set, then any conflicting peerDependencies will be treated as an install
# @flag --package-lock              If set to false, then ignore package-lock.json files when installing.
# @flag --foreground-scripts        Run all build scripts (ie, preinstall, install, and postinstall) scripts for  installed  packages  in  the  foreground
# @flag --ignore-scripts            If true, npm does not run scripts specified in package.json files.
# @flag --audit                     When  "true" submit audit reports alongside the current npm command to the default registry and all registries config-
# @flag --bin-links                 Tells npm to create symlinks (or .cmd shims on Windows) for package executables.
# @flag --fund                      When  "true"  displays the message at the end of each npm install acknowledging the number of dependencies looking for
# @flag --dry-run                   Indicates that you don't want npm to make any changes and that it should only report what it would have done.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @flag --install-links             When set file: protocol dependencies will be packed and installed as regular dependencies instead of creating  a  sym-
# @arg pkg*[`_choice_dependency`]
update() {
    :;
}
# }} npm update

# {{ npm version
# @cmd Bump a package version
# @alias verison
# @flag --allow-same-version        Prevents throwing an error when npm version is used to set the new version to the same value as the current version.
# @flag --commit-hooks              Run git commit hooks when using the npm version command.
# @flag --git-tag-version           Tag the commit when using the npm version command.
# @flag --json                      Whether or not to output JSON data, rather than the normal output.
# @option --preid <value>           The "prerelease identifier" to use as a prefix for the "prerelease" part of a semver.
# @flag --sign-git-tag              If set to true, then the npm version command will tag the version using -s to add a signature.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --workspaces-update         If set to true, the npm cli will run an update after operations that may possibly change the workspaces  installed  to
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @option --Description <value>
# @arg ver!
version() {
    :;
}
# }} npm version

# {{ npm view
# @cmd View registry info
# @alias info,show,v
# @flag --json                      Whether or not to output JSON data, rather than the normal output.
# @option -w --workspace[`_choice_workspace`] <value>  Enable running a command in the context of the configured workspaces of the current project while filtering by running
# @flag --workspaces                Set to true to run the command in the context of all configured workspaces.
# @flag --include-workspace-root    Include the workspace root when workspaces are enabled for a command.
# @option --Output <value>
# @arg package-spec!
# @arg filed!
view() {
    :;
}
# }} npm view

# {{ npm whoami
# @cmd Display npm username
# @option --registry <value>    The base URL of the npm registry.
whoami() {
    :;
}
# }} npm whoami

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"