#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --no-color      Print all output without color
# @flag -r --retry      Specify the number of times you wish to attempt network commands
# @flag -V --verbose    Print out additional logging information

# {{ bundle install
# @cmd Install the gems specified by the Gemfile or Gemfile.lock
# @option --binstubs <directory>         Binstubs are scripts that wrap around executables.
# @flag --clean                          On finishing the installation Bundler is going to remove any gems not present in the current Gemfile(5).
# @flag --deployment                     In deployment mode, Bundler will ´roll-out´ the bundle for production or CI use.
# @flag --redownload                     Force download every gem, even if the required versions are already available locally.
# @flag --frozen                         Do not allow the Gemfile.lock to be updated after this install.
# @flag --full-index                     Bundler will not call Rubygems´ API endpoint (default) but download and cache a (currently big) index file of all gems.
# @option --gemfile <gemfile>            The location of the Gemfile(5) which Bundler should use.
# @option -j --jobs <number>             The maximum number of parallel download and install jobs.
# @flag --local                          Do not attempt to connect to rubygems.org.
# @flag --prefer-local                   Force using locally installed gems, or gems already present in Rubygems´ cache or in vendor/cache, when resolving, even if newer versions are available remotely.
# @flag --no-cache                       Do not update the cache in vendor/cache with the newly bundled gems.
# @flag --no-prune                       Don´t remove stale gems from the cache when the installation finishes.
# @option --path <path>                  The location to install the specified gems to.
# @flag --quiet                          Do not print progress information to the standard output.
# @option --retry <number>               Retry failed network or git requests for number times.
# @option --shebang <ruby-executable>    Uses the specified ruby executable (usually ruby) to execute the scripts created with --binstubs.
# @option --standalone <list>            Makes a bundle that can work without depending on Rubygems or Bundler at runtime.
# @flag --system                         Installs the gems specified in the bundle to the system´s Rubygems location.
# @option --trust-policy <policy>        Apply the Rubygems security policy policy, where policy is one of HighSecurity, MediumSecurity, LowSecurity, AlmostNoSecurity, or NoSecurity.
# @option --with <list>                  A space-separated list of groups referencing gems to install.
# @option --without <list>               A space-separated list of groups referencing gems to skip during installation.
install() {
    :;
}
# }} bundle install

# {{ bundle update
# @cmd Update dependencies to their latest versions
# @flag --all                   Update all gems specified in Gemfile.
# @option -g --group <name>     Only update the gems in the specified group.
# @option --source <name>       The name of a :git or :path source used in the Gemfile(5).
# @flag --local                 Do not attempt to fetch gems remotely and use the gem cache instead.
# @flag --ruby                  Update the locked version of Ruby to the current version of Ruby.
# @flag --bundler               Update the locked version of bundler to the invoked bundler version.
# @flag --full-index            Fall back to using the single-file index of all gems.
# @option -j --jobs <number>    Specify the number of jobs to run in parallel.
# @option --retry <number>      Retry failed network or git requests for number times.
# @flag --quiet                 Only output warnings and errors.
# @flag --redownload            Force downloading every gem.
# @flag --patch                 Prefer updating only to next patch version.
# @flag --minor                 Prefer updating only to next minor version.
# @flag --major                 Prefer updating to next major version (default).
# @flag --strict                Do not allow any gem to be updated past latest --patch | --minor | --major.
# @flag --conservative          Use bundle install conservative update behavior and do not allow indirect dependencies to be updated.
# @arg gem*[`_choice_dependency`]
update() {
    :;
}
# }} bundle update

# {{ bundle cache
# @cmd Package the .gem files required by your application into the vendor/cache directory (aliases: bundle package, bundle pack)
# @alias package,pack
cache() {
    :;
}
# }} bundle cache

# {{ bundle exec
# @cmd Execute a script in the current bundle
# @flag --keep-file-descriptors    Passes all file descriptors to the new processes.
exec() {
    :;
}
# }} bundle exec

# {{ bundle config
# @cmd Specify and read configuration options for Bundler
config() {
    :;
}

# {{{ bundle config list
# @cmd List config
# @flag --global
# @flag --local
config::list() {
    :;
}
# }}} bundle config list

# {{{ bundle config get
# @cmd Get a config item
# @flag --global
# @flag --local
# @arg name!
config::get() {
    :;
}
# }}} bundle config get

# {{{ bundle config set
# @cmd Set a config item
# @flag --global
# @flag --local
# @arg name!
# @arg value!
config::set() {
    :;
}
# }}} bundle config set

# {{{ bundle config unset
# @cmd Unset a config item
# @flag --global
# @flag --local
# @arg name!
config::unset() {
    :;
}
# }}} bundle config unset
# }} bundle config

# {{ bundle add
# @cmd Add the named gem to the Gemfile and run bundle install
# @option -v --version <value>    Specify version requirements(s) for the added gem.
# @option -g --group <value>      Specify the group(s) for the added gem.
# @option -s --source <value>     Specify the source for the added gem.
# @flag -r --require              Adds require path to gem.
# @option --path <path>           Specify the file system path for the added gem.
# @option --git <value>           Specify the git source for the added gem.
# @option --github <value>        Specify the github source for the added gem.
# @option --branch <value>        Specify the git branch for the added gem.
# @option --ref <value>           Specify the git ref for the added gem.
# @flag --skip-install            Adds the gem to the Gemfile but does not install it.
# @flag --optimistic              Adds optimistic declaration of version.
# @flag --strict                  Adds strict declaration of version.
# @arg gem[`_choice_package`]
add() {
    :;
}
# }} bundle add

# {{ bundle binstubs
# @cmd Generate binstubs for executables in a gem
# @flag --force                Overwrite existing binstubs if they exist.
# @option --path <path>        The location to install the specified binstubs to.
# @flag --standalone           Makes binstubs that can work without depending on Rubygems or Bundler at runtime.
# @option --shebang <value>    Specify a different shebang executable name than the default (default ´ruby´)
# @flag --all                  Create binstubs for all gems in the bundle.
# @arg gem[`_choice_package`]
binstubs() {
    :;
}
# }} bundle binstubs

# {{ bundle check
# @cmd Determine whether the requirements for your application are installed and available to Bundler
# @flag --dry-run             Locks the [Gemfile(5)][Gemfile(5)] before running the command.
# @option --gemfile <file>    Use the specified gemfile instead of the [Gemfile(5)][Gemfile(5)].
# @option --path <path>       Specify a different path than the system default ($BUNDLE_PATH or $GEM_HOME).
check() {
    :;
}
# }} bundle check

# {{ bundle show
# @cmd Show the source location of a particular gem in the bundle
# @flag --paths    List the paths of all gems that are required by your [Gemfile(5)][Gemfile(5)], sorted by gem name.
show() {
    :;
}
# }} bundle show

# {{ bundle outdated
# @cmd Show all of the outdated gems in the current bundle
# @flag --local               Do not attempt to fetch gems remotely and use the gem cache instead.
# @flag --pre                 Check for newer pre-release gems.
# @option --source <value>    Check against a specific source.
# @flag --strict              Only list newer versions allowed by your Gemfile requirements, also respecting conservative update flags (--patch, --minor, --major).
# @flag --parseable           Use minimal formatting for more parseable output.
# @flag --porcelain           Use minimal formatting for more parseable output.
# @flag --group               List gems from a specific group.
# @flag --groups              List gems organized by groups.
# @flag --minor               Prefer updating only to next minor version.
# @flag --major               Prefer updating to next major version (default).
# @flag --patch               Prefer updating only to next patch version.
# @flag --filter-major        Only list major newer versions.
# @flag --filter-minor        Only list minor newer versions.
# @flag --filter-patch        Only list patch newer versions.
# @flag --only-explicit       Only list gems specified in your Gemfile, not their dependencies.
# @arg gem*[`_choice_dependency`]
outdated() {
    :;
}
# }} bundle outdated

# {{ bundle console
# @cmd Start an IRB session in the current bundle
console() {
    :;
}
# }} bundle console

# {{ bundle open
# @cmd Open an installed gem in the editor
# @option --path <path>    Specify GEM source relative path to open.
# @arg gem*[`_choice_dependency`]
open() {
    :;
}
# }} bundle open

# {{ bundle lock
# @cmd Generate a lockfile for your dependencies
# @option --update <*gems>     Ignores the existing lockfile.
# @flag --local                Do not attempt to connect to rubygems.org.
# @flag --print                Prints the lockfile to STDOUT instead of writing to the file system.
# @option --lockfile <path>    The path where the lockfile should be written to.
# @flag --full-index           Fall back to using the single-file index of all gems.
# @flag --add-platform         Add a new platform to the lockfile, re-resolving for the addition of that platform.
# @flag --remove-platform      Remove a platform from the lockfile.
# @flag --patch                If updating, prefer updating only to next patch version.
# @flag --minor                If updating, prefer updating only to next minor version.
# @flag --major                If updating, prefer updating to next major version (default).
# @flag --strict               If updating, do not allow any gem to be updated past latest --patch | --minor | --major.
# @flag --conservative         If updating, use bundle install conservative update behavior and do not allow shared dependencies to be updated.
lock() {
    :;
}
# }} bundle lock

# {{ bundle viz
# @cmd Generate a visual representation of your dependencies
# @option -f --file <value>        The name to use for the generated file.
# @option -F --format <value>      This is output format option.
# @flag -R --requirements          Set to show the version of each required dependency.
# @flag -v --version               Set to show each gem version.
# @option -W --without* <value>    Exclude gems that are part of the specified named group.
viz() {
    :;
}
# }} bundle viz

# {{ bundle init
# @cmd Generate a simple Gemfile, placed in the current directory
# @option --gemspec <file:.gemspec>    Use the specified .gemspec to create the [Gemfile(5)][Gemfile(5)]
# @option --gemfile <file>             Use the specified name for the gemfile instead of Gemfile
init() {
    :;
}
# }} bundle init

# {{ bundle gem
# @cmd Create a simple gem, suitable for development with Bundler
# @flag -b                         Specify that Bundler should create a binary executable (as exe/GEM_NAME) in the generated rubygem project.
# @flag --exe                      Specify that Bundler should create a binary executable (as exe/GEM_NAME) in the generated rubygem project.
# @flag --bin                      Specify that Bundler should create a binary executable (as exe/GEM_NAME) in the generated rubygem project.
# @flag --no-exe                   Do not create a binary (overrides --exe specified in the global config).
# @flag --coc                      Add a CODE_OF_CONDUCT.md file to the root of the generated project.
# @flag --no-coc                   Do not create a CODE_OF_CONDUCT.md (overrides --coc specified in the global config).
# @option --ext <rust>             Add boilerplate for C or Rust (currently magnus https://docs.rs/magnus based) extension code to the generated project.
# @flag --no-ext                   Do not add extension code (overrides --ext specified in the global config).
# @flag --mit                      Add an MIT license to a LICENSE.txt file in the root of the generated project.
# @flag --no-mit                   Do not create a LICENSE.txt (overrides --mit specified in the global config).
# @option -t --test <test-unit>    Specify the test framework that Bundler should use when generating the project.
# @option --ci <circle>            Specify the continuous integration service that Bundler should use when generating the project.
# @option --linter <standard>      Specify the linter and code formatter that Bundler should add to the project´s development dependencies.
# @option -e --edit <EDITOR>       Open the resulting GEM_NAME.gemspec in EDITOR, or the default editor if not specified.
gem() {
    :;
}
# }} bundle gem

# {{ bundle platform
# @cmd Display platform compatibility information
# @flag --ruby    It will display the ruby directive information, so you don´t have to parse it from the Gemfile(5).
platform() {
    :;
}
# }} bundle platform

# {{ bundle clean
# @cmd Clean up unused gems in your Bundler directory
# @flag --dry-run    Print the changes, but do not clean the unused gems.
# @flag --force      Forces cleaning up unused gems even if Bundler is configured to use globally installed gems.
clean() {
    :;
}
# }} bundle clean

# {{ bundle doctor
# @cmd Display warnings about common problems
# @flag --quiet                  Only output warnings and errors.
# @option --gemfile <gemfile>    The location of the Gemfile(5) which Bundler should use.
doctor() {
    :;
}
# }} bundle doctor

# {{ bundle remove
# @cmd Removes gems from the Gemfile
# @flag --install    Runs bundle install after the given gems have been removed from the Gemfile, which ensures that both the lockfile and the installed gems on disk are also updated to remove the given gem(s).
# @arg gem*[`_choice_dependency`]
remove() {
    :;
}
# }} bundle remove

# {{ bundle plugin
# @cmd Manage Bundler plugins
plugin() {
    :;
}

# {{{ bundle plugin install
# @cmd Install plugins.
# @option --source <value>      URL of the RubyGems source to fetch the plugin from
# @option --version <<value     The version of the plugin to fetch #>
# @option --git <value>         URL of the git repo to fetch from
# @option --local-git <path>    Path of the local git repo to fetch from
# @option --branch <value>      The git branch to checkout
# @option --ref <value>         The git revision to check out
plugin::install() {
    :;
}
# }}} bundle plugin install

# {{{ bundle plugin uninstall
# @cmd Uninstall given list of plugins.
# @flag --all    Uninstall all the installed plugins.
# @arg plugin*[`_choice_plugin`]
plugin::uninstall() {
    :;
}
# }}} bundle plugin uninstall

# {{{ bundle plugin list
# @cmd List the installed plugins and available commands.
plugin::list() {
    :;
}
# }}} bundle plugin list
# }} bundle plugin

# {{ bundle version
# @cmd Prints Bundler version information
version() {
    :;
}
# }} bundle version

_choice_dependency() {
    bundle list --name-only
}

_choice_package() {
    if [[ "${#ARGC_CWORD}" -lt 2 ]]; then
        return
    fi
    gem search "^$ARGC_CWORD" | sed -n 's/^\(\S\+\) (\(.*\))$/\1\t\2/p'
}

_choice_plugin() {
    bundle plugin list | sed -n 's/^\([a-z]\S\+\).*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"