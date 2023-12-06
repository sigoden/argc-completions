#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

# {{ composer about
# @cmd Shows a short information about Composer
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
about() {
    :;
}
# }} composer about

# {{ composer archive
# @cmd Creates an archive of this composer package
# @option -f --format[tar|tar.gz|tar.gz2|zip]    Format of the resulting archive: tar, tar.gz, tar.bz2 or zip (default tar)
# @option --dir                                  Write the archive to this directory
# @option --file                                 Write the archive with the given file name.
# @flag --ignore-filters                         Ignore filters when saving package
# @flag -h --help                                Display help for the given command.
# @flag -q --quiet                               Do not output any message
# @flag -V --version                             Display this application version
# @flag --ansi                                   Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                                Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction                      Do not ask any interactive question
# @flag --profile                                Display timing and memory usage information
# @flag --no-plugins                             Whether to disable plugins.
# @flag --no-scripts                             Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                       If specified, use the given directory as working directory.
# @flag --no-cache                               Prevent use of the cache
# @flag -v --verbose*                            Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package                                   The package to archive instead of the current project
# @arg version                                   A version constraint to find the package to archive
archive() {
    :;
}
# }} composer archive

# {{ composer audit
# @cmd Checks for security vulnerability advisories for installed packages
# @flag --no-dev               Disables auditing of require-dev packages.
# @option -f --format          Output format.
# @flag --locked               Audit based on the lock file instead of the installed packages.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
audit() {
    :;
}
# }} composer audit

# {{ composer browse
# @cmd Opens the package's repository URL or homepage in your browser
# @alias home
# @flag -H --homepage                     Open the homepage instead of the repository URL.
# @flag -s --show                         Only show the homepage or repository URL.
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message
# @flag -V --version                      Display this application version
# @flag --ansi                            Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                         Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction               Do not ask any interactive question
# @flag --profile                         Display timing and memory usage information
# @flag --no-plugins                      Whether to disable plugins.
# @flag --no-scripts                      Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                If specified, use the given directory as working directory.
# @flag --no-cache                        Prevent use of the cache
# @flag -v --verbose*                     Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*[`_choice_dependency`]    Package(s) to browse to.
browse() {
    :;
}
# }} composer browse

# {{ composer bump
# @cmd Increases the lower limit of your composer.json requirements to the currently installed versions
# @flag -D --dev-only          Only bump requirements in "require-dev".
# @flag -R --no-dev-only       Only bump requirements in "require".
# @flag --dry-run              Outputs the packages to bump, but will not execute anything.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*               Optional package name(s) to restrict which packages are bumped.
bump() {
    :;
}
# }} composer bump

# {{ composer check-platform-reqs
# @cmd Check that platform requirements are satisfied
# @flag --no-dev               Disables checking of require-dev packages requirements.
# @flag --lock                 Checks requirements only from the lock file, not from installed packages.
# @option -f --format          Format of the output: text or json [default: "text"]
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
check-platform-reqs() {
    :;
}
# }} composer check-platform-reqs

# {{ composer clear-cache
# @cmd Clears composer's internal package cache
# @alias clearcache,cc
# @flag --gc                   Only run garbage collection, not a full cache clear
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
clear-cache() {
    :;
}
# }} composer clear-cache

# {{ composer completion
# @cmd Dump the shell completion script
# @flag --debug                Tail the completion debug log
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg shell[bash|zsh|fish]    The shell type (e.g. "bash"), the value of the "$SHELL" env var will be used if this is not given
completion() {
    :;
}
# }} composer completion

