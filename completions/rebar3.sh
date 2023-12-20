#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print this help.
# @flag -v --version    Show version information.

# {{ rebar3 as
# @cmd Higher order provider for running multiple tasks in a sequence as a certain profiles.
as() {
    :;
}
# }} rebar3 as

# {{ rebar3 clean
# @cmd Remove compiled beam files from apps.
# @flag -a --all        Clean all apps include deps
# @flag --apps          Clean a specific list of apps or dependencies
# @flag -p --profile    Clean under profile.
clean() {
    :;
}
# }} rebar3 clean

# {{ rebar3 compile
# @cmd Compile apps .app.src and .erl files.
# @flag -d --deps_only    Only compile dependencies, no project apps will be built.
compile() {
    :;
}
# }} rebar3 compile

# {{ rebar3 cover
# @cmd Perform coverage analysis.
# @flag -r --reset           Reset all coverdata.
# @flag -v --verbose         Print coverage analysis.
# @flag -m --min_coverage    Mandate a coverage percentage required to succeed (0..100)
cover() {
    :;
}
# }} rebar3 cover

# {{ rebar3 ct
# @cmd Run Common Tests.
# @flag --dir                        List of additional directories containing test suites
# @flag --suite                      List of test suites to run
# @flag --group                      List of test groups to run
# @flag --case                       List of test cases to run
# @flag --label                      Test label
# @flag --config                     List of config files
# @flag --spec                       List of test specifications
# @flag --join_specs                 Merge all test specifications and perform a single test run
# @flag --allow_user_terms           Allow user defined config values in config files
# @flag --logdir                     Log folder
# @flag --logopts                    Options for common test logging
# @flag --verbosity                  Verbosity
# @flag -c --cover                   Generate cover data [default: false]
# @flag --cover_export_name          Base name of the coverdata file to write
# @flag --repeat                     How often to repeat tests
# @flag --duration                   Max runtime (format: HHMMSS)
# @flag --until                      Run until (format: HHMMSS)
# @flag --force_stop                 Force stop on test timeout
# @flag --basic_html                 Show basic HTML
# @flag --stylesheet                 CSS stylesheet to apply to html output
# @flag --decrypt_key                Path to key for decrypting config
# @flag --decrypt_file               Path to file containing key for decrypting config
# @flag --abort_if_missing_suites    Abort if suites are missing [default: true]
# @flag --multiply_timetraps
# @flag --scale_timetraps            Scale timetraps
# @flag --create_priv_dir            Create priv dir
# @flag --include                    Directories containing additional include files
# @flag --readable                   Shows test case names and only displays logs to shell on failures
# @flag -v --verbose                 Verbose output
# @flag --name                       Gives a long name to the node
# @flag --sname                      Gives a short name to the node
# @flag --setcookie                  Sets the cookie if the node is distributed
# @flag --sys_config                 List of application config files
# @flag --compile_only               Compile modules in the project with the test configuration but do not run the tests
# @flag --retry                      Experimental feature.
# @flag --fail_fast                  Experimental feature.
ct() {
    :;
}
# }} rebar3 ct

# {{ rebar3 deps
# @cmd List dependencies
deps() {
    :;
}
# }} rebar3 deps

# {{ rebar3 dialyzer
# @cmd Run the Dialyzer analyzer on the project.
# @flag -u --update-plt        Enable updating the PLT.
# @flag -s --succ-typings      Enable success typing analysis.
# @flag --base-plt-location    The location of base PLT file, defaults to $HOME/.cache/rebar3
# @flag --plt-location         The location of the PLT file, defaults to the profile's base directory
# @flag --plt-prefix           The prefix to the PLT file, defaults to "rebar3"
# @flag -a --app               Perform success typing analysis of a single application
# @flag --base-plt-prefix      The prefix to the base PLT file, defaults to "rebar3"
# @flag --statistics           Print information about the progress of execution.
dialyzer() {
    :;
}
# }} rebar3 dialyzer

# {{ rebar3 do
# @cmd Higher order provider for running multiple tasks in a sequence.
do_() {
    :;
}
# }} rebar3 do

# {{ rebar3 edoc
# @cmd Generate documentation using edoc.
edoc() {
    :;
}
# }} rebar3 edoc

# {{ rebar3 escriptize
# @cmd Generate escript archive.
# @flag -a --main-app    Specify the name of the application to build an escript for.
escriptize() {
    :;
}
# }} rebar3 escriptize

