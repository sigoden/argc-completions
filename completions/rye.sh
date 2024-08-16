#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --env-file <ENV_FILE>    Load one or more .env files
# @flag --version                  Print the version
# @flag -h --help                  Print help

# {{ rye add
# @cmd Adds a Python package to this project
# @option --git                                    Install the given package from this git repository
# @option --url                                    Install the given package from this URL
# @option --path                                   Install the given package from this local path
# @flag --absolute                                 Force non interpolated absolute paths
# @option --tag                                    Install a specific tag
# @option --rev                                    Update to a specific git rev
# @option --branch                                 Update to a specific git branch
# @option --features                               Adds a dependency with a specific feature
# @flag -d --dev                                   Add this as dev dependency
# @flag --excluded                                 Add this as an excluded dependency that will not be installed even if it's a sub dependency
# @option --optional                               Add this to an optional dependency group
# @option --pin[equal|tilde-equal|greater-than-equal]  Overrides the pin operator
# @flag --sync                                     Runs `sync` even if auto-sync is disabled
# @flag --no-sync                                  Does not run `sync` even if auto-sync is enabled
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag --pre                                      Include pre-releases when finding a package version and automatically syncing the workspace
# @flag --with-sources                             Set to `true` to lock with sources in the lockfile when automatically syncing the workspace
# @flag --generate-hashes                          Set to `true` to lock with hashes in the lockfile when automatically syncing the workspace
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg requirements+                               The package to add as PEP 508 requirement string.
add() {
    :;
}
# }} rye add

# {{ rye build
# @cmd Builds a package for distribution
# @flag --sdist                           Build a sdist
# @flag --wheel                           Build a wheel
# @flag -a --all                          Build all packages
# @option -p --package                    Build a specific package
# @option -o --out                        An output directory (defaults to `workspace/dist`)
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -c --clean                        Clean the output directory first
# @flag -v --verbose                      Enables verbose diagnostics
# @flag -q --quiet                        Turns off all output
# @flag -h --help                         Print help
build() {
    :;
}
# }} rye build

# {{ rye config
# @cmd Reads or modifies the global `config.toml` file
# @flag --show-path                Print the path to the config
# @option --format[json]           Request parseable output format rather than lines
# @option --get                    Reads a config key
# @option --set                    Sets a config key to a string
# @option --set-int <SET_INT>      Sets a config key to an integer
# @option --set-bool <SET_BOOL>    Sets a config key to a bool
# @option --unset                  Remove a config key
# @flag -h --help                  Print help (see a summary with '-h')
config() {
    :;
}
# }} rye config

# {{ rye fetch
# @cmd Fetches a Python interpreter for the local machine
# @flag -f --force                       Fetch the Python toolchain even if it is already installed
# @option --target-path <TARGET_PATH>    Fetches the Python toolchain into an explicit location rather
# @flag --build-info                     Fetches with build info
# @flag --no-build-info                  Fetches without build info
# @flag -v --verbose                     Enables verbose diagnostics
# @flag -q --quiet                       Turns off all output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg version                           The version of Python to fetch.
fetch() {
    :;
}
# }} rye fetch

# {{ rye fmt
# @cmd Run the code formatter on the project
# @flag -a --all                          Perform the operation on all packages
# @option -p --package                    Perform the operation on a specific package
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -v --verbose                      Enables verbose diagnostics
# @flag -q --quiet                        Turns off all output
# @flag --check                           Run format in check mode
# @flag -h --help                         Print help (see a summary with '-h')
# @arg paths*                             List of files or directories to limit the operation to
# @arg extra_args*                        Extra arguments to ruff
fmt() {
    :;
}
# }} rye fmt

# {{ rye init
# @cmd Initialize a new or existing Python project with Rye
# @flag --lib                                      Generate a library project (default)
# @flag --script                                   Generate an executable project
# @option --min-py <MIN_PY>                        Minimal Python version supported by this project
# @option -p --py                                  Python version to use for the virtualenv
# @flag --no-readme                                Do not create a readme
# @flag --no-pin                                   Do not create .python-version file (requires-python will be used)
# @option --build-system[hatchling|setuptools|flit|pdm|maturin] <BUILD_SYSTEM>  Which build system should be used (defaults to hatchling)?
# @option --license                                Which license should be used (SPDX identifier)?
# @option --name                                   The name of the package
# @flag --private                                  Set "Private :: Do Not Upload" classifier, used for private projects
# @flag --no-import                                Don't import from setup.cfg, setup.py, or requirements files
# @flag --virtual                                  Initialize this as a virtual package.
# @option -r --requirements <REQUIREMENTS_FILE>    Requirements files to initialize pyproject.toml with
# @option --dev-requirements <DEV_REQUIREMENTS_FILE>  Development requirements files to initialize pyproject.toml with
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg path                                        Where to place the project (defaults to current path)
init() {
    :;
}
# }} rye init