# {{ composer config
# @cmd Sets config options
# @flag -g --global                         Apply command to the global config file
# @flag -e --editor                         Open editor
# @flag -a --auth                           Affect auth config file (only used for --editor)
# @flag --unset                             Unset the given setting-key
# @flag -l --list                           List configuration settings
# @option -f --file                         If you want to choose a different composer.json or config.json
# @flag --absolute                          Returns absolute paths when fetching *-dir config values instead of relative
# @flag -j --json                           JSON decode the setting value, to be used with extra.* keys
# @flag -m --merge                          Merge the setting value with the current value, to be used with extra.* keys in combination with --json
# @flag --append                            When adding a repository, append it (lowest priority) to the existing ones instead of prepending it (highest priority)
# @flag --source                            Display where the config value is loaded from
# @flag -h --help                           Display help for the given command.
# @flag -q --quiet                          Do not output any message
# @flag -V --version                        Display this application version
# @flag --ansi                              Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                           Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction                 Do not ask any interactive question
# @flag --profile                           Display timing and memory usage information
# @flag --no-plugins                        Whether to disable plugins.
# @flag --no-scripts                        Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                  If specified, use the given directory as working directory.
# @flag --no-cache                          Prevent use of the cache
# @flag -v --verbose*                       Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg setting-key[`_choice_config_key`]    Setting key
# @arg setting-value                        Setting value
config() {
    :;
}
# }} composer config

# {{ composer create-project
# @cmd Creates new project from a package into given directory
# @option -s --stability           Minimum-stability allowed (unless a version is specified).
# @flag --prefer-source            Forces installation from package sources when possible, including VCS information.
# @flag --prefer-dist              Forces installation from package dist (default behavior).
# @option --prefer-install         Forces installation from package dist|source|auto (auto chooses source for dev versions, dist for the rest).
# @option --repository             Add custom repositories to look the package up, either by URL or using JSON arrays (multiple values allowed)
# @option --repository-url         DEPRECATED: Use --repository instead.
# @flag --add-repository           Add the custom repository in the composer.json.
# @flag --dev                      Enables installation of require-dev packages (enabled by default, only present for BC).
# @flag --no-dev                   Disables installation of require-dev packages.
# @flag --no-custom-installers     DEPRECATED: Use no-plugins instead.
# @flag --no-scripts               Skips the execution of all scripts defined in composer.json file.
# @flag --no-progress              Do not output download progress.
# @flag --no-secure-http           Disable the secure-http config option temporarily while installing the root package.
# @flag --keep-vcs                 Whether to prevent deleting the vcs folder.
# @flag --remove-vcs               Whether to force deletion of the vcs folder without prompting.
# @flag --no-install               Whether to skip installation of the package dependencies.
# @flag --no-audit                 Whether to skip auditing of the installed package dependencies (can also be set via the COMPOSER_NO_AUDIT=1 env var).
# @option --audit-format           Audit output format.
# @option --ignore-platform-req    Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs     Ignore all platform requirements (php & ext- packages).
# @flag --ask                      Whether to ask for project directory.
# @flag -h --help                  Display help for the given command.
# @flag -q --quiet                 Do not output any message
# @flag -V --version               Display this application version
# @flag --ansi                     Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                  Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction        Do not ask any interactive question
# @flag --profile                  Display timing and memory usage information
# @flag --no-plugins               Whether to disable plugins.
# @option -d --working-dir         If specified, use the given directory as working directory.
# @flag --no-cache                 Prevent use of the cache
# @flag -v --verbose*              Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package                     Package name to be installed
# @arg directory                   Directory where the files should be created
# @arg version                     Version, will default to latest
create-project() {
    :;
}
# }} composer create-project

# {{ composer depends
# @cmd Shows which packages cause the given package to be installed
# @alias why
# @flag -r --recursive                  Recursively resolves up to the root package
# @flag -t --tree                       Prints the results as a nested tree
# @flag --locked                        Read dependency information from composer.lock
# @flag -h --help                       Display help for the given command.
# @flag -q --quiet                      Do not output any message
# @flag -V --version                    Display this application version
# @flag --ansi                          Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                       Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction             Do not ask any interactive question
# @flag --profile                       Display timing and memory usage information
# @flag --no-plugins                    Whether to disable plugins.
# @flag --no-scripts                    Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir              If specified, use the given directory as working directory.
# @flag --no-cache                      Prevent use of the cache
# @flag -v --verbose*                   Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package[`_choice_dependency`]    Package to inspect
depends() {
    :;
}
# }} composer depends