# {{ rebar3 eunit
# @cmd Run EUnit Tests.
# @flag --app                  Comma separated list of application test suites to run.
# @flag --application          Comma separated list of application test suites to run.
# @flag -c --cover             Generate cover data.
# @flag --cover_export_name    Base name of the coverdata file to write
# @flag -p --profile           Show the slowest tests.
# @flag -d --dir               Comma separated list of dirs to load tests from.
# @flag -f --file              Comma separated list of files to load tests from.
# @flag -m --module            Comma separated list of modules to load tests from.
# @flag -t --test              Comma separated list of tests to run.
# @flag -s --suite             Comma separated list of modules to load tests from.
# @flag -g --generator         Comma separated list of generators to load tests from.
# @flag -v --verbose           Verbose output.
# @flag --name                 Gives a long name to the node
# @flag --sname                Gives a short name to the node
# @flag --sys_config           List of application config files
# @flag --setcookie            Sets the cookie if the node is distributed
eunit() {
    :;
}
# }} rebar3 eunit

# {{ rebar3 get-deps
# @cmd Fetch dependencies.
get-deps() {
    :;
}
# }} rebar3 get-deps

# {{ rebar3 new
# @cmd Create new project from templates.
# @flag -f --force    overwrite existing files
new() {
    :;
}
# }} rebar3 new

# {{ rebar3 path
# @cmd Print paths to build dirs in current profile.
# @flag --app             Comma separated list of applications to return paths for.
# @flag --base            Return the `base' path of the current profile.
# @flag --bin             Return the `bin' path of the current profile.
# @flag --ebin            Return all `ebin' paths of the current profile's applications.
# @flag --lib             Return the `lib' path of the current profile.
# @flag --priv            Return the `priv' path of the current profile's applications.
# @flag -s --separator    In case of multiple return paths, the separator character to use to join them.
# @flag --src             Return the `src' path of the current profile's applications.
# @flag --rel             Return the `rel' path of the current profile.
path() {
    :;
}
# }} rebar3 path

# {{ rebar3 pkgs
# @cmd List information for a package.
pkgs() {
    :;
}
# }} rebar3 pkgs

# {{ rebar3 release
# @cmd Build release of project.
# @flag --all                If true runs the command against all configured releases
# @flag -n --relname         Specify the name for the release that will be generated
# @flag -v --relvsn          Specify the version for the release
# @flag -u --upfrom          Only valid with relup target, specify the release to upgrade from
# @flag -o --output-dir      The output directory for the release.
# @flag -h --help            Print usage
# @flag -l --lib-dir         Additional dir that should be searched for OTP Apps
# @flag -d --dev-mode        Symlink the applications and configuration into the release instead of copying
# @flag -i --include-erts    If true include a copy of erts used to build with, if a path include erts at that path.
# @flag -a --override        Provide an app name and a directory to override in the form <appname>:<app directory>
# @flag -c --config          The path to a config file [default: ]
# @flag --overlay_vars       Path to a file of overlay variables
# @flag --vm_args            Path to a file to use for vm.args
# @flag --sys_config         Path to a file to use for sys.config
# @flag --system_libs        Boolean or path to dir of Erlang system libs
# @flag --version            Print relx version
# @flag -r --root            The project root directory
# @flag -m --relnames        Like --all, but only build the releases in the list, e.g. --relnames rel1,rel2
release() {
    :;
}
# }} rebar3 release

# {{ rebar3 relup
# @cmd Create relup of releases.
# @flag --all                If true runs the command against all configured releases
# @flag -n --relname         Specify the name for the release that will be generated
# @flag -v --relvsn          Specify the version for the release
# @flag -u --upfrom          Only valid with relup target, specify the release to upgrade from
# @flag -o --output-dir      The output directory for the release.
# @flag -h --help            Print usage
# @flag -l --lib-dir         Additional dir that should be searched for OTP Apps
# @flag -d --dev-mode        Symlink the applications and configuration into the release instead of copying
# @flag -i --include-erts    If true include a copy of erts used to build with, if a path include erts at that path.
# @flag -a --override        Provide an app name and a directory to override in the form <appname>:<app directory>
# @flag -c --config          The path to a config file [default: ]
# @flag --overlay_vars       Path to a file of overlay variables
# @flag --vm_args            Path to a file to use for vm.args
# @flag --sys_config         Path to a file to use for sys.config
# @flag --system_libs        Boolean or path to dir of Erlang system libs
# @flag --version            Print relx version
# @flag -r --root            The project root directory
# @flag -m --relnames        Like --all, but only build the releases in the list, e.g. --relnames rel1,rel2
relup() {
    :;
}
# }} rebar3 relup

# {{ rebar3 report
# @cmd Provide a crash report to be sent to the rebar3 issues page.
report() {
    :;
}
# }} rebar3 report

# {{ rebar3 shell
# @cmd Run shell with project apps and deps in path.
# @flag --config           Path to the config file to use.
# @flag --name             Gives a long name to the node.
# @flag --sname            Gives a short name to the node.
# @flag --setcookie        Sets the cookie if the node is distributed.
# @flag --script           Path to an escript file to run before starting the project apps.
# @flag --apps             A list of apps to boot before starting the shell.
# @flag -r --relname       Name of the release to use as a template for the shell session
# @flag -v --relvsn        Version of the release to use for the shell session
# @flag --start-clean      Cancel any applications in the 'apps' list or release.
# @flag --env-file         Path to file of os environment variables to setup before expanding vars in config files.
# @flag --user_drv_args    Arguments passed to user_drv start function for creating custom shells.
# @flag --eval             Erlang term(s) to execute after the apps have been started, but before the shell is presented to the user.
shell() {
    :;
}
# }} rebar3 shell

# {{ rebar3 tar
# @cmd Tar archive of release built of project.
# @flag --all                If true runs the command against all configured releases
# @flag -n --relname         Specify the name for the release that will be generated
# @flag -v --relvsn          Specify the version for the release
# @flag -u --upfrom          Only valid with relup target, specify the release to upgrade from
# @flag -o --output-dir      The output directory for the release.
# @flag -h --help            Print usage
# @flag -l --lib-dir         Additional dir that should be searched for OTP Apps
# @flag -d --dev-mode        Symlink the applications and configuration into the release instead of copying
# @flag -i --include-erts    If true include a copy of erts used to build with, if a path include erts at that path.
# @flag -a --override        Provide an app name and a directory to override in the form <appname>:<app directory>
# @flag -c --config          The path to a config file [default: ]
# @flag --overlay_vars       Path to a file of overlay variables
# @flag --vm_args            Path to a file to use for vm.args
# @flag --sys_config         Path to a file to use for sys.config
# @flag --system_libs        Boolean or path to dir of Erlang system libs
# @flag --version            Print relx version
# @flag -r --root            The project root directory
# @flag -m --relnames        Like --all, but only build the releases in the list, e.g. --relnames rel1,rel2
tar() {
    :;
}
# }} rebar3 tar

# {{ rebar3 tree
# @cmd Print dependency tree.
# @flag -v --verbose    Print repo and branch/tag/ref for git and hg deps
tree() {
    :;
}
# }} rebar3 tree

# {{ rebar3 unlock
# @cmd Unlock dependencies.
# @flag -a --all    Unlock all dependencies and remove the lock file.
unlock() {
    :;
}
# }} rebar3 unlock

# {{ rebar3 update
# @cmd Update package index.
update() {
    :;
}
# }} rebar3 update

# {{ rebar3 upgrade
# @cmd Upgrade dependencies.
# @flag -a --all    Upgrade all dependencies.
upgrade() {
    :;
}
# }} rebar3 upgrade

# {{ rebar3 version
# @cmd Print version for rebar and current Erlang.
version() {
    :;
}
# }} rebar3 version

# {{ rebar3 xref
# @cmd Run cross reference analysis.
xref() {
    :;
}
# }} rebar3 xref

# {{ rebar3 experimental
# @cmd
experimental() {
    :;
}

# {{{ rebar3 experimental vendor
# @cmd Turns dependencies into top-level apps
experimental::vendor() {
    :;
}
# }}} rebar3 experimental vendor
# }} rebar3 experimental

# {{ rebar3 local
# @cmd
local() {
    :;
}

# {{{ rebar3 local install
# @cmd Extract libs from rebar3 escript along with a run script.
local::install() {
    :;
}
# }}} rebar3 local install

# {{{ rebar3 local upgrade
# @cmd Download latest rebar3 escript and extract.
local::upgrade() {
    :;
}
# }}} rebar3 local upgrade
# }} rebar3 local

# {{ rebar3 plugins
# @cmd
plugins() {
    :;
}

# {{{ rebar3 plugins list
# @cmd List local and global plugins for this project
plugins::list() {
    :;
}
# }}} rebar3 plugins list

# {{{ rebar3 plugins upgrade
# @cmd Upgrade plugins
plugins::upgrade() {
    :;
}
# }}} rebar3 plugins upgrade
# }} rebar3 plugins

command eval "$(argc --argc-eval "$0" "$@")"