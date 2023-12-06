#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ gem build
# @cmd Build a gem from a gemspec
# @option --platform                   Specify the platform of gem to build
# @flag --force                        skip validation of the spec
# @flag --strict                       consider warnings as errors when validating the spec
# @option -o --output <FILE>           output gem with the given filename
# @option -C <PATH>                    Run as if gem build was started in <PATH> instead of the current working directory.
# @flag -h --help                      Get help on this command
# @flag -V                             Set the verbose level of output
# @flag --verbose                      Set the verbose level of output
# @flag --no-verbose                   Set the verbose level of output
# @flag -q --quiet                     Silence command progress meter
# @flag --silent                       Silence RubyGems output
# @option --config-file <FILE>         Use this config file instead of default
# @flag --backtrace                    Show stack backtrace on errors
# @flag --debug                        Turn on Ruby debugging
# @flag --norc                         Avoid loading any .gemrc file
# @arg file-gemspec <file:.gemspec>    gemspec file name to build a gem for
build() {
    :;
}
# }} gem build

# {{ gem cert
# @cmd Manage RubyGems certificates and signing settings
# @option -a --add <CERT>                   Add a trusted certificate.
# @option -l --list <FILTER>                List trusted certificates where the subject contains FILTER
# @option -r --remove <FILTER>              Remove trusted certificates where the subject contains FILTER
# @option -b --build <EMAIL_ADDR>           Build private key and self-signed certificate for EMAIL_ADDR
# @option -C --certificate <CERT>           Signing certificate for --sign
# @option -K --private-key <KEY>            Key for --sign or --build
# @option -A --key-algorithm <ALGORITHM>    Select which key algorithm to use for --build
# @option -s --sign <CERT>                  Signs CERT with the key from -K and the certificate from -C
# @option -d --days <NUMBER_OF_DAYS>        Days before the certificate expires
# @flag -R --re-sign                        Re-signs the certificate from -C with the key from -K
# @flag -h --help                           Get help on this command
# @flag -V                                  Set the verbose level of output
# @flag --verbose                           Set the verbose level of output
# @flag --no-verbose                        Set the verbose level of output
# @flag -q --quiet                          Silence command progress meter
# @flag --silent                            Silence RubyGems output
# @option --config-file <FILE>              Use this config file instead of default
# @flag --backtrace                         Show stack backtrace on errors
# @flag --debug                             Turn on Ruby debugging
# @flag --norc                              Avoid loading any .gemrc file
cert() {
    :;
}
# }} gem cert

# {{ gem check
# @cmd Check a gem repository for added or missing files
# @flag -a                        Report "unmanaged" or rogue files in the gem repository
# @flag --alien                   Report "unmanaged" or rogue files in the gem repository
# @flag --no-alien                Report "unmanaged" or rogue files in the gem repository
# @flag --doctor                  Clean up uninstalled gems and broken specifications
# @flag --no-doctor               Clean up uninstalled gems and broken specifications
# @flag --dry-run                 Do not remove files, only report what would be removed
# @flag --no-dry-run              Do not remove files, only report what would be removed
# @flag --gems                    Check installed gems for problems
# @flag --no-gems                 Check installed gems for problems
# @option -v --version            Specify version of gem to check
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
check() {
    :;
}
# }} gem check

# {{ gem cleanup
# @cmd Clean up old versions of installed gems
# @flag -n                        Do not uninstall gems
# @flag -d                        Do not uninstall gems
# @flag --dry-run                 Do not uninstall gems
# @flag -D                        Check development dependencies while uninstalling (default: true)
# @flag --check-development       Check development dependencies while uninstalling (default: true)
# @flag --no-check-development    Check development dependencies while uninstalling (default: true)
# @flag --user-install            Cleanup in user's home directory instead of GEM_HOME.
# @flag --no-user-install         Cleanup in user's home directory instead of GEM_HOME.
# @flag --dryrun                  Do not uninstall gems
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
cleanup() {
    :;
}
# }} gem cleanup

