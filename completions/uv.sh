#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version

# {{ uv run
# @cmd Run a command or script
# @option --extra                                  Include optional dependencies from the extra group name
# @flag --all-extras                               Include all optional dependencies
# @flag --no-dev                                   Omit development dependencies
# @option --with                                   Run with the given packages installed
# @option --with-editable <WITH_EDITABLE>          Run with the given packages installed as editables
# @option --with-requirements <WITH_REQUIREMENTS>  Run with all packages listed in the given `requirements.txt` files
# @flag --isolated                                 Run the command in an isolated virtual environment
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Run without updating the `uv.lock` file
# @option --package                                Run the command in a specific package in the workspace
# @flag --no-project                               Avoid discovering the project or workspace
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use for the run environment.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg command!
run() {
    :;
}
# }} uv run

# {{ uv init
# @cmd Create a new project
# @option --name                         The name of the project
# @flag --virtual                        Create a virtual workspace instead of a project
# @flag --no-readme                      Do not create a `README.md` file
# @flag --no-workspace                   Avoid discovering a workspace
# @option -p --python                    The Python interpreter to use to determine the minimum supported Python version.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg path                              The path to use for the project
init() {
    :;
}
# }} uv init

# {{ uv add
# @cmd Add dependencies to the project
# @option -r --requirements                        Add all packages listed in the given `requirements.txt` files
# @flag --dev                                      Add the requirements as development dependencies
# @option --optional                               Add the requirements to the specified optional dependency group
# @flag --no-editable                              Don't add the requirements as editables
# @flag --raw-sources                              Add source requirements to `project.dependencies`, rather than `tool.uv.sources`
# @option --rev                                    Commit to use when adding a dependency from Git
# @option --tag                                    Tag to use when adding a dependency from Git
# @option --branch                                 Branch to use when adding a dependency from Git
# @option --extra                                  Extras to enable for the dependency
# @flag --no-sync                                  Avoid syncing the virtual environment after re-locking the project
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Add dependencies without re-locking the project
# @option --package                                Add the dependency to a specific package in the workspace
# @option --script                                 Add the dependency to the specified Python script, rather than to a project
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use for resolving and syncing.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg packages*                                   The packages to add, as PEP 508 requirements (e.g., `ruff==0.5.0`)
add() {
    :;
}
# }} uv add

# {{ uv remove
# @cmd Remove dependencies from the project
# @flag --dev                                      Remove the packages from the development dependencies
# @option --optional                               Remove the packages from the specified optional dependency group
# @flag --no-sync                                  Avoid syncing the virtual environment after re-locking the project
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Remove dependencies without re-locking the project
# @option --package                                Remove the dependencies from a specific package in the workspace
# @option --script                                 Remove the dependency from the specified Python script, rather than from a project
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use for resolving and syncing.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg packages+                                   The names of the dependencies to remove (e.g., `ruff`)
remove() {
    :;
}
# }} uv remove

# {{ uv sync
# @cmd Update the project's environment
# @option --extra                                  Include optional dependencies from the extra group name
# @flag --all-extras                               Include all optional dependencies
# @flag --no-dev                                   Omit development dependencies
# @flag --inexact                                  Do not remove extraneous packages present in the environment
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Sync without updating the `uv.lock` file
# @option --package                                Sync for a specific package in the workspace
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use for the project environment.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
sync() {
    :;
}
# }} uv sync

# {{ uv lock
# @cmd Update the project's lockfile
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Assert that a `uv.lock` exists, without updating it
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use during resolution.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
lock() {
    :;
}
# }} uv lock

# {{ uv tree
# @cmd Display the project's dependency tree
# @flag --universal                                Show a platform-independent dependency tree
# @option -d --depth                               Maximum display depth of the dependency tree [default: 255]
# @option --prune                                  Prune the given package from the display of the dependency tree
# @option --package                                Display only the specified packages
# @flag --no-dedupe                                Do not de-duplicate repeated dependencies.
# @flag --invert                                   Show the reverse dependencies for the given package.
# @flag --locked                                   Assert that the `uv.lock` will remain unchanged
# @flag --frozen                                   Display the requirements without locking the project
# @option --python-version <PYTHON_VERSION>        The Python version to use when filtering the tree
# @option --python-platform[windows|linux|macos|x86_64-pc-windows-msvc|i686-pc-windows-msvc|x86_64-unknown-linux-gnu|aarch64-apple-darwin|x86_64-apple-darwin|aarch64-unknown-linux-gnu|aarch64-unknown-linux-musl|x86_64-unknown-linux-musl|x86_64-manylinux_2_17|x86_64-manylinux_2_28|x86_64-manylinux_2_31|aarch64-manylinux_2_17|aarch64-manylinux_2_28|aarch64-manylinux_2_31] <PYTHON_PLATFORM>  The platform to use when filtering the tree
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @option -p --python                              The Python interpreter to use for locking and filtering.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
tree() {
    :;
}
# }} uv tree