# {{ rye install
# @cmd Installs a package as global tool
# @option --git                                    Install the given package from this git repository
# @option --url                                    Install the given package from this URL
# @option --path                                   Install the given package from this local path
# @flag --absolute                                 Force non interpolated absolute paths
# @option --tag                                    Install a specific tag
# @option --rev                                    Update to a specific git rev
# @option --branch                                 Update to a specific git branch
# @option --features                               Adds a dependency with a specific feature
# @option --include-dep <INCLUDE_DEP>              Include scripts from a given dependency
# @option --extra-requirement <EXTRA_REQUIREMENT>  Additional dependencies to install that are not declared by the main package
# @option -p --python                              Optionally the Python version to use
# @flag -f --force                                 Force install the package even if it's already there
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg requirement!                                The name of the package to install
install() {
    :;
}
# }} rye install

# {{ rye lock
# @cmd Updates the lockfiles without installing dependencies
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @option --update                                 Update a specific package
# @flag --update-all                               Update all packages to the latest
# @flag --pre                                      Update to pre-release versions
# @option --features                               Extras/features to enable when locking the workspace
# @flag --all-features                             Enables all features
# @flag --with-sources                             Set to true to lock with sources in the lockfile
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag --generate-hashes                          Set to true to lock with hashes in the lockfile
# @flag --universal                                Use universal lock files
# @flag --reset                                    Reset prior lock options
# @option --pyproject <PYPROJECT_TOML>             Use this pyproject.toml file
# @flag -h --help                                  Print help (see a summary with '-h')
lock() {
    :;
}
# }} rye lock

# {{ rye lint
# @cmd Run the linter on the project
# @flag -a --all                          Perform the operation on all packages
# @option -p --package                    Perform the operation on a specific package
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -v --verbose                      Enables verbose diagnostics
# @flag -q --quiet                        Turns off all output
# @flag --fix                             Apply fixes
# @flag -h --help                         Print help (see a summary with '-h')
# @arg paths*                             List of files or directories to limit the operation to
# @arg extra_args*                        Extra arguments to ruff
lint() {
    :;
}
# }} rye lint

# {{ rye make-req
# @cmd Builds and prints a PEP 508 requirement string from parts
# @option --git         Install the given package from this git repository
# @option --url         Install the given package from this URL
# @option --path        Install the given package from this local path
# @flag --absolute      Force non interpolated absolute paths
# @option --tag         Install a specific tag
# @option --rev         Update to a specific git rev
# @option --branch      Update to a specific git branch
# @option --features    Adds a dependency with a specific feature
# @flag -h --help       Print help
# @arg requirements*    The package to add as PEP 508 requirement string.
make-req() {
    :;
}
# }} rye make-req

# {{ rye pin
# @cmd Pins a Python version to this project
# @flag --relaxed                         Issue a relaxed pin
# @flag --no-update-requires-python       Prevent updating requires-python in the pyproject.toml
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -h --help                         Print help (see a summary with '-h')
# @arg version!                           The version of Python to pin
pin() {
    :;
}
# }} rye pin

# {{ rye publish
# @cmd Publish packages to a package repository
# @option -r --repository                      The repository to publish to [default: pypi]
# @option --repository-url <REPOSITORY_URL>    The repository url to publish to
# @option -u --username                        The username to authenticate to the repository with
# @option --token                              An access token used for the upload
# @flag --sign                                 Sign files to upload using GPG
# @option -i --identity                        GPG identity used to sign files
# @option --cert                               Path to alternate CA bundle
# @flag --skip-existing                        Skip files that have already been published (only applies to repositories supporting this feature)
# @flag -y --yes                               Skip prompts
# @flag -v --verbose                           Enables verbose diagnostics
# @flag -q --quiet                             Turns off all output
# @flag -h --help                              Print help
# @arg dist*                                   The distribution files to upload to the repository (defaults to <workspace-root>/dist/*)
publish() {
    :;
}
# }} rye publish