# {{ gem contents
# @cmd Display the contents of the installed gems
# @option -v --version                         Specify version of gem to contents
# @flag --all                                  Contents for all gems
# @option -s --spec-dir*, <DIR>                Search for gems under specific paths
# @flag -l                                     Only return files in the Gem's lib_dirs
# @flag --lib-only                             Only return files in the Gem's lib_dirs
# @flag --no-lib-only                          Only return files in the Gem's lib_dirs
# @flag --prefix                               Don't include installed path prefix
# @flag --no-prefix                            Don't include installed path prefix
# @flag --show-install-dir                     Show only the gem install dir
# @flag --no-show-install-dir                  Show only the gem install dir
# @flag -h --help                              Get help on this command
# @flag -V                                     Set the verbose level of output
# @flag --verbose                              Set the verbose level of output
# @flag --no-verbose                           Set the verbose level of output
# @flag -q --quiet                             Silence command progress meter
# @flag --silent                               Silence RubyGems output
# @option --config-file <FILE>                 Use this config file instead of default
# @flag --backtrace                            Show stack backtrace on errors
# @flag --debug                                Turn on Ruby debugging
# @flag --norc                                 Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]    name of gem to list contents for
contents() {
    :;
}
# }} gem contents

# {{ gem dependency
# @cmd Show the dependencies of an installed gem
# @option -v --version                   Specify version of gem to dependency
# @option --platform                     Specify the platform of gem to dependency
# @flag --prerelease                     Allow prerelease versions of a gem
# @flag --no-prerelease                  Allow prerelease versions of a gem
# @flag -R                               Include reverse dependencies in the output
# @flag --reverse-dependencies           Include reverse dependencies in the output
# @flag --no-reverse-dependencies        Include reverse dependencies in the output
# @flag --pipe                           Pipe Format (name --version ver)
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
dependency() {
    :;
}
# }} gem dependency

# {{ gem environment
# @cmd Display information about the RubyGems environment
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg action[`_choice_environment_action`]
environment() {
    :;
}
# }} gem environment

# {{ gem exec
# @cmd Run a command from a gem
# @option -v --version            Specify version of gem to exec
# @flag --prerelease              Allow prerelease versions of a gem to be installed
# @flag --no-prerelease           Allow prerelease versions of a gem to be installed
# @option -g --gem                run the executable from the given gem
# @flag --conservative            Prefer the most recent installed version, rather than the latest version overall
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg command                    the executable command to run
exec() {
    :;
}
# }} gem exec

# {{ gem fetch
# @cmd Download a gem and place it in the current directory
# @option -v --version                   Specify version of gem to fetch
# @option --platform                     Specify the platform of gem to fetch
# @flag --prerelease                     Allow prerelease versions of a gem
# @flag --no-prerelease                  Allow prerelease versions of a gem
# @flag --suggestions                    Suggest alternates when gems are not found
# @flag --no-suggestions                 Suggest alternates when gems are not found
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @option -s --source <URL>              Append URL to list of remote gem sources
# @flag --clear-sources                  Clear the gem sources
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg gemname[`_choice_package`]
fetch() {
    :;
}
# }} gem fetch

# {{ gem generate_index
# @cmd Generates the index files for a gem server directory
# @option -d --directory <DIRNAME>    repository base dir containing gems subdir
# @flag --modern                      Generate indexes for RubyGems (always true)
# @flag --no-modern                   Generate indexes for RubyGems (always true)
# @flag --update                      Update modern indexes with gems added since the last update
# @flag -h --help                     Get help on this command
# @flag -V                            Set the verbose level of output
# @flag --verbose                     Set the verbose level of output
# @flag --no-verbose                  Set the verbose level of output
# @flag -q --quiet                    Silence command progress meter
# @flag --silent                      Silence RubyGems output
# @option --config-file <FILE>        Use this config file instead of default
# @flag --backtrace                   Show stack backtrace on errors
# @flag --debug                       Turn on Ruby debugging
# @flag --norc                        Avoid loading any .gemrc file
generate_index() {
    :;
}
# }} gem generate_index