# {{ uv tool
# @cmd Run and install commands provided by Python packages
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
tool() {
    :;
}

# {{{ uv tool run
# @cmd Run a command provided by a Python package
# @option --from                                   Use the given package to provide the command
# @option --with                                   Run with the given packages installed
# @option --with-requirements <WITH_REQUIREMENTS>  Run with all packages listed in the given `requirements.txt` files
# @flag --isolated                                 Run the tool in an isolated virtual environment, ignoring any already-installed tools
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use to build the run environment.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg command
tool::run() {
    :;
}
# }}} uv tool run

# {{{ uv tool install
# @cmd Install commands provided by a Python package
# @flag -e --editable
# @option --with                                   Include the following extra requirements
# @option --with-requirements <WITH_REQUIREMENTS>  Run all requirements listed in the given `requirements.txt` files
# @flag --force                                    Force installation of the tool
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                  Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>      Refresh cached data for a specific package
# @option -p --python                              The Python interpreter to use to build the tool environment.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg package!                                    The package to install commands from
tool::install() {
    :;
}
# }}} uv tool install

# {{{ uv tool upgrade
# @cmd Upgrade installed tools
# @flag --all                                      Upgrade all tools
# @option -i --index-url <INDEX_URL>               The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>      Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>             Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                 Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                               Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>   Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>          Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                               Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                                Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                         Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>     Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                       Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag --no-build                                 Don't build source distributions
# @option --no-build-package <NO_BUILD_PACKAGE>    Don't build source distributions for a specific package
# @flag --no-binary                                Don't install pre-built wheels
# @option --no-binary-package <NO_BINARY_PACKAGE>  Don't install pre-built wheels for a specific package
# @flag -n --no-cache                              Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                  Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                      Disable automatic downloads of Python
# @flag -q --quiet                                 Do not print any output
# @flag -v --verbose*                              Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                               Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                  Disable network access
# @flag --no-progress                              Hide all progress outputs
# @option --config-file <CONFIG_FILE>              The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                                Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                  Display the concise help for this command
# @flag -V --version                               Display the uv version
# @arg name!                                       The name of the tool to upgrade
tool::upgrade() {
    :;
}
# }}} uv tool upgrade

# {{{ uv tool list
# @cmd List installed tools
# @flag --show-paths                     Whether to display the path to each tool environment and installed executable
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
tool::list() {
    :;
}
# }}} uv tool list

# {{{ uv tool uninstall
# @cmd Uninstall a tool
# @flag --all                            Uninstall all tools
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg name!                             The name of the tool to uninstall
tool::uninstall() {
    :;
}
# }}} uv tool uninstall

# {{{ uv tool update-shell
# @cmd Ensure that the tool executable directory is on the `PATH`
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
tool::update-shell() {
    :;
}
# }}} uv tool update-shell

# {{{ uv tool dir
# @cmd Show the path to the uv tools directory
# @flag --bin                            Show the directory into which `uv tool` will install executables.
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
tool::dir() {
    :;
}
# }}} uv tool dir
# }} uv tool

# {{ uv python
# @cmd Manage Python versions and installations
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
python() {
    :;
}

# {{{ uv python list
# @cmd List the available Python installations
# @flag --all-versions                   List all Python versions, including old patch versions
# @flag --all-platforms                  List Python downloads for all platforms
# @flag --only-installed                 Only show installed Python versions, exclude available downloads
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
python::list() {
    :;
}
# }}} uv python list

# {{{ uv python install
# @cmd Download and install Python versions
# @flag -r --reinstall                   Reinstall the requested Python version, if it's already installed
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg targets*                          The Python version(s) to install
python::install() {
    :;
}
# }}} uv python install

# {{{ uv python find
# @cmd Search for a Python installation
# @flag --no-project                     Avoid discovering a project or workspace
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg request                           The Python request
python::find() {
    :;
}
# }}} uv python find