# {{ rye remove
# @cmd Removes a package from this project
# @flag -d --dev                                   Remove this from dev dependencies
# @option --optional                               Remove this from an optional dependency group
# @flag --sync                                     Runs `sync` even if auto-sync is disabled
# @flag --no-sync                                  Does not run `sync` even if auto-sync is enabled
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag --pre                                      Include pre-releases when automatically syncing the workspace
# @flag --with-sources                             Set to `true` to lock with sources in the lockfile when automatically syncing the workspace
# @flag --generate-hashes                          Set to `true` to lock with hashes in the lockfile when automatically syncing the workspace
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg requirements+                               The packages to remove
remove() {
    :;
}
# }} rye remove

# {{ rye run
# @cmd Runs a command installed into this package
# @flag -l --list                         List all commands
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -h --help                         Print help
# @arg command
run() {
    :;
}
# }} rye run

# {{ rye show
# @cmd Prints the current state of the project
# @flag --installed-deps                  Print the installed dependencies from the venv
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -h --help                         Print help
show() {
    :;
}
# }} rye show

# {{ rye sync
# @cmd Updates the virtualenv based on the pyproject.toml
# @flag -f --force                                 Force the environment to be re-created
# @flag --no-dev                                   Do not include dev dependencies
# @flag --no-lock                                  Do not update the lockfile
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @option --update                                 Update a specific package
# @flag --update-all                               Update all packages to the latest
# @flag --pre                                      Update to pre-release versions
# @option --features                               Extras/features to enable when syncing the workspace
# @flag --all-features                             Enables all features
# @flag --with-sources                             Set to true to lock with sources in the lockfile
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag --generate-hashes                          Set to true to lock with hashes in the lockfile
# @option --pyproject <PYPROJECT_TOML>             Use this pyproject.toml file
# @flag --reset                                    Do not reuse (reset) prior lock options
# @flag --universal                                Use universal lock files
# @flag -h --help                                  Print help (see a summary with '-h')
sync() {
    :;
}
# }} rye sync

# {{ rye test
# @cmd Run the tests on the project
# @flag -a --all                                   Perform the operation on all packages
# @option -p --package                             Perform the operation on a specific package
# @option --pyproject <PYPROJECT_TOML>             Use this pyproject.toml file
# @flag -s --no-capture                            Disable test output capture to stdout
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag --pre                                      Include pre-releases when automatically syncing the workspace
# @flag --with-sources                             Set to `true` to lock with sources in the lockfile when automatically syncing the workspace
# @flag --generate-hashes                          Set to `true` to lock with hashes in the lockfile when automatically syncing the workspace
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg extra_args*                                 Extra arguments to pytest
test() {
    :;
}
# }} rye test

# {{ rye toolchain
# @cmd Helper utility to manage Python toolchains
# @flag -h --help    Print help
toolchain() {
    :;
}

# {{{ rye toolchain fetch
# @cmd Fetches a Python interpreter for the local machine
# @flag -f --force                       Fetch the Python toolchain even if it is already installed
# @option --target-path <TARGET_PATH>    Fetches the Python toolchain into an explicit location rather
# @flag --build-info                     Fetches with build info
# @flag --no-build-info                  Fetches without build info
# @flag -v --verbose                     Enables verbose diagnostics
# @flag -q --quiet                       Turns off all output
# @flag -h --help                        Print help (see a summary with '-h')
# @arg version                           The version of Python to fetch.
toolchain::fetch() {
    :;
}
# }}} rye toolchain fetch

# {{{ rye toolchain list
# @cmd List all registered toolchains
# @flag --include-downloadable    Also include non installed, but downloadable toolchains
# @option --format[json]          Request parseable output format
# @flag -h --help                 Print help
toolchain::list() {
    :;
}
# }}} rye toolchain list

# {{{ rye toolchain register
# @cmd Register a Python binary
# @option -n --name    Name of the toolchain.
# @flag -h --help      Print help (see a summary with '-h')
# @arg path!           Path to the Python binary
toolchain::register() {
    :;
}
# }}} rye toolchain register