# {{ gem info
# @cmd Show information for the given gem
# @flag -i                               Check for installed gem
# @flag --installed                      Check for installed gem
# @flag --no-installed                   Check for installed gem
# @flag -I                               Equivalent to --no-installed
# @option -v --version                   Specify version of gem to info for use with --installed
# @flag --versions                       Display only gem names
# @flag --no-versions                    Display only gem names
# @flag -a --all                         Display all gem versions
# @flag -e --exact                       Name of gem(s) to query on matches the provided STRING
# @flag --prerelease                     Display prerelease versions
# @flag --no-prerelease                  Display prerelease versions
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg gemname[`_choice_package`]
info() {
    :;
}
# }} gem info

# {{ gem install
# @cmd Install a gem into the local repository
# @option --platform                     Specify the platform of gem to install
# @option -v --version                   Specify version of gem to install
# @flag --prerelease                     Allow prerelease versions of a gem to be installed.
# @flag --no-prerelease                  Allow prerelease versions of a gem to be installed.
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @option -i --install-dir <DIR>         Gem repository directory to get installed gems
# @option -n --bindir <DIR>              Directory where executables will be placed when the gem is installed
# @option --document <TYPES>             Generate documentation for installed gems List the documentation types you wish to generate.
# @option --build-root <DIR>             Temporary installation root.
# @flag --vendor                         Install gem into the vendor directory.
# @flag -N --no-document                 Disable documentation generation
# @flag -E                               Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag --env-shebang                    Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag --no-env-shebang                 Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag -f                               Force gem to install, bypassing dependency checks
# @flag --force                          Force gem to install, bypassing dependency checks
# @flag --no-force                       Force gem to install, bypassing dependency checks
# @flag -w                               Use bin wrappers for executables Not available on dosish platforms
# @flag --wrappers                       Use bin wrappers for executables Not available on dosish platforms
# @flag --no-wrappers                    Use bin wrappers for executables Not available on dosish platforms
# @option -P --trust-policy <POLICY>     Specify gem trust policy
# @flag --ignore-dependencies            Do not install any required dependent gems
# @flag --format-executable              Make installed executable names match Ruby.
# @flag --no-format-executable           Make installed executable names match Ruby.
# @flag --user-install                   Install in user's home directory instead of GEM_HOME.
# @flag --no-user-install                Install in user's home directory instead of GEM_HOME.
# @flag --development                    Install additional development dependencies
# @flag --development-all                Install development dependencies for all gems (including dev deps themselves)
# @flag --conservative                   Don't attempt to upgrade gems already meeting version requirement
# @flag --minimal-deps                   Don't upgrade any dependencies that already meet version requirements
# @flag --no-minimal-deps                Don't upgrade any dependencies that already meet version requirements
# @flag --post-install-message           Print post install message
# @flag --no-post-install-message        Print post install message
# @option -g --file                      Read from a gem dependencies API file and install the listed gems
# @option --without <GROUPS>             Omit the named groups (comma separated) when installing from a gem dependencies file
# @flag --default                        Add the gem's full specification to specifications/default and extract only its bin
# @flag --explain                        Rather than install the gems, indicate which would be installed
# @flag --lock                           Create a lock file (when used with -g/--file)
# @flag --no-lock                        Create a lock file (when used with -g/--file)
# @flag --suggestions                    Suggest alternates when gems are not found
# @flag --no-suggestions                 Suggest alternates when gems are not found
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg gemname[`_choice_install`]
install() {
    :;
}
# }} gem install

# {{ gem list
# @cmd Display local gems whose name matches REGEXP
# @flag -i                               Check for installed gem
# @flag --installed                      Check for installed gem
# @flag --no-installed                   Check for installed gem
# @flag -I                               Equivalent to --no-installed
# @option -v --version                   Specify version of gem to list for use with --installed
# @flag -d                               Display detailed information of gem(s)
# @flag --details                        Display detailed information of gem(s)
# @flag --no-details                     Display detailed information of gem(s)
# @flag --versions                       Display only gem names
# @flag --no-versions                    Display only gem names
# @flag -a --all                         Display all gem versions
# @flag -e --exact                       Name of gem(s) to query on matches the provided STRING
# @flag --prerelease                     Display prerelease versions
# @flag --no-prerelease                  Display prerelease versions
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg regexp                            regexp to look for in gem name
list() {
    :;
}
# }} gem list