# {{{ uv python pin
# @cmd Pin to a specific Python version
# @flag --resolved                       Write the resolved Python interpreter path instead of the request
# @flag --no-workspace                   Avoid validating the Python pin is compatible with the workspace
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg request                           The Python version request
python::pin() {
    :;
}
# }}} uv python pin

# {{{ uv python dir
# @cmd Show the uv Python installation directory
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
python::dir() {
    :;
}
# }}} uv python dir

# {{{ uv python uninstall
# @cmd Uninstall Python versions
# @flag --all                            Uninstall all managed Python versions
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg targets+                          The Python version(s) to uninstall
python::uninstall() {
    :;
}
# }}} uv python uninstall
# }} uv python

# {{ uv pip
# @cmd Manage Python packages with a pip-compatible interface
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
pip() {
    :;
}

# {{{ uv pip compile
# @cmd Compile a `requirements.in` file to a `requirements.txt` file
# @option -c --constraint                         Constrain versions using the given requirements files [env: UV_CONSTRAINT=]
# @option --override                              Override versions using the given requirements files [env: UV_OVERRIDE=]
# @option -b --build-constraint <BUILD_CONSTRAINT>  Constrain build dependencies using the given requirements files when building source distributions [env: UV_BUILD_CONSTRAINT=]
# @option --extra                                 Include optional dependencies from the extra group name; may be provided more than once
# @flag --all-extras                              Include all optional dependencies
# @flag --no-deps                                 Ignore package dependencies, instead only add those packages explicitly listed on the command line to the resulting the requirements file
# @option -o --output-file <OUTPUT_FILE>          Write the compiled requirements to the given `requirements.txt` file
# @flag --no-strip-extras                         Include extras in the output file
# @flag --no-strip-markers                        Include environment markers in the output file
# @flag --no-annotate                             Exclude comment annotations indicating the source of each package
# @flag --no-header                               Exclude the comment header at the top of the generated output file
# @option --annotation-style[line|split] <ANNOTATION_STYLE>  The style of the annotation comments included in the output file, used to indicate the source of each package
# @option --custom-compile-command <CUSTOM_COMPILE_COMMAND>  The header comment to include at the top of the output file generated by `uv pip compile` [env: UV_CUSTOM_COMPILE_COMMAND=]
# @flag --system                                  Install packages into the system Python environment [env: UV_SYSTEM_PYTHON=]
# @flag --generate-hashes                         Include distribution hashes in the output file
# @flag --no-build                                Don't build source distributions
# @option --no-binary <NO_BINARY>                 Don't install pre-built wheels
# @option --only-binary <ONLY_BINARY>             Only use pre-built wheels; don't build source distributions
# @option --python-platform[windows|linux|macos|x86_64-pc-windows-msvc|i686-pc-windows-msvc|x86_64-unknown-linux-gnu|aarch64-apple-darwin|x86_64-apple-darwin|aarch64-unknown-linux-gnu|aarch64-unknown-linux-musl|x86_64-unknown-linux-musl|x86_64-manylinux_2_17|x86_64-manylinux_2_28|x86_64-manylinux_2_31|aarch64-manylinux_2_17|aarch64-manylinux_2_28|aarch64-manylinux_2_31] <PYTHON_PLATFORM>  The platform for which requirements should be resolved
# @flag --universal                               Perform a universal resolution, attempting to generate a single `requirements.txt` output file that is compatible with all operating systems, architectures, and Python implementations
# @option --no-emit-package <NO_EMIT_PACKAGE>     Specify a package to omit from the output resolution.
# @flag --emit-index-url                          Include `--index-url` and `--extra-index-url` entries in the generated output file
# @flag --emit-find-links                         Include `--find-links` entries in the generated output file
# @flag --emit-build-options                      Include `--no-binary` and `--only-binary` entries in the generated output file
# @flag --emit-index-annotation                   Include comment annotations indicating the index used to resolve each package (e.g., `# from https://pypi.org/simple`)
# @option -i --index-url <INDEX_URL>              The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>     Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>            Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                              Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>  Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>         Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                              Ignore the `tool.uv.sources` table when resolving dependencies.
# @option -C --config-setting <CONFIG_SETTING>    Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                      Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag -n --no-cache                             Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                 Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                 Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>     Refresh cached data for a specific package
# @option --python                                The Python interpreter to use during resolution.
# @option -p --python-version <PYTHON_VERSION>    The Python version to use for resolution
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                     Disable automatic downloads of Python
# @flag -q --quiet                                Do not print any output
# @flag -v --verbose*                             Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                              Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                 Disable network access
# @flag --no-progress                             Hide all progress outputs
# @option --config-file <CONFIG_FILE>             The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag -h --help                                 Display the concise help for this command
# @flag -V --version                              Display the uv version
# @arg src_file+                                  Include all packages listed in the given `requirements.in` files
pip::compile() {
    :;
}
# }}} uv pip compile