# {{ composer diagnose
# @cmd Diagnoses the system to identify common errors
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
diagnose() {
    :;
}
# }} composer diagnose

# {{ composer dump-autoload
# @cmd Dumps the autoloader
# @alias dumpautoload
# @flag -o --optimize                  Optimizes PSR0 and PSR4 packages to be loaded with classmaps too, good for production.
# @flag -a --classmap-authoritative    Autoload classes from the classmap only.
# @flag --apcu                         Use APCu to cache found/not-found classes.
# @option --apcu-prefix                Use a custom prefix for the APCu autoloader cache.
# @flag --dry-run                      Outputs the operations but will not execute anything.
# @flag --dev                          Enables autoload-dev rules.
# @flag --no-dev                       Disables autoload-dev rules.
# @option --ignore-platform-req        Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs         Ignore all platform requirements (php & ext- packages).
# @flag --strict-psr                   Return a failed status code (1) if PSR-4 or PSR-0 mapping errors are present.
# @flag -h --help                      Display help for the given command.
# @flag -q --quiet                     Do not output any message
# @flag -V --version                   Display this application version
# @flag --ansi                         Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                      Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction            Do not ask any interactive question
# @flag --profile                      Display timing and memory usage information
# @flag --no-plugins                   Whether to disable plugins.
# @flag --no-scripts                   Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir             If specified, use the given directory as working directory.
# @flag --no-cache                     Prevent use of the cache
# @flag -v --verbose*                  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
dump-autoload() {
    :;
}
# }} composer dump-autoload

# {{ composer exec
# @cmd Executes a vendored binary/script
# @flag -l --list
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg binary[`_choice_bin`]
# @arg args*
exec() {
    :;
}
# }} composer exec

# {{ composer fund
# @cmd Discover how to help fund the maintenance of your dependencies
# @option -f --format          Format of the output: text or json [default: "text"]
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
fund() {
    :;
}
# }} composer fund

# {{ composer global
# @cmd Allows running commands in the global composer dir ($COMPOSER_HOME)
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg args~[`_choice_global`]
global() {
    :;
}
# }} composer global

# {{ composer init
# @cmd Creates a basic composer.json file in current directory
# @option --name               Name of the package
# @option --description        Description of package
# @option --author             Author name of package
# @option --type[library|project|metapackage|composer-plugin]  Type of package (e.g. library, project, metapackage, composer-plugin)
# @option --homepage           Homepage of package
# @option --require            Package to require with a version constraint, e.g. foo/bar:1.0.0 or foo/bar=1.0.0 or "foo/bar 1.0.0" (multiple values allowed)
# @option --require-dev        Package to require for development with a version constraint, e.g. foo/bar:1.0.0 or foo/bar=1.0.0 or "foo/bar 1.0.0" (multiple values allowed)
# @option -s --stability[stable|RC|beta|alpha|dev]  Minimum stability
# @option -l --license         License of package
# @option --repository         Add custom repositories, either by URL or using JSON arrays (multiple values allowed)
# @option -a --autoload        Add PSR-4 autoload mapping.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
init() {
    :;
}
# }} composer init