# {{ gem lock
# @cmd Generate a lockdown list of gems
# @flag -s                        fail if unable to satisfy a dependency
# @flag --strict                  fail if unable to satisfy a dependency
# @flag --no-strict               fail if unable to satisfy a dependency
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg gemname[`_choice_lock`]
lock() {
    :;
}
# }} gem lock

# {{ gem mirror
# @cmd Mirror all gem files (requires rubygems-mirror)
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
mirror() {
    :;
}
# }} gem mirror

# {{ gem open
# @cmd Open gem sources in editor
# @option -e --editor <COMMAND>    Prepends COMMAND to gem path.
# @option -v --version             Opens specific gem version
# @flag -h --help                  Get help on this command
# @flag -V                         Set the verbose level of output
# @flag --verbose                  Set the verbose level of output
# @flag --no-verbose               Set the verbose level of output
# @flag -q --quiet                 Silence command progress meter
# @flag --silent                   Silence RubyGems output
# @option --config-file <FILE>     Use this config file instead of default
# @flag --backtrace                Show stack backtrace on errors
# @flag --debug                    Turn on Ruby debugging
# @flag --norc                     Avoid loading any .gemrc file
# @arg gemname[`_choice_package`]
open() {
    :;
}
# }} gem open

# {{ gem outdated
# @cmd Display all gems that need updates
# @option --platform                     Specify the platform of gem to outdated
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
outdated() {
    :;
}
# }} gem outdated

# {{ gem owner
# @cmd Manage gem owners of a gem on the push server
# @option -k --key <KEYNAME>         Use the given API key from /home/sigo/.local/share/gem/credentials
# @option --otp <CODE>               Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE
# @option -a --add <NEW_OWNER>       Add an owner by user identifier
# @option -r --remove <OLD_OWNER>    Remove an owner by user identifier
# @option --host                     Use another gemcutter-compatible host (e.g. https://rubygems.org)
# @option -p <URL>                   Use HTTP proxy for remote operations
# @option --http-proxy <URL>         Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>      Use HTTP proxy for remote operations
# @flag -h --help                    Get help on this command
# @flag -V                           Set the verbose level of output
# @flag --verbose                    Set the verbose level of output
# @flag --no-verbose                 Set the verbose level of output
# @flag -q --quiet                   Silence command progress meter
# @flag --silent                     Silence RubyGems output
# @option --config-file <FILE>       Use this config file instead of default
# @flag --backtrace                  Show stack backtrace on errors
# @flag --debug                      Turn on Ruby debugging
# @flag --norc                       Avoid loading any .gemrc file
# @arg gemname[`_choice_package`]
owner() {
    :;
}
# }} gem owner

# {{ gem pristine
# @cmd Restores installed gems to pristine condition from files located in the gem cache
# @flag --all                        Restore all installed gems to pristine condition
# @option --skip <gem_name>          used on --all, skip if name == gem_name
# @flag --extensions                 Restore gems with extensions in addition to regular gems
# @flag --no-extensions              Restore gems with extensions in addition to regular gems
# @flag --only-missing-extensions    Only restore gems with missing extensions
# @flag --only-executables           Only restore executables
# @flag --only-plugins               Only restore plugins
# @flag -E                           Rewrite executables with a shebang of /usr/bin/env
# @flag --env-shebang                Rewrite executables with a shebang of /usr/bin/env
# @flag --no-env-shebang             Rewrite executables with a shebang of /usr/bin/env
# @option -i --install-dir <DIR>     Gem repository to get binstubs and plugins installed
# @option -n --bindir <DIR>          Directory where executables are located
# @option -v --version               Specify version of gem to restore to pristine condition
# @flag -h --help                    Get help on this command
# @flag -V                           Set the verbose level of output
# @flag --verbose                    Set the verbose level of output
# @flag --no-verbose                 Set the verbose level of output
# @flag -q --quiet                   Silence command progress meter
# @flag --silent                     Silence RubyGems output
# @option --config-file <FILE>       Use this config file instead of default
# @flag --backtrace                  Show stack backtrace on errors
# @flag --debug                      Turn on Ruby debugging
# @flag --norc                       Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
pristine() {
    :;
}
# }} gem pristine