# {{{ uv pip sync
# @cmd Sync an environment with a `requirements.txt` file
# @option -c --constraint                         Constrain versions using the given requirements files [env: UV_CONSTRAINT=]
# @option -b --build-constraint <BUILD_CONSTRAINT>  Constrain build dependencies using the given requirements files when building source distributions [env: UV_BUILD_CONSTRAINT=]
# @flag --require-hashes                          Require a matching hash for each requirement [env: UV_REQUIRE_HASHES=]
# @flag --verify-hashes                           Validate any hashes provided in the requirements file [env: UV_VERIFY_HASHES=]
# @flag --system                                  Install packages into the system Python environment [env: UV_SYSTEM_PYTHON=]
# @flag --break-system-packages                   Allow uv to modify an `EXTERNALLY-MANAGED` Python installation [env: UV_BREAK_SYSTEM_PACKAGES=]
# @flag --no-break-system-packages
# @option --target                                Install packages into the specified directory, rather than into the virtual or system Python environment.
# @option --prefix                                Install packages into `lib`, `bin`, and other top-level folders under the specified directory, as if a virtual environment were present at that location
# @flag --no-build                                Don't build source distributions
# @option --no-binary <NO_BINARY>                 Don't install pre-built wheels
# @option --only-binary <ONLY_BINARY>             Only use pre-built wheels; don't build source distributions
# @flag --allow-empty-requirements                Allow sync of empty requirements, which will clear the environment of all packages
# @flag --no-allow-empty-requirements
# @option --python-version <PYTHON_VERSION>       The minimum Python version that should be supported by the requirements (e.g., `3.7` or `3.7.9`)
# @option --python-platform[windows|linux|macos|x86_64-pc-windows-msvc|i686-pc-windows-msvc|x86_64-unknown-linux-gnu|aarch64-apple-darwin|x86_64-apple-darwin|aarch64-unknown-linux-gnu|aarch64-unknown-linux-musl|x86_64-unknown-linux-musl|x86_64-manylinux_2_17|x86_64-manylinux_2_28|x86_64-manylinux_2_31|aarch64-manylinux_2_17|aarch64-manylinux_2_28|aarch64-manylinux_2_31] <PYTHON_PLATFORM>  The platform for which requirements should be installed
# @flag --strict                                  Validate the Python environment after completing the installation, to detect and with missing dependencies or other issues
# @flag --dry-run                                 Perform a dry run, i.e., don't actually install anything but resolve the dependencies and print the resulting plan
# @option -i --index-url <INDEX_URL>              The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>     Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>            Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag --reinstall                               Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                        Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>    Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                      Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --exclude-newer <EXCLUDE_NEWER>         Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                              Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag -n --no-cache                             Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                 Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                 Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>     Refresh cached data for a specific package
# @option -p --python                             The Python interpreter into which packages should be installed.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                     Disable automatic downloads of Python
# @flag -q --quiet                                Do not print any output
# @flag -v --verbose*                             Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                              Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                 Disable network access
# @flag --no-progress                             Hide all progress outputs
# @option --config-file <CONFIG_FILE>             The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag -h --help                                 Display the concise help for this command
# @flag -V --version                              Display the uv version
# @arg src_file+                                  Include all packages listed in the given `requirements.txt` files
pip::sync() {
    :;
}
# }}} uv pip sync