# {{ composer install
# @cmd Installs the project dependencies from the composer.lock file if present, or falls back on the composer.json
# @alias i
# @flag --prefer-source                Forces installation from package sources when possible, including VCS information.
# @flag --prefer-dist                  Forces installation from package dist (default behavior).
# @option --prefer-install             Forces installation from package dist|source|auto (auto chooses source for dev versions, dist for the rest).
# @flag --dry-run                      Outputs the operations but will not execute anything (implicitly enables --verbose).
# @flag --download-only                Download only, do not install packages.
# @flag --dev                          DEPRECATED: Enables installation of require-dev packages (enabled by default, only present for BC).
# @flag --no-suggest                   DEPRECATED: This flag does not exist anymore.
# @flag --no-dev                       Disables installation of require-dev packages.
# @flag --no-autoloader                Skips autoloader generation
# @flag --no-progress                  Do not output download progress.
# @flag --no-install                   Do not use, only defined here to catch misuse of the install command.
# @flag --audit                        Run an audit after installation is complete.
# @option --audit-format               Audit output format.
# @flag -o --optimize-autoloader       Optimize autoloader during autoloader dump
# @flag -a --classmap-authoritative    Autoload classes from the classmap only.
# @flag --apcu-autoloader              Use APCu to cache found/not-found classes.
# @option --apcu-autoloader-prefix     Use a custom prefix for the APCu autoloader cache.
# @option --ignore-platform-req        Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs         Ignore all platform requirements (php & ext- packages).
# @flag -h --help                      Display help for the given command.
# @flag -q --quiet                     Do not output any message
# @flag -V --version                   Display this application version
# @flag --ansi                         Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                      Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction            Do not ask any interactive question
# @flag --profile                      Display timing and memory usage information
# @flag --no-plugins                   Whether to disable plugins.
# @flag --no-scripts                   Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir             If specified, use the given directory as working directory.
# @flag --no-cache                     Prevent use of the cache
# @flag -v --verbose*                  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*                       Should not be provided, use composer require instead to add a given package to composer.json.
install() {
    :;
}
# }} composer install

# {{ composer licenses
# @cmd Shows information about licenses of dependencies
# @option -f --format          Format of the output: text, json or summary [default: "text"]
# @flag --no-dev               Disables search in require-dev packages.
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
licenses() {
    :;
}
# }} composer licenses

# {{ composer list
# @cmd List commands
list() {
    :;
}
# }} composer list

# {{ composer outdated
# @cmd Shows a list of installed packages that have updates available, including their latest version
# @flag -o --outdated                   Show only packages that are outdated (this is the default, but present here for compat with `show`
# @flag -a --all                        Show all installed packages with their latest versions
# @flag --locked                        Shows updates for packages from the lock file, regardless of what is currently in vendor dir
# @flag -D --direct                     Shows only packages that are directly required by the root package
# @flag --strict                        Return a non-zero exit code when there are outdated packages
# @flag -M --major-only                 Show only packages that have major SemVer-compatible updates.
# @flag -m --minor-only                 Show only packages that have minor SemVer-compatible updates.
# @flag -p --patch-only                 Show only packages that have patch SemVer-compatible updates.
# @option -f --format                   Format of the output: text or json [default: "text"]
# @option --ignore                      Ignore specified package(s).
# @flag --no-dev                        Disables search in require-dev packages.
# @option --ignore-platform-req         Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs          Ignore all platform requirements (php & ext- packages).
# @flag -h --help                       Display help for the given command.
# @flag -q --quiet                      Do not output any message
# @flag -V --version                    Display this application version
# @flag --ansi                          Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                       Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction             Do not ask any interactive question
# @flag --profile                       Display timing and memory usage information
# @flag --no-plugins                    Whether to disable plugins.
# @flag --no-scripts                    Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir              If specified, use the given directory as working directory.
# @flag --no-cache                      Prevent use of the cache
# @flag -v --verbose*                   Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package[`_choice_dependency`]    Package to inspect.
outdated() {
    :;
}
# }} composer outdated

# {{ composer prohibits
# @cmd Shows which packages prevent the given package from being installed
# @alias why-not
# @flag -r --recursive         Recursively resolves up to the root package
# @flag -t --tree              Prints the results as a nested tree
# @flag --locked               Read dependency information from composer.lock
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package                 Package to inspect
# @arg version                 Version constraint, which version you expected to be installed
prohibits() {
    :;
}
# }} composer prohibits

# {{ composer reinstall
# @cmd Uninstalls and reinstalls the given package names
# @flag --prefer-source                   Forces installation from package sources when possible, including VCS information.
# @flag --prefer-dist                     Forces installation from package dist (default behavior).
# @option --prefer-install                Forces installation from package dist|source|auto (auto chooses source for dev versions, dist for the rest).
# @flag --no-autoloader                   Skips autoloader generation
# @flag --no-progress                     Do not output download progress.
# @flag -o --optimize-autoloader          Optimize autoloader during autoloader dump
# @flag -a --classmap-authoritative       Autoload classes from the classmap only.
# @flag --apcu-autoloader                 Use APCu to cache found/not-found classes.
# @option --apcu-autoloader-prefix        Use a custom prefix for the APCu autoloader cache.
# @option --ignore-platform-req           Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs            Ignore all platform requirements (php & ext- packages).
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message
# @flag -V --version                      Display this application version
# @flag --ansi                            Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                         Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction               Do not ask any interactive question
# @flag --profile                         Display timing and memory usage information
# @flag --no-plugins                      Whether to disable plugins.
# @flag --no-scripts                      Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                If specified, use the given directory as working directory.
# @flag --no-cache                        Prevent use of the cache
# @flag -v --verbose*                     Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*[`_choice_dependency`]    List of package names to reinstall, can include a wildcard (*) to match any substring.
reinstall() {
    :;
}
# }} composer reinstall

# {{ composer remove
# @cmd Removes a package from the require or require-dev
# @alias rm
# @flag --dev                                Removes a package from the require-dev section.
# @flag --dry-run                            Outputs the operations but will not execute anything (implicitly enables --verbose).
# @flag --no-progress                        Do not output download progress.
# @flag --no-update                          Disables the automatic update of the dependencies (implies --no-install).
# @flag --no-install                         Skip the install step after updating the composer.lock file.
# @flag --no-audit                           Skip the audit step after updating the composer.lock file (can also be set via the COMPOSER_NO_AUDIT=1 env var).
# @option --audit-format                     Audit output format.
# @flag --update-no-dev                      Run the dependency update with the --no-dev option.
# @flag -w --update-with-dependencies        Allows inherited dependencies to be updated with explicit dependencies.
# @flag -W --update-with-all-dependencies    Allows all inherited dependencies to be updated, including those that are root requirements.
# @flag --with-all-dependencies              Alias for --update-with-all-dependencies
# @flag --no-update-with-dependencies        Does not allow inherited dependencies to be updated with explicit dependencies.
# @flag --unused                             Remove all packages which are locked but not required by any other package.
# @option --ignore-platform-req              Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs               Ignore all platform requirements (php & ext- packages).
# @flag -o --optimize-autoloader             Optimize autoloader during autoloader dump
# @flag -a --classmap-authoritative          Autoload classes from the classmap only.
# @flag --apcu-autoloader                    Use APCu to cache found/not-found classes.
# @option --apcu-autoloader-prefix           Use a custom prefix for the APCu autoloader cache.
# @flag -h --help                            Display help for the given command.
# @flag -q --quiet                           Do not output any message
# @flag -V --version                         Display this application version
# @flag --ansi                               Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                            Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction                  Do not ask any interactive question
# @flag --profile                            Display timing and memory usage information
# @flag --no-plugins                         Whether to disable plugins.
# @flag --no-scripts                         Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                   If specified, use the given directory as working directory.
# @flag --no-cache                           Prevent use of the cache
# @flag -v --verbose*                        Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*[`_choice_dependency`]       Packages that should be removed.
remove() {
    :;
}
# }} composer remove

# {{ composer require
# @cmd Adds required packages to your composer.json and installs them
# @alias r
# @flag --dev                                Add requirement to require-dev.
# @flag --dry-run                            Outputs the operations but will not execute anything (implicitly enables --verbose).
# @flag --prefer-source                      Forces installation from package sources when possible, including VCS information.
# @flag --prefer-dist                        Forces installation from package dist (default behavior).
# @option --prefer-install                   Forces installation from package dist|source|auto (auto chooses source for dev versions, dist for the rest).
# @flag --fixed                              Write fixed version to the composer.json.
# @flag --no-suggest                         DEPRECATED: This flag does not exist anymore.
# @flag --no-progress                        Do not output download progress.
# @flag --no-update                          Disables the automatic update of the dependencies (implies --no-install).
# @flag --no-install                         Skip the install step after updating the composer.lock file.
# @flag --no-audit                           Skip the audit step after updating the composer.lock file (can also be set via the COMPOSER_NO_AUDIT=1 env var).
# @option --audit-format                     Audit output format.
# @flag --update-no-dev                      Run the dependency update with the --no-dev option.
# @flag -w --update-with-dependencies        Allows inherited dependencies to be updated, except those that are root requirements.
# @flag -W --update-with-all-dependencies    Allows all inherited dependencies to be updated, including those that are root requirements.
# @flag --with-dependencies                  Alias for --update-with-dependencies
# @flag --with-all-dependencies              Alias for --update-with-all-dependencies
# @option --ignore-platform-req              Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs               Ignore all platform requirements (php & ext- packages).
# @flag --prefer-stable                      Prefer stable versions of dependencies (can also be set via the COMPOSER_PREFER_STABLE=1 env var).
# @flag --prefer-lowest                      Prefer lowest versions of dependencies (can also be set via the COMPOSER_PREFER_LOWEST=1 env var).
# @flag --sort-packages                      Sorts packages when adding/updating a new dependency
# @flag -o --optimize-autoloader             Optimize autoloader during autoloader dump
# @flag -a --classmap-authoritative          Autoload classes from the classmap only.
# @flag --apcu-autoloader                    Use APCu to cache found/not-found classes.
# @option --apcu-autoloader-prefix           Use a custom prefix for the APCu autoloader cache.
# @flag -h --help                            Display help for the given command.
# @flag -q --quiet                           Do not output any message
# @flag -V --version                         Display this application version
# @flag --ansi                               Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                            Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction                  Do not ask any interactive question
# @flag --profile                            Display timing and memory usage information
# @flag --no-plugins                         Whether to disable plugins.
# @flag --no-scripts                         Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                   If specified, use the given directory as working directory.
# @flag --no-cache                           Prevent use of the cache
# @flag -v --verbose*                        Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*                             Optional package name can also include a version constraint, e.g. foo/bar or foo/bar:1.0.0 or foo/bar=1.0.0 or "foo/bar 1.0.0"
require() {
    :;
}
# }} composer require

# {{ composer run-script
# @cmd Runs the scripts defined in composer.json
# @alias run
# @option --timeout                Sets script timeout in seconds, or 0 for never.
# @flag --dev                      Sets the dev mode.
# @flag --no-dev                   Disables the dev mode.
# @flag -l --list                  List scripts.
# @flag -h --help                  Display help for the given command.
# @flag -q --quiet                 Do not output any message
# @flag -V --version               Display this application version
# @flag --ansi                     Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                  Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction        Do not ask any interactive question
# @flag --profile                  Display timing and memory usage information
# @flag --no-plugins               Whether to disable plugins.
# @flag --no-scripts               Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir         If specified, use the given directory as working directory.
# @flag --no-cache                 Prevent use of the cache
# @flag -v --verbose*              Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg script[`_choice_script`]    Script name to run.
# @arg args*
run-script() {
    :;
}
# }} composer run-script

# {{ composer search
# @cmd Searches for packages
# @flag -N --only-name         Search only in package names
# @flag -O --only-vendor       Search only for vendor / organization names, returns only "vendor" as result
# @option -t --type            Search for a specific package type
# @option -f --format          Format of the output: text or json [default: "text"]
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg tokens*                 tokens to search for
search() {
    :;
}
# }} composer search

# {{ composer show
# @cmd Shows information about packages
# @alias info
# @flag --all                           List all packages
# @flag --locked                        List all locked packages
# @flag -i --installed                  List installed packages only (enabled by default, only present for BC).
# @flag -p --platform                   List platform packages only
# @flag -a --available                  List available packages only
# @flag -s --self                       Show the root package information
# @flag -N --name-only                  List package names only
# @flag -P --path                       Show package paths
# @flag -t --tree                       List the dependencies as a tree
# @flag -l --latest                     Show the latest version
# @flag -o --outdated                   Show the latest version but only for packages that are outdated
# @option --ignore                      Ignore specified package(s).
# @flag -M --major-only                 Show only packages that have major SemVer-compatible updates.
# @flag -m --minor-only                 Show only packages that have minor SemVer-compatible updates.
# @flag --patch-only                    Show only packages that have patch SemVer-compatible updates.
# @flag -D --direct                     Shows only packages that are directly required by the root package
# @flag --strict                        Return a non-zero exit code when there are outdated packages
# @option -f --format                   Format of the output: text or json [default: "text"]
# @flag --no-dev                        Disables search in require-dev packages.
# @option --ignore-platform-req         Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs          Ignore all platform requirements (php & ext- packages).
# @flag -h --help                       Display help for the given command.
# @flag -q --quiet                      Do not output any message
# @flag -V --version                    Display this application version
# @flag --ansi                          Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                       Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction             Do not ask any interactive question
# @flag --profile                       Display timing and memory usage information
# @flag --no-plugins                    Whether to disable plugins.
# @flag --no-scripts                    Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir              If specified, use the given directory as working directory.
# @flag --no-cache                      Prevent use of the cache
# @flag -v --verbose*                   Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg package[`_choice_dependency`]    Package to inspect.
# @arg version                          Version or version constraint to inspect
show() {
    :;
}
# }} composer show

# {{ composer status
# @cmd Shows a list of locally modified packages
# @flag -h --help              Display help for the given command.
# @flag -q --quiet             Do not output any message
# @flag -V --version           Display this application version
# @flag --ansi                 Force (or disable --no-ansi) ANSI output
# @flag --no-ansi              Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction    Do not ask any interactive question
# @flag --profile              Display timing and memory usage information
# @flag --no-plugins           Whether to disable plugins.
# @flag --no-scripts           Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir     If specified, use the given directory as working directory.
# @flag --no-cache             Prevent use of the cache
# @flag -v --verbose*          Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
status() {
    :;
}
# }} composer status

# {{ composer suggests
# @cmd Shows package suggestions
# @flag --by-package                      Groups output by suggesting package (default)
# @flag --by-suggestion                   Groups output by suggested package
# @flag -a --all                          Show suggestions from all dependencies, including transitive ones
# @flag --list                            Show only list of suggested package names
# @flag --no-dev                          Exclude suggestions from require-dev packages
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message
# @flag -V --version                      Display this application version
# @flag --ansi                            Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                         Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction               Do not ask any interactive question
# @flag --profile                         Display timing and memory usage information
# @flag --no-plugins                      Whether to disable plugins.
# @flag --no-scripts                      Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                If specified, use the given directory as working directory.
# @flag --no-cache                        Prevent use of the cache
# @flag -v --verbose*                     Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*[`_choice_dependency`]    Packages that you want to list suggestions from.
suggests() {
    :;
}
# }} composer suggests

# {{ composer update
# @cmd Updates your dependencies to the latest version according to composer.json, and updates the composer.lock file
# @alias u,upgrade
# @option --with                          Temporary version constraint to add, e.g. foo/bar:1.0.0 or foo/bar=1.0.0 (multiple values allowed)
# @flag --prefer-source                   Forces installation from package sources when possible, including VCS information.
# @flag --prefer-dist                     Forces installation from package dist (default behavior).
# @option --prefer-install                Forces installation from package dist|source|auto (auto chooses source for dev versions, dist for the rest).
# @flag --dry-run                         Outputs the operations but will not execute anything (implicitly enables --verbose).
# @flag --dev                             DEPRECATED: Enables installation of require-dev packages (enabled by default, only present for BC).
# @flag --no-dev                          Disables installation of require-dev packages.
# @flag --lock                            Overwrites the lock file hash to suppress warning about the lock file being out of date without updating package versions.
# @flag --no-install                      Skip the install step after updating the composer.lock file.
# @flag --no-audit                        Skip the audit step after updating the composer.lock file (can also be set via the COMPOSER_NO_AUDIT=1 env var).
# @option --audit-format                  Audit output format.
# @flag --no-autoloader                   Skips autoloader generation
# @flag --no-suggest                      DEPRECATED: This flag does not exist anymore.
# @flag --no-progress                     Do not output download progress.
# @flag -w --with-dependencies            Update also dependencies of packages in the argument list, except those which are root requirements.
# @flag -W --with-all-dependencies        Update also dependencies of packages in the argument list, including those which are root requirements.
# @flag -o --optimize-autoloader          Optimize autoloader during autoloader dump.
# @flag -a --classmap-authoritative       Autoload classes from the classmap only.
# @flag --apcu-autoloader                 Use APCu to cache found/not-found classes.
# @option --apcu-autoloader-prefix        Use a custom prefix for the APCu autoloader cache.
# @option --ignore-platform-req           Ignore a specific platform requirement (php & ext- packages).
# @flag --ignore-platform-reqs            Ignore all platform requirements (php & ext- packages).
# @flag --prefer-stable                   Prefer stable versions of dependencies (can also be set via the COMPOSER_PREFER_STABLE=1 env var).
# @flag --prefer-lowest                   Prefer lowest versions of dependencies (can also be set via the COMPOSER_PREFER_LOWEST=1 env var).
# @flag -i --interactive                  Interactive interface with autocompletion to select the packages to update.
# @flag --root-reqs                       Restricts the update to your first degree dependencies.
# @flag -h --help                         Display help for the given command.
# @flag -q --quiet                        Do not output any message
# @flag -V --version                      Display this application version
# @flag --ansi                            Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                         Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction               Do not ask any interactive question
# @flag --profile                         Display timing and memory usage information
# @flag --no-plugins                      Whether to disable plugins.
# @flag --no-scripts                      Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir                If specified, use the given directory as working directory.
# @flag --no-cache                        Prevent use of the cache
# @flag -v --verbose*                     Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg packages*[`_choice_dependency`]    Packages that should be updated, if not provided all packages are.
update() {
    :;
}
# }} composer update

# {{ composer validate
# @cmd Validates a composer.json and composer.lock
# @flag --no-check-all            Do not validate requires for overly strict/loose constraints
# @flag --check-lock              Check if lock file is up to date (even when config.lock is false)
# @flag --no-check-lock           Do not check if lock file is up to date
# @flag --no-check-publish        Do not check for publish errors
# @flag --no-check-version        Do not report a warning if the version field is present
# @flag -A --with-dependencies    Also validate the composer.json of all installed dependencies
# @flag --strict                  Return a non-zero exit code for warnings as well as errors
# @flag -h --help                 Display help for the given command.
# @flag -q --quiet                Do not output any message
# @flag -V --version              Display this application version
# @flag --ansi                    Force (or disable --no-ansi) ANSI output
# @flag --no-ansi                 Force (or disable --no-ansi) ANSI output
# @flag -n --no-interaction       Do not ask any interactive question
# @flag --profile                 Display timing and memory usage information
# @flag --no-plugins              Whether to disable plugins.
# @flag --no-scripts              Skips the execution of all scripts defined in composer.json file.
# @option -d --working-dir        If specified, use the given directory as working directory.
# @flag --no-cache                Prevent use of the cache
# @flag -v --verbose*             Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
# @arg file                       path to composer.json file
validate() {
    :;
}
# }} composer validate

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_dependency() {
    _helper_find_composer_json_path
    if [[ -n "$composer_json_path" ]]; then
        cat "$composer_json_path" | yq '(.require // {}) + (.require-dev // {}) | keys | .[]'
    fi
}

_choice_config_key() {
    composer config $(_argc_util_param_select_options --global) --list | \
    sed -n 's/\[\(.*\)\] \(\S*\)/\1\t\2/p'
}

_choice_bin() {
    composer_root_dir="$(_argc_util_path_search_parent -p composer.json)"
    if [[ -n  "$composer_root_dir" ]]; then
        (cd "$composer_root_dir/vendor/bin/" && ls -1)
    fi
}

_choice_global() {
    _argc_util_comp_subcommand 0 composer
}

_choice_script() {
    _helper_find_composer_json_path
    if [[ -n "$composer_json_path" ]]; then
        cat "$composer_json_path" | yq '(.scripts // {}) | keys | .[]'
    fi
}

_helper_find_composer_json_path() {
    composer_json_path="$(_argc_util_path_search_parent composer.json)" 
}

command eval "$(argc --argc-eval "$0" "$@")"