# {{ gem push
# @cmd Push a gem up to the gem server
# @option -k --key <KEYNAME>       Use the given API key from /home/sigo/.local/share/gem/credentials
# @option --otp <CODE>             Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE
# @option --host                   Push to another gemcutter-compatible host (e.g. https://rubygems.org)
# @option -p <URL>                 Use HTTP proxy for remote operations
# @option --http-proxy <URL>       Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>    Use HTTP proxy for remote operations
# @flag -h --help                  Get help on this command
# @flag -V                         Set the verbose level of output
# @flag --verbose                  Set the verbose level of output
# @flag --no-verbose               Set the verbose level of output
# @flag -q --quiet                 Silence command progress meter
# @flag --silent                   Silence RubyGems output
# @option --config-file <FILE>     Use this config file instead of default
# @flag --backtrace                Show stack backtrace on errors
# @flag --debug                    Turn on Ruby debugging
# @flag --norc                     Avoid loading any .gemrc file
# @arg file-gem <file:.gem>        built gem to push up
push() {
    :;
}
# }} gem push

# {{ gem rdoc
# @cmd Generates RDoc for pre-installed gems
# @flag --all                     Generate RDoc/RI documentation for all installed gems
# @flag --rdoc                    Generate RDoc HTML
# @flag --no-rdoc                 Generate RDoc HTML
# @flag --ri                      Generate RI data
# @flag --no-ri                   Generate RI data
# @flag --overwrite               Overwrite installed documents
# @flag --no-overwrite            Overwrite installed documents
# @option -v --version            Specify version of gem to rdoc
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
rdoc() {
    :;
}
# }} gem rdoc

# {{ gem search
# @cmd Display remote gems whose name matches REGEXP
# @flag -i                               Check for installed gem
# @flag --installed                      Check for installed gem
# @flag --no-installed                   Check for installed gem
# @flag -I                               Equivalent to --no-installed
# @option -v --version                   Specify version of gem to search for use with --installed
# @flag -d                               Display detailed information of gem(s)
# @flag --details                        Display detailed information of gem(s)
# @flag --no-details                     Display detailed information of gem(s)
# @flag --versions                       Display only gem names
# @flag --no-versions                    Display only gem names
# @flag -a --all                         Display all gem versions
# @flag -e --exact                       Name of gem(s) to query on matches the provided STRING
# @flag --prerelease                     Display prerelease versions
# @flag --no-prerelease                  Display prerelease versions
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg regexp                            regexp to search for in gem name
search() {
    :;
}
# }} gem search

# {{ gem server
# @cmd Starts up a web server that hosts the RDoc (requires rubygems-server)
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
server() {
    :;
}
# }} gem server

# {{ gem signin
# @cmd Sign in to any gemcutter-compatible host.
# @option --host                  Push to another gemcutter-compatible host
# @option --otp <CODE>            Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
signin() {
    :;
}
# }} gem signin

# {{ gem signout
# @cmd Sign out from all the current sessions.
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
signout() {
    :;
}
# }} gem signout

# {{ gem sources
# @cmd Manage the sources and cache file RubyGems uses to search for gems
# @option -a --add <SOURCE_URI>       Add source
# @flag -l --list                     List sources
# @option -r --remove <SOURCE_URI>    Remove source
# @flag -c --clear-all                Remove all sources (clear the cache)
# @flag -u --update                   Update source cache
# @flag -f                            Do not show any confirmation prompts and behave as if 'yes' was always answered
# @flag --force                       Do not show any confirmation prompts and behave as if 'yes' was always answered
# @flag --no-force                    Do not show any confirmation prompts and behave as if 'yes' was always answered
# @option -p <URL>                    Use HTTP proxy for remote operations
# @option --http-proxy <URL>          Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>       Use HTTP proxy for remote operations
# @flag -h --help                     Get help on this command
# @flag -V                            Set the verbose level of output
# @flag --verbose                     Set the verbose level of output
# @flag --no-verbose                  Set the verbose level of output
# @flag -q --quiet                    Silence command progress meter
# @flag --silent                      Silence RubyGems output
# @option --config-file <FILE>        Use this config file instead of default
# @flag --backtrace                   Show stack backtrace on errors
# @flag --debug                       Turn on Ruby debugging
# @flag --norc                        Avoid loading any .gemrc file
sources() {
    :;
}
# }} gem sources