# {{{ uv pip install
# @cmd Install packages into an environment
# @option -r --requirement                        Install all packages listed in the given `requirements.txt` files
# @option -e --editable                           Install the editable package based on the provided local file path
# @option -c --constraint                         Constrain versions using the given requirements files [env: UV_CONSTRAINT=]
# @option --override                              Override versions using the given requirements files [env: UV_OVERRIDE=]
# @option -b --build-constraint <BUILD_CONSTRAINT>  Constrain build dependencies using the given requirements files when building source distributions [env: UV_BUILD_CONSTRAINT=]
# @option --extra                                 Include optional dependencies from the extra group name; may be provided more than once
# @flag --all-extras                              Include all optional dependencies
# @flag --no-deps                                 Ignore package dependencies, instead only installing those packages explicitly listed on the command line or in the requirements files
# @flag --require-hashes                          Require a matching hash for each requirement [env: UV_REQUIRE_HASHES=]
# @flag --verify-hashes                           Validate any hashes provided in the requirements file [env: UV_VERIFY_HASHES=]
# @flag --system                                  Install packages into the system Python environment [env: UV_SYSTEM_PYTHON=]
# @flag --break-system-packages                   Allow uv to modify an `EXTERNALLY-MANAGED` Python installation [env: UV_BREAK_SYSTEM_PACKAGES=]
# @flag --no-break-system-packages
# @option --target                                Install packages into the specified directory, rather than into the virtual or system Python environment.
# @option --prefix                                Install packages into `lib`, `bin`, and other top-level folders under the specified directory, as if a virtual environment were present at that location
# @flag --no-build                                Don't build source distributions
# @option --no-binary <NO_BINARY>                 Don't install pre-built wheels
# @option --only-binary <ONLY_BINARY>             Only use pre-built wheels; don't build source distributions
# @option --python-version <PYTHON_VERSION>       The minimum Python version that should be supported by the requirements (e.g., `3.7` or `3.7.9`)
# @option --python-platform[windows|linux|macos|x86_64-pc-windows-msvc|i686-pc-windows-msvc|x86_64-unknown-linux-gnu|aarch64-apple-darwin|x86_64-apple-darwin|aarch64-unknown-linux-gnu|aarch64-unknown-linux-musl|x86_64-unknown-linux-musl|x86_64-manylinux_2_17|x86_64-manylinux_2_28|x86_64-manylinux_2_31|aarch64-manylinux_2_17|aarch64-manylinux_2_28|aarch64-manylinux_2_31] <PYTHON_PLATFORM>  The platform for which requirements should be installed
# @flag --strict                                  Validate the Python environment after completing the installation, to detect and with missing dependencies or other issues
# @flag --dry-run                                 Perform a dry run, i.e., don't actually install anything but resolve the dependencies and print the resulting plan
# @flag --user
# @option -i --index-url <INDEX_URL>              The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>     Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>            Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                                Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @flag -U --upgrade                              Allow package upgrades, ignoring pinned versions in any existing output file.
# @option -P --upgrade-package <UPGRADE_PACKAGE>  Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
# @option --resolution[highest|lowest|lowest-direct]  The strategy to use when selecting between the different compatible versions for a given package requirement [env: UV_RESOLUTION=]
# @option --prerelease[disallow|allow|if-necessary|explicit|if-necessary-or-explicit]  The strategy to use when considering pre-release versions [env: UV_PRERELEASE=]
# @option --exclude-newer <EXCLUDE_NEWER>         Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @flag --no-sources                              Ignore the `tool.uv.sources` table when resolving dependencies.
# @flag --reinstall                               Reinstall all packages, regardless of whether they're already installed.
# @option --reinstall-package <REINSTALL_PACKAGE>  Reinstall a specific package, regardless of whether it's already installed.
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @flag --compile-bytecode                        Compile Python files to bytecode after installation
# @option -C --config-setting <CONFIG_SETTING>    Settings to pass to the PEP 517 build backend, specified as `KEY=VALUE` pairs
# @flag --no-build-isolation                      Disable isolation when building source distributions [env: UV_NO_BUILD_ISOLATION=]
# @option --no-build-isolation-package <NO_BUILD_ISOLATION_PACKAGE>  Disable isolation when building source distributions for a specific package
# @flag -n --no-cache                             Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                 Path to the cache directory [env: UV_CACHE_DIR=]
# @flag --refresh                                 Refresh all cached data
# @option --refresh-package <REFRESH_PACKAGE>     Refresh cached data for a specific package
# @option -p --python                             The Python interpreter into which packages should be installed.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                     Disable automatic downloads of Python
# @flag -q --quiet                                Do not print any output
# @flag -v --verbose*                             Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                              Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                 Disable network access
# @flag --no-progress                             Hide all progress outputs
# @option --config-file <CONFIG_FILE>             The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                               Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                 Display the concise help for this command
# @flag -V --version                              Display the uv version
# @arg package*                                   Install all listed packages
pip::install() {
    :;
}
# }}} uv pip install

# {{{ uv pip uninstall
# @cmd Uninstall packages from an environment
# @option -r --requirement               Uninstall all packages listed in the given requirements files
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for remote requirements files [env: UV_KEYRING_PROVIDER=]
# @flag --system                         Use the system Python to uninstall packages [env: UV_SYSTEM_PYTHON=]
# @flag --break-system-packages          Allow uv to modify an `EXTERNALLY-MANAGED` Python installation [env: UV_BREAK_SYSTEM_PACKAGES=]
# @flag --no-break-system-packages
# @option --target                       Uninstall packages from the specified `--target` directory
# @option --prefix                       Uninstall packages from the specified `--prefix` directory
# @option -p --python                    The Python interpreter from which packages should be uninstalled.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg package*                          Uninstall all listed packages
pip::uninstall() {
    :;
}
# }}} uv pip uninstall

# {{{ uv pip freeze
# @cmd List, in requirements format, packages installed in an environment
# @flag --exclude-editable               Exclude any editable packages from output
# @flag --strict                         Validate the Python environment, to detect packages with missing dependencies and other issues
# @flag --system                         List packages in the system Python environment [env: UV_SYSTEM_PYTHON=]
# @option -p --python                    The Python interpreter for which packages should be listed.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
pip::freeze() {
    :;
}
# }}} uv pip freeze

# {{{ uv pip list
# @cmd List, in tabular format, packages installed in an environment
# @flag -e --editable                      Only include editable projects
# @flag --exclude-editable                 Exclude any editable packages from output
# @option --exclude                        Exclude the specified package(s) from the output
# @option --format[columns|freeze|json]    Select the output format between: `columns` (default), `freeze`, or `json` [default: columns]
# @flag --strict                           Validate the Python environment, to detect packages with missing dependencies and other issues
# @flag --system                           List packages in the system Python environment [env: UV_SYSTEM_PYTHON=]
# @option -p --python                      The Python interpreter for which packages should be listed.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads              Disable automatic downloads of Python
# @flag -n --no-cache                      Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>          Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                         Do not print any output
# @flag -v --verbose*                      Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                       Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                          Disable network access
# @flag --no-progress                      Hide all progress outputs
# @option --config-file <CONFIG_FILE>      The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                        Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                          Display the concise help for this command
# @flag -V --version                       Display the uv version
pip::list() {
    :;
}
# }}} uv pip list

# {{{ uv pip show
# @cmd Show information about one or more installed packages
# @flag --strict                         Validate the Python environment, to detect packages with missing dependencies and other issues
# @flag --system                         Show a package in the system Python environment [env: UV_SYSTEM_PYTHON=]
# @option -p --python                    The Python interpreter to find the package in.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg package*                          The package(s) to display
pip::show() {
    :;
}
# }}} uv pip show

# {{{ uv pip tree
# @cmd Display the dependency tree for an environment
# @flag --show-version-specifiers        Show the version constraint(s) imposed on each package
# @option -d --depth                     Maximum display depth of the dependency tree [default: 255]
# @option --prune                        Prune the given package from the display of the dependency tree
# @option --package                      Display only the specified packages
# @flag --no-dedupe                      Do not de-duplicate repeated dependencies.
# @flag --invert                         Show the reverse dependencies for the given package.
# @flag --strict                         Validate the Python environment, to detect packages with missing dependencies and other issues
# @flag --system                         List packages in the system Python environment [env: UV_SYSTEM_PYTHON=]
# @flag --no-system
# @option -p --python                    The Python interpreter for which packages should be listed.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
pip::tree() {
    :;
}
# }}} uv pip tree

# {{{ uv pip check
# @cmd Verify installed packages have compatible dependencies
# @flag --system                         Check packages in the system Python environment [env: UV_SYSTEM_PYTHON=]
# @option -p --python                    The Python interpreter for which packages should be checked.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
pip::check() {
    :;
}
# }}} uv pip check
# }} uv pip

# {{ uv venv
# @cmd Create a virtual environment
# @flag --seed                                   Install seed packages (one or more of: `pip`, `setuptools`, and `wheel`) into the virtual environment
# @flag --allow-existing                         Preserve any existing files or directories at the target path
# @option --prompt                               Provide an alternative prompt prefix for the virtual environment.
# @flag --system-site-packages                   Give the virtual environment access to the system site packages directory
# @flag --relocatable                            Make the virtual environment relocatable
# @option --index-strategy[first-index|unsafe-first-match|unsafe-best-match] <INDEX_STRATEGY>  The strategy to use when resolving against multiple index URLs [env: UV_INDEX_STRATEGY=]
# @option --keyring-provider[disabled|subprocess] <KEYRING_PROVIDER>  Attempt to use `keyring` for authentication for index URLs [env: UV_KEYRING_PROVIDER=]
# @option --exclude-newer <EXCLUDE_NEWER>        Limit candidate packages to those that were uploaded prior to the given date [env: UV_EXCLUDE_NEWER=]
# @option --link-mode[clone|copy|hardlink|symlink] <LINK_MODE>  The method to use when installing packages from the global cache [env: UV_LINK_MODE=]
# @option -p --python                            The Python interpreter to use for the virtual environment.
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads                    Disable automatic downloads of Python
# @option -i --index-url <INDEX_URL>             The URL of the Python package index (by default: <https://pypi.org/simple>) [env: UV_INDEX_URL=]
# @option --extra-index-url <EXTRA_INDEX_URL>    Extra URLs of package indexes to use, in addition to `--index-url` [env: UV_EXTRA_INDEX_URL=]
# @option -f --find-links <FIND_LINKS>           Locations to search for candidate distributions, in addition to those found in the registry indexes
# @flag --no-index                               Ignore the registry index (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`
# @flag -n --no-cache                            Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>                Path to the cache directory [env: UV_CACHE_DIR=]
# @flag -q --quiet                               Do not print any output
# @flag -v --verbose*                            Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                             Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                                Disable network access
# @flag --no-progress                            Hide all progress outputs
# @option --config-file <CONFIG_FILE>            The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                              Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                                Display the concise help for this command
# @flag -V --version                             Display the uv version
# @arg name                                      The path to the virtual environment to create [default: .venv]
venv() {
    :;
}
# }} uv venv

# {{ uv cache
# @cmd Manage uv's cache
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
cache() {
    :;
}

# {{{ uv cache clean
# @cmd Clear the cache, removing all entries or those linked to specific packages
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
# @arg package*                          The packages to remove from the cache
cache::clean() {
    :;
}
# }}} uv cache clean

# {{{ uv cache prune
# @cmd Prune all unreachable objects from the cache
# @flag --ci                             Optimize the cache for persistence in a continuous integration environment, like GitHub Actions
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
cache::prune() {
    :;
}
# }}} uv cache prune

# {{{ uv cache dir
# @cmd Show the cache directory
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
cache::dir() {
    :;
}
# }}} uv cache dir
# }} uv cache

# {{ uv self
# @cmd Manage the uv executable
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
self() {
    :;
}

# {{{ uv self update
# @cmd Update uv to the latest version
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
self::update() {
    :;
}
# }}} uv self update
# }} uv self

# {{ uv version
# @cmd Display uv's version
# @option --output-format[text|json] <OUTPUT_FORMAT>  [default: text]
# @flag -n --no-cache                    Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation [env: UV_NO_CACHE=]
# @option --cache-dir <CACHE_DIR>        Path to the cache directory [env: UV_CACHE_DIR=]
# @option --python-preference[only-managed|managed|system|only-system] <PYTHON_PREFERENCE>  Whether to prefer uv-managed or system Python installations
# @flag --no-python-downloads            Disable automatic downloads of Python
# @flag -q --quiet                       Do not print any output
# @flag -v --verbose*                    Use verbose output
# @option --color[auto|always|never] <COLOR_CHOICE>  Control colors in output [default: auto]
# @flag --native-tls                     Whether to load TLS certificates from the platform's native certificate store [env: UV_NATIVE_TLS=]
# @flag --offline                        Disable network access
# @flag --no-progress                    Hide all progress outputs
# @option --config-file <CONFIG_FILE>    The path to a `uv.toml` file to use for configuration [env: UV_CONFIG_FILE=]
# @flag --no-config                      Avoid discovering configuration files (`pyproject.toml`, `uv.toml`) [env: UV_NO_CONFIG=]
# @flag -h --help                        Display the concise help for this command
# @flag -V --version                     Display the uv version
version() {
    :;
}
# }} uv version

command eval "$(argc --argc-eval "$0" "$@")"