# {{{ rye toolchain remove
# @cmd Removes a toolchain
# @flag -f --force                      Force removal even if the toolchain is in use
# @flag -h --help                       Print help
# @arg version![`_choice_toolchain`]    Name and version of the toolchain
toolchain::remove() {
    :;
}
# }}} rye toolchain remove
# }} rye toolchain

# {{ rye tools
# @cmd Helper utility to manage global tools
# @flag -h --help    Print help
tools() {
    :;
}

# {{{ rye tools install
# @cmd Installs a package as global tool
# @option --git                                    Install the given package from this git repository
# @option --url                                    Install the given package from this URL
# @option --path                                   Install the given package from this local path
# @flag --absolute                                 Force non interpolated absolute paths
# @option --tag                                    Install a specific tag
# @option --rev                                    Update to a specific git rev
# @option --branch                                 Update to a specific git branch
# @option --features                               Adds a dependency with a specific feature
# @option --include-dep <INCLUDE_DEP>              Include scripts from a given dependency
# @option --extra-requirement <EXTRA_REQUIREMENT>  Additional dependencies to install that are not declared by the main package
# @option -p --python                              Optionally the Python version to use
# @flag -f --force                                 Force install the package even if it's already there
# @option --keyring-provider <KEYRING_PROVIDER>    Attempt to use `keyring` for authentication for index URLs
# @flag -v --verbose                               Enables verbose diagnostics
# @flag -q --quiet                                 Turns off all output
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg requirement!                                The name of the package to install
tools::install() {
    :;
}
# }}} rye tools install

# {{{ rye tools uninstall
# @cmd Uninstalls a global tool
# @flag -v --verbose            Enables verbose diagnostics
# @flag -q --quiet              Turns off all output
# @flag -h --help               Print help
# @arg name![`_choice_tool`]    The package to uninstall
tools::uninstall() {
    :;
}
# }}} rye tools uninstall

# {{{ rye tools list
# @cmd List all registered tools
# @flag -s --include-scripts    Show all the scripts installed by the tools
# @flag -v --include-version    Show the version of tools
# @flag -h --help               Print help
tools::list() {
    :;
}
# }}} rye tools list
# }} rye tools

# {{ rye self
# @cmd Rye self management
# @flag -h --help    Print help
self() {
    :;
}

# {{{ rye self completion
# @cmd Generates a completion script for a shell
# @option -s --shell[bash|elvish|fish|powershell|zsh|nushell]  The shell to generate a completion script for (defaults to 'bash')
# @flag -h --help    Print help
self::completion() {
    :;
}
# }}} rye self completion

# {{{ rye self update
# @cmd Performs an update of rye
# @option --version    Update to a specific version
# @option --tag        Update to a specific tag
# @option --rev        Update to a specific git rev
# @option --branch     Update to a specific git branch
# @flag --force        Force reinstallation
# @flag -h --help      Print help (see a summary with '-h')
self::update() {
    :;
}
# }}} rye self update

# {{{ rye self uninstall
# @cmd Uninstalls rye again
# @flag -y --yes     Skip safety check
# @flag -h --help    Print help
self::uninstall() {
    :;
}
# }}} rye self uninstall
# }} rye self

# {{ rye uninstall
# @cmd Uninstalls a global tool
# @flag -v --verbose            Enables verbose diagnostics
# @flag -q --quiet              Turns off all output
# @flag -h --help               Print help
# @arg name![`_choice_tool`]    The package to uninstall
uninstall() {
    :;
}
# }} rye uninstall

# {{ rye version
# @cmd Get or set project version
# @option -b --bump[major|minor|patch]    The version bump to apply
# @flag -h --help                         Print help
# @arg version                            The version to set
version() {
    :;
}
# }} rye version

# {{ rye list
# @cmd Prints the currently installed packages
# @option --pyproject <PYPROJECT_TOML>    Use this pyproject.toml file
# @flag -h --help                         Print help
list() {
    :;
}
# }} rye list

_choice_toolchain() {
    rye toolchain list | sed -n 's/^\(\S\+\) (\(.*\)).*/\1\t\2/p'
}

_choice_tool() {
    rye tools list
}

command eval "$(argc --argc-eval "$0" "$@")"