# {{ gem specification
# @cmd Display gem specification (in yaml)
# @option -v --version                         Specify version of gem to examine
# @option --platform                           Specify the platform of gem to specification
# @flag --prerelease                           Allow prerelease versions of a gem
# @flag --no-prerelease                        Allow prerelease versions of a gem
# @flag --all                                  Output specifications for all versions of the gem
# @flag --ruby                                 Output ruby format
# @flag --yaml                                 Output YAML format
# @flag --marshal                              Output Marshal format
# @flag -u                                     Update local source cache
# @flag --update-sources                       Update local source cache
# @flag --no-update-sources                    Update local source cache
# @flag -l --local                             Restrict operations to the LOCAL domain
# @flag -r --remote                            Restrict operations to the REMOTE domain
# @flag -b --both                              Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>          Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                        Clear the gem sources
# @option -s --source <URL>                    Append URL to list of remote gem sources
# @option -p <URL>                             Use HTTP proxy for remote operations
# @option --http-proxy <URL>                   Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>                Use HTTP proxy for remote operations
# @flag -h --help                              Get help on this command
# @flag -V                                     Set the verbose level of output
# @flag --verbose                              Set the verbose level of output
# @flag --no-verbose                           Set the verbose level of output
# @flag -q --quiet                             Silence command progress meter
# @flag --silent                               Silence RubyGems output
# @option --config-file <FILE>                 Use this config file instead of default
# @flag --backtrace                            Show stack backtrace on errors
# @flag --debug                                Turn on Ruby debugging
# @flag --norc                                 Avoid loading any .gemrc file
# @arg gemfile[`_choice_installed_package`]    name of gem to show the gemspec for
# @arg field[`_choice_spec_field`]             name of gemspec field to show
specification() {
    :;
}
# }} gem specification

# {{ gem stale
# @cmd List gems along with access times
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
stale() {
    :;
}
# }} gem stale

# {{ gem uninstall
# @cmd Uninstall gems from the local repository
# @flag -a                          Uninstall all matching versions
# @flag --all                       Uninstall all matching versions
# @flag --no-all                    Uninstall all matching versions
# @flag -I                          Ignore dependency requirements while uninstalling
# @flag --ignore-dependencies       Ignore dependency requirements while uninstalling
# @flag --no-ignore-dependencies    Ignore dependency requirements while uninstalling
# @flag -D                          Check development dependencies while uninstalling (default: false)
# @flag --check-development         Check development dependencies while uninstalling (default: false)
# @flag --no-check-development      Check development dependencies while uninstalling (default: false)
# @flag -x                          Uninstall applicable executables without confirmation
# @flag --executables               Uninstall applicable executables without confirmation
# @flag --no-executables            Uninstall applicable executables without confirmation
# @option -i --install-dir <DIR>    Directory to uninstall gem from
# @option -n --bindir <DIR>         Directory to remove executables from
# @flag --user-install              Uninstall from user's home directory in addition to GEM_HOME.
# @flag --no-user-install           Uninstall from user's home directory in addition to GEM_HOME.
# @flag --format-executable         Assume executable names match Ruby's prefix and suffix.
# @flag --no-format-executable      Assume executable names match Ruby's prefix and suffix.
# @flag --force                     Uninstall all versions of the named gems ignoring dependencies
# @flag --no-force                  Uninstall all versions of the named gems ignoring dependencies
# @flag --abort-on-dependent        Prevent uninstalling gems that are depended on by other gems.
# @flag --no-abort-on-dependent     Prevent uninstalling gems that are depended on by other gems.
# @option -v --version              Specify version of gem to uninstall
# @option --platform                Specify the platform of gem to uninstall
# @flag --vendor                    Uninstall gem from the vendor directory.
# @flag -h --help                   Get help on this command
# @flag -V                          Set the verbose level of output
# @flag --verbose                   Set the verbose level of output
# @flag --no-verbose                Set the verbose level of output
# @flag -q --quiet                  Silence command progress meter
# @flag --silent                    Silence RubyGems output
# @option --config-file <FILE>      Use this config file instead of default
# @flag --backtrace                 Show stack backtrace on errors
# @flag --debug                     Turn on Ruby debugging
# @flag --norc                      Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
uninstall() {
    :;
}
# }} gem uninstall

# {{ gem unpack
# @cmd Unpack an installed gem to the current directory
# @option --target <DIR>                target directory for unpacking
# @flag --spec                          unpack the gem specification
# @option -v --version                  Specify version of gem to unpack
# @option -P --trust-policy <POLICY>    Specify gem trust policy
# @flag -h --help                       Get help on this command
# @flag -V                              Set the verbose level of output
# @flag --verbose                       Set the verbose level of output
# @flag --no-verbose                    Set the verbose level of output
# @flag -q --quiet                      Silence command progress meter
# @flag --silent                        Silence RubyGems output
# @option --config-file <FILE>          Use this config file instead of default
# @flag --backtrace                     Show stack backtrace on errors
# @flag --debug                         Turn on Ruby debugging
# @flag --norc                          Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
unpack() {
    :;
}
# }} gem unpack

# {{ gem update
# @cmd Update installed gems to the latest version
# @option --system <VERSION>             Update the RubyGems system software
# @option --platform                     Specify the platform of gem to update
# @flag --prerelease                     Allow prerelease versions of a gem as update targets
# @flag --no-prerelease                  Allow prerelease versions of a gem as update targets
# @flag -u                               Update local source cache
# @flag --update-sources                 Update local source cache
# @flag --no-update-sources              Update local source cache
# @option -i --install-dir <DIR>         Gem repository directory to get installed gems
# @option -n --bindir <DIR>              Directory where executables will be placed when the gem is installed
# @option --document <TYPES>             Generate documentation for installed gems List the documentation types you wish to generate.
# @option --build-root <DIR>             Temporary installation root.
# @flag --vendor                         Install gem into the vendor directory.
# @flag -N --no-document                 Disable documentation generation
# @flag -E                               Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag --env-shebang                    Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag --no-env-shebang                 Rewrite the shebang line on installed scripts to use /usr/bin/env
# @flag -f                               Force gem to install, bypassing dependency checks
# @flag --force                          Force gem to install, bypassing dependency checks
# @flag --no-force                       Force gem to install, bypassing dependency checks
# @flag -w                               Use bin wrappers for executables Not available on dosish platforms
# @flag --wrappers                       Use bin wrappers for executables Not available on dosish platforms
# @flag --no-wrappers                    Use bin wrappers for executables Not available on dosish platforms
# @option -P --trust-policy <POLICY>     Specify gem trust policy
# @flag --ignore-dependencies            Do not install any required dependent gems
# @flag --format-executable              Make installed executable names match Ruby.
# @flag --no-format-executable           Make installed executable names match Ruby.
# @flag --user-install                   Install in user's home directory instead of GEM_HOME.
# @flag --no-user-install                Install in user's home directory instead of GEM_HOME.
# @flag --development                    Install additional development dependencies
# @flag --development-all                Install development dependencies for all gems (including dev deps themselves)
# @flag --conservative                   Don't attempt to upgrade gems already meeting version requirement
# @flag --minimal-deps                   Don't upgrade any dependencies that already meet version requirements
# @flag --no-minimal-deps                Don't upgrade any dependencies that already meet version requirements
# @flag --post-install-message           Print post install message
# @flag --no-post-install-message        Print post install message
# @option -g --file                      Read from a gem dependencies API file and install the listed gems
# @option --without <GROUPS>             Omit the named groups (comma separated) when installing from a gem dependencies file
# @flag --default                        Add the gem's full specification to specifications/default and extract only its bin
# @flag --explain                        Rather than install the gems, indicate which would be installed
# @flag --lock                           Create a lock file (when used with -g/--file)
# @flag --no-lock                        Create a lock file (when used with -g/--file)
# @flag --suggestions                    Suggest alternates when gems are not found
# @flag --no-suggestions                 Suggest alternates when gems are not found
# @flag -l --local                       Restrict operations to the LOCAL domain
# @flag -r --remote                      Restrict operations to the REMOTE domain
# @flag -b --both                        Allow LOCAL and REMOTE operations
# @option -B --bulk-threshold <COUNT>    Threshold for switching to bulk synchronization (default 1000)
# @flag --clear-sources                  Clear the gem sources
# @option -s --source <URL>              Append URL to list of remote gem sources
# @option -p <URL>                       Use HTTP proxy for remote operations
# @option --http-proxy <URL>             Use HTTP proxy for remote operations
# @option --no-http-proxy <URL>          Use HTTP proxy for remote operations
# @flag -h --help                        Get help on this command
# @flag -V                               Set the verbose level of output
# @flag --verbose                        Set the verbose level of output
# @flag --no-verbose                     Set the verbose level of output
# @flag -q --quiet                       Silence command progress meter
# @flag --silent                         Silence RubyGems output
# @option --config-file <FILE>           Use this config file instead of default
# @flag --backtrace                      Show stack backtrace on errors
# @flag --debug                          Turn on Ruby debugging
# @flag --norc                           Avoid loading any .gemrc file
# @arg gemname[`_choice_installed_package`]
update() {
    :;
}
# }} gem update

# {{ gem which
# @cmd Find the location of a library file you can require
# @flag -a                        show all matching files
# @flag --all                     show all matching files
# @flag --no-all                  show all matching files
# @flag -g                        search gems before non-gems
# @flag --gems-first              search gems before non-gems
# @flag --no-gems-first           search gems before non-gems
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg file*
which() {
    :;
}
# }} gem which

# {{ gem yank
# @cmd Remove a pushed gem from the index
# @option -v --version            Specify version of gem to remove
# @option --platform              Specify the platform of gem to remove
# @option --otp <CODE>            Digit code for multifactor authentication You can also use the environment variable GEM_HOST_OTP_CODE
# @option --host                  Yank from another gemcutter-compatible host (e.g. https://rubygems.org)
# @option -k --key <KEYNAME>      Use the given API key from /home/sigo/.local/share/gem/credentials
# @flag -h --help                 Get help on this command
# @flag -V                        Set the verbose level of output
# @flag --verbose                 Set the verbose level of output
# @flag --no-verbose              Set the verbose level of output
# @flag -q --quiet                Silence command progress meter
# @flag --silent                  Silence RubyGems output
# @option --config-file <FILE>    Use this config file instead of default
# @flag --backtrace               Show stack backtrace on errors
# @flag --debug                   Turn on Ruby debugging
# @flag --norc                    Avoid loading any .gemrc file
# @arg file-gem <file:.gem>       name of gem
yank() {
    :;
}
# }} gem yank

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_installed_package() {
    gem list --local | sed 's/\(\S\+\) (\(.*\))/\1\t\2/'   
}

_choice_environment_action() {
    cat <<-'EOF'
gemdir	display the path where gems are installed
gempath	display path used to search for gems
version	display the gem format version
remotesources	display the remote gem servers
platform	display the supported gem platforms
EOF
}

_choice_package() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_CWORD" | sed -n 's/^\(\S\+\) (\(.*\))$/\1\t\2/p'
}

_choice_install() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package
}

_choice_lock() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_CWORD" | sed -n 's/^\(\S\+\) (\(.*\))$/\1-\2/p'
}

_choice_spec_field() {
    cat <<-'EOF'
name	The name of the gem.
version	The version of the gem.
summary	A short one-line description of the gem.
description	A longer, more detailed description of the gem.
homepage	The URL of the gem's homepage or project page.
authors	The authors/maintainers of the gem.
email	The email address of the gem's contact person.
licenses	The licenses under which the gem is distributed.
metadata	Additional metadata about the gem (e.g., bug tracker, source code repository).
files	The files included in the gem package.
dependencies	The gem's runtime and development dependencies.
required_ruby_version	The minimum required Ruby version to use the gem.
required_rubygems_version	The minimum required RubyGems version to use the gem.
executables	Executable files that are part of the gem.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"