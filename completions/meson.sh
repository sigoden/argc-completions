#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    show this help message and exit
# @arg setup-configure-dist-install-introspect-init-test-wrap-subprojects-rewrite-compile-devenv-env2mfile-help* <setup,configure,dist,install,introspect,init,test,wrap,subprojects,rewrite,compile,devenv,env2mfile,help>

# {{ meson setup
# @cmd Configure the project
# @flag -h --help                                  show this help message and exit
# @option --prefix                                 Installation prefix (default: /usr/local).
# @option --bindir                                 Executable directory (default: bin).
# @option --datadir                                Data file directory (default: share).
# @option --includedir                             Header file directory (default: include).
# @option --infodir                                Info page directory (default: share/info).
# @option --libdir                                 Library directory (default: lib/x86_64-linux-gnu).
# @option --licensedir                             Licenses directory (default: ).
# @option --libexecdir                             Library executable directory (default: libexec).
# @option --localedir                              Locale data directory (default: share/locale).
# @option --localstatedir                          Localstate data directory (default: var).
# @option --mandir                                 Manual page directory (default: share/man).
# @option --sbindir                                System executable directory (default: sbin).
# @option --sharedstatedir                         Architecture-independent data directory (default: com).
# @option --sysconfdir                             Sysconf data directory (default: etc).
# @option --auto-features[enabled|disabled|auto]   Override value of all 'auto' features (default: auto).
# @option --backend[ninja|vs|vs2010|vs2012|vs2013|vs2015|vs2017|vs2019|vs2022|xcode|none]  Backend to use (default: ninja).
# @option --genvslite <vs2022>                     Setup multiple buildtype-suffixed ninja-backend build directories, and a [builddir]_vs containing a Visual Studio meta-backend with multiple configurations that calls into them (default: vs2022).
# @option --buildtype[plain|debug|debugoptimized|release|minsize|custom]  Build type to use (default: debug).
# @flag --debug                                    Enable debug symbols and other information
# @option --default-library[shared|static|both]    Default library type (default: shared).
# @flag --errorlogs                                Whether to print the logs from failing tests
# @option --install-umask <INSTALL_UMASK>          Default umask to apply on permissions of installed files (default: 022).
# @option --layout[mirror|flat]                    Build directory layout (default: mirror).
# @option --optimization[plain|0|g|1|2|3|s]        Optimization level (default: 0).
# @flag --prefer-static                            Whether to try static linking before shared linking
# @flag --stdsplit                                 Split stdout and stderr in test logs
# @flag --strip                                    Strip targets on install
# @option --unity[on|off|subprojects]              Unity build (default: off).
# @option --unity-size[2|None|4] <UNITY_SIZE>      Unity block size (default:).
# @option --warnlevel[0|1|2|3|everything]          Compiler warning level to use (default: 1).
# @flag --werror                                   Treat warnings as errors
# @option --wrap-mode[default|nofallback|nodownload|forcefallback|nopromote]  Wrap mode (default: default).
# @option --force-fallback-for <FORCE_FALLBACK_FOR>  Force fallback for those subprojects (default: []).
# @flag --vsenv                                    Activate Visual Studio environment
# @flag --pkgconfig.relocatable                    Generate pkgconfig files as relocatable
# @option --python.bytecompile                     Whether to compile bytecode (default: (-1, 2, 0)).
# @option --python.install-env[auto|prefix|system|venv]  Which python environment to install to (default: prefix).
# @option --python.platlibdir                      Directory for site-specific, platform-specific files (default: ).
# @option --python.purelibdir                      Directory for site-specific, non-platform-specific files (default: ).
# @flag --python.allow-limited-api                 Whether to allow use of the Python Limited API
# @option --pkg-config-path <PKG_CONFIG_PATH>      List of additional paths for pkg-config to search (default: []).
# @option --build.pkg-config-path <BUILD.PKG_CONFIG_PATH>  List of additional paths for pkg-config to search (default: []).
# @option --cmake-prefix-path <CMAKE_PREFIX_PATH>  List of additional prefixes for cmake to search (default: []).
# @option --build.cmake-prefix-path <BUILD.CMAKE_PREFIX_PATH>  List of additional prefixes for cmake to search (default: []).
# @option -D <option>                              Set the value of an option, can be used several times to set multiple options.
# @option --native-file <NATIVE_FILE>              File containing overrides for native compilation environment.
# @option --cross-file <CROSS_FILE>                File describing cross compilation environment.
# @flag -v --version                               show program's version number and exit
# @flag --fatal-meson-warnings                     Make all Meson warnings fatal
# @flag --reconfigure                              Set options and reconfigure the project.
# @flag --wipe                                     Wipe build directory and reconfigure using previous command line options.
# @flag --clearcache                               Clear cached state (e.g. found dependencies).
# @arg builddir
# @arg sourcedir
setup() {
    :;
}
# }} meson setup

# {{ meson configure
# @cmd Change project options
# @flag -h --help                                  show this help message and exit
# @option --prefix                                 Installation prefix (default: /usr/local).
# @option --bindir                                 Executable directory (default: bin).
# @option --datadir                                Data file directory (default: share).
# @option --includedir                             Header file directory (default: include).
# @option --infodir                                Info page directory (default: share/info).
# @option --libdir                                 Library directory (default: lib/x86_64-linux-gnu).
# @option --licensedir                             Licenses directory (default: ).
# @option --libexecdir                             Library executable directory (default: libexec).
# @option --localedir                              Locale data directory (default: share/locale).
# @option --localstatedir                          Localstate data directory (default: var).
# @option --mandir                                 Manual page directory (default: share/man).
# @option --sbindir                                System executable directory (default: sbin).
# @option --sharedstatedir                         Architecture-independent data directory (default: com).
# @option --sysconfdir                             Sysconf data directory (default: etc).
# @option --auto-features[enabled|disabled|auto]   Override value of all 'auto' features (default: auto).
# @option --backend[ninja|vs|vs2010|vs2012|vs2013|vs2015|vs2017|vs2019|vs2022|xcode|none]  Backend to use (default: ninja).
# @option --genvslite <vs2022>                     Setup multiple buildtype-suffixed ninja-backend build directories, and a [builddir]_vs containing a Visual Studio meta-backend with multiple configurations that calls into them (default: vs2022).
# @option --buildtype[plain|debug|debugoptimized|release|minsize|custom]  Build type to use (default: debug).
# @flag --debug                                    Enable debug symbols and other information
# @option --default-library[shared|static|both]    Default library type (default: shared).
# @flag --errorlogs                                Whether to print the logs from failing tests
# @option --install-umask <INSTALL_UMASK>          Default umask to apply on permissions of installed files (default: 022).
# @option --layout[mirror|flat]                    Build directory layout (default: mirror).
# @option --optimization[plain|0|g|1|2|3|s]        Optimization level (default: 0).
# @flag --prefer-static                            Whether to try static linking before shared linking
# @flag --stdsplit                                 Split stdout and stderr in test logs
# @flag --strip                                    Strip targets on install
# @option --unity[on|off|subprojects]              Unity build (default: off).
# @option --unity-size[2|None|4] <UNITY_SIZE>      Unity block size (default:).
# @option --warnlevel[0|1|2|3|everything]          Compiler warning level to use (default: 1).
# @flag --werror                                   Treat warnings as errors
# @option --wrap-mode[default|nofallback|nodownload|forcefallback|nopromote]  Wrap mode (default: default).
# @option --force-fallback-for <FORCE_FALLBACK_FOR>  Force fallback for those subprojects (default: []).
# @flag --vsenv                                    Activate Visual Studio environment
# @flag --pkgconfig.relocatable                    Generate pkgconfig files as relocatable
# @option --python.bytecompile                     Whether to compile bytecode (default: (-1, 2, 0)).
# @option --python.install-env[auto|prefix|system|venv]  Which python environment to install to (default: prefix).
# @option --python.platlibdir                      Directory for site-specific, platform-specific files (default: ).
# @option --python.purelibdir                      Directory for site-specific, non-platform-specific files (default: ).
# @flag --python.allow-limited-api                 Whether to allow use of the Python Limited API
# @option --pkg-config-path <PKG_CONFIG_PATH>      List of additional paths for pkg-config to search (default: []).
# @option --build.pkg-config-path <BUILD.PKG_CONFIG_PATH>  List of additional paths for pkg-config to search (default: []).
# @option --cmake-prefix-path <CMAKE_PREFIX_PATH>  List of additional prefixes for cmake to search (default: []).
# @option --build.cmake-prefix-path <BUILD.CMAKE_PREFIX_PATH>  List of additional prefixes for cmake to search (default: []).
# @option -D <option>                              Set the value of an option, can be used several times to set multiple options.
# @flag --clearcache                               Clear cached state (e.g. found dependencies)
# @flag --no-pager                                 Do not redirect output to a pager
# @arg builddir
configure() {
    :;
}
# }} meson configure

# {{ meson dist
# @cmd Generate release archive
# @flag -h --help                show this help message and exit
# @option -C <WD>                directory to cd into before running
# @flag --allow-dirty            Allow even when repository contains uncommitted changes.
# @option --formats              Comma separated list of archive types to create.
# @flag --include-subprojects    Include source code of subprojects that have been used for the build.
# @flag --no-tests               Do not build and test generated packages.
dist() {
    :;
}
# }} meson dist

# {{ meson install
# @cmd Install the project
# @flag -h --help         show this help message and exit
# @option -C <WD>         directory to cd into before running
# @flag --no-rebuild      Do not rebuild before installing.
# @flag --only-changed    Only overwrite files that are older than the copied file.
# @flag --quiet           Do not print every file that was installed.
# @option --destdir       Sets or overrides DESTDIR environment.
# @flag -n --dry-run      Doesn't actually install, but print logs.
# @option --skip-subprojects*[`_choice_subproject`] <SKIP_SUBPROJECTS>  Do not install files from given subprojects.
# @option --tags          Install only targets having one of the given tags.
# @flag --strip           Strip targets even if strip option was not set during configure.
install() {
    :;
}
# }} meson install

# {{ meson introspect
# @cmd Introspect project
# @flag -h --help                   show this help message and exit
# @flag --ast                       Dump the AST of the meson file.
# @flag --benchmarks                List all benchmarks.
# @flag --buildoptions              List all build options.
# @flag --buildsystem-files         List files that make up the build system.
# @flag --compilers                 List used compilers.
# @flag --dependencies              List external dependencies.
# @flag --scan-dependencies         Scan for dependencies used in the meson.build file.
# @flag --installed                 List all installed files and directories.
# @flag --install-plan              List all installed files and directories with their details.
# @flag --machines                  Information about host, build, and target machines.
# @flag --projectinfo               Information about projects.
# @flag --targets                   List top level targets.
# @flag --tests                     List all unit tests.
# @option --backend[ninja|none|vs|vs2010|vs2012|vs2013|vs2015|vs2017|vs2019|vs2022|xcode]  The backend to use for the --buildoptions introspection.
# @flag -a --all                    Print all available information.
# @flag -i --indent                 Enable pretty printed JSON.
# @flag -f --force-object-output    Always use the new JSON format for multiple entries (even for 0 and 1 introspection commands)
# @arg builddir                     The build directory
introspect() {
    :;
}
# }} meson introspect

# {{ meson init
# @cmd Create a new project
# @flag -h --help                       show this help message and exit
# @option -C <WD>                       directory to cd into before running
# @option -n --name                     project name.
# @option -e --executable               executable name.
# @option -d --deps                     dependencies, comma-separated
# @option -l --language[c|cpp|cs|cuda|d|fortran|java|objc|objcpp|rust|vala]  project language.
# @flag -b --build                      build after generation
# @option --builddir                    directory for build
# @flag -f --force                      force overwrite of existing files and directories.
# @option --type[executable|library]    project type.
# @option --version                     project version.
# @arg sourcefile                       source files.
init() {
    :;
}
# }} meson init

# {{ meson test
# @cmd Run tests
# @flag -h --help                               show this help message and exit
# @option --maxfail                             Number of failing tests before aborting the test run.
# @option --repeat                              Number of times to run the tests.
# @flag --no-rebuild                            Do not rebuild before running tests.
# @flag --gdb                                   Run test under gdb.
# @option --gdb-path <GDB_PATH>                 Path to the gdb binary (default: gdb).
# @flag --list                                  List available tests.
# @option --wrapper                             wrapper to run tests with (e.g. Valgrind)
# @option -C <WD>                               directory to cd into before running
# @option --suite[`_choice_test_suit`]          Only run tests belonging to the given suite.
# @option --no-suite[`_choice_test_suit`] <SUITE>  Do not run tests belonging to the given suite.
# @flag --no-stdsplit                           Do not split stderr and stdout in test logs.
# @flag --print-errorlogs                       Whether to print failing tests' logs.
# @flag --benchmark                             Run benchmarks instead of tests.
# @option --logbase                             Base name for log file.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use.
# @flag -v --verbose                            Do not redirect stdout and stderr
# @flag -q --quiet                              Produce less output to the terminal.
# @option -t --timeout-multiplier <TIMEOUT_MULTIPLIER>  Define a multiplier for test timeout, for example when running tests in particular conditions they might take more time to execute.
# @option --setup                               Which test setup to use.
# @option --test-args <TEST_ARGS>               Arguments to pass to the specified test(s) or all tests
# @arg args*[`_choice_test`]                    Optional list of test names to run.
test() {
    :;
}
# }} meson test

# {{ meson wrap
# @cmd Wrap tools
# @flag -h --help    show this help message and exit
# @arg list-search-install-update-info-status-promote-update-db* <list,search,install,update,info,status,promote,update-db>
wrap() {
    :;
}

# {{{ meson wrap list
# @cmd show all available projects
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
wrap::list() {
    :;
}
# }}} meson wrap list

# {{{ meson wrap search
# @cmd search the db by name
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
# @arg name
wrap::search() {
    :;
}
# }}} meson wrap search

# {{{ meson wrap install
# @cmd install the specified project
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
# @arg name
wrap::install() {
    :;
}
# }}} meson wrap install

# {{{ meson wrap update
# @cmd Update wrap files from WrapDB (Since 0.63.0)
# @flag -h --help                               show this help message and exit
# @flag --force                                 Update wraps that does not seems to come from WrapDB
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @arg subprojects*                             List of subprojects (default: all)
wrap::update() {
    :;
}
# }}} meson wrap update

# {{{ meson wrap info
# @cmd show available versions of a project
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
# @arg name
wrap::info() {
    :;
}
# }}} meson wrap info

# {{{ meson wrap status
# @cmd show installed and available versions of your projects
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
wrap::status() {
    :;
}
# }}} meson wrap status

# {{{ meson wrap promote
# @cmd bring a subsubproject up to the master project
# @flag -h --help    show this help message and exit
# @arg project_path
wrap::promote() {
    :;
}
# }}} meson wrap promote

# {{{ meson wrap update-db
# @cmd Update list of projects available in WrapDB (Since 0.61.0)
# @flag -h --help           show this help message and exit
# @flag --allow-insecure    Allow insecure server connections.
wrap::update-db() {
    :;
}
# }}} meson wrap update-db
# }} meson wrap

# {{ meson subprojects
# @cmd Manage subprojects
# @flag -h --help    show this help message and exit
# @arg update-checkout-download-foreach-purge-packagefiles* <update,checkout,download,foreach,purge,packagefiles>
subprojects() {
    :;
}

# {{{ meson subprojects update
# @cmd Update all subprojects from wrap files
# @flag -h --help                               show this help message and exit
# @flag --rebase                                Rebase your branch on top of wrap's revision.
# @flag --reset                                 Checkout wrap's revision and hard reset to that commit.
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @arg subprojects*                             List of subprojects (default: all)
subprojects::update() {
    :;
}
# }}} meson subprojects update

# {{{ meson subprojects checkout
# @cmd Checkout a branch (git only)
# @flag -h --help                               show this help message and exit
# @flag -b                                      Create a new branch
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @arg branch_name                              Name of the branch to checkout or create (default: revision set in wrap file)
# @arg subprojects*                             List of subprojects (default: all)
subprojects::checkout() {
    :;
}
# }}} meson subprojects checkout

# {{{ meson subprojects download
# @cmd Ensure subprojects are fetched, even if not in use.
# @flag -h --help                               show this help message and exit
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @arg subprojects*                             List of subprojects (default: all)
subprojects::download() {
    :;
}
# }}} meson subprojects download

# {{{ meson subprojects foreach
# @cmd Execute a command in each subproject directory.
# @flag -h --help                               show this help message and exit
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @arg command                                  ...  Command to execute in each subproject directory
subprojects::foreach() {
    :;
}
# }}} meson subprojects foreach

# {{{ meson subprojects purge
# @cmd Remove all wrap-based subproject artifacts
# @flag -h --help                               show this help message and exit
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @flag --include-cache                         Remove the package cache as well
# @flag --confirm                               Confirm the removal of subproject artifacts
# @arg subprojects*                             List of subprojects (default: all)
subprojects::purge() {
    :;
}
# }}} meson subprojects purge

# {{{ meson subprojects packagefiles
# @cmd Manage the packagefiles overlay
# @flag -h --help                               show this help message and exit
# @option --sourcedir                           Path to source directory
# @option --types                               Comma-separated list of subproject types.
# @option -j --num-processes <NUM_PROCESSES>    How many parallel processes to use (Since 0.59.0).
# @flag --allow-insecure                        Allow insecure server connections.
# @flag --apply                                 Apply packagefiles to the subproject
# @flag --save                                  Save packagefiles from the subproject
# @arg subprojects*                             List of subprojects (default: all)
subprojects::packagefiles() {
    :;
}
# }}} meson subprojects packagefiles
# }} meson subprojects

# {{ meson rewrite
# @cmd Modify the project definition
# @flag -h --help                    show this help message and exit
# @option -s --sourcedir <SRCDIR>    Path to source directory.
# @flag -V --verbose                 Enable verbose output
# @flag -S --skip-errors             Skip errors instead of aborting
rewrite() {
    :;
}

# {{{ meson rewrite target
# @cmd Modify a target
# @flag -h --help        show this help message and exit
# @option -s --subdir    Subdirectory of the new target (only for the "add_target" action)
# @option --type[both_libraries|executable|jar|library|shared_library|shared_module|static_library]  Type of the target to add (only for the "add_target" action)
# @arg target            Name or ID of the target
# @arg enum[add|rm|add_target|rm_target|add_extra_files|rm_extra_files|info]  Action to execute
# @arg sources*          Sources to add/remove
rewrite::target() {
    :;
}
# }}} meson rewrite target

# {{{ meson rewrite kwargs
# @cmd Modify keyword arguments
# @flag -h --help                          show this help message and exit
# @arg enum[set|delete|add|remove|remove_regex|info]  Action to execute
# @arg enum1[dependency|target|project]    Function type to modify
# @arg id                                  ID of the function to modify (can be anything for "project")
# @arg kwargs*                             Pairs of keyword and value
rewrite::kwargs() {
    :;
}
# }}} meson rewrite kwargs

# {{{ meson rewrite default-options
# @cmd Modify the project default options
# @flag -h --help          show this help message and exit
# @arg enum[set|delete]    Action to execute
# @arg options*            Key, value pairs of configuration option
rewrite::default-options() {
    :;
}
# }}} meson rewrite default-options
# }} meson rewrite

# {{ meson compile
# @cmd Build the project
# @flag -h --help                             show this help message and exit
# @flag --clean                               Clean the build directory.
# @option -C <WD>                             directory to cd into before running
# @option -j --jobs                           The number of worker jobs to run (if supported).
# @option -l --load-average <LOAD_AVERAGE>    The system load average to try to maintain (if supported).
# @flag -v --verbose                          Show more verbose output.
# @option --ninja-args <NINJA_ARGS>           Arguments to pass to `ninja` (applied only on `ninja` backend).
# @option --vs-args <VS_ARGS>                 Arguments to pass to `msbuild` (applied only on `vs` backend).
# @option --xcode-args <XCODE_ARGS>           Arguments to pass to `xcodebuild` (applied only on `xcode` backend).
# @arg target[`_choice_target`]               Targets to build.
compile() {
    :;
}
# }} meson compile

# {{ meson devenv
# @cmd Run commands in developer environment
# @flag -h --help                            show this help message and exit
# @option -C <BUILDDIR>                      Path to build directory
# @option -w --workdir                       Directory to cd into before running (default: builddir, Since 1.0.0)
# @option --dump                             Only print required environment (Since 0.62.0) Takes an optional file path (Since 1.1.0)
# @option --dump-format[sh|export|vscode]    Format used with --dump (Since 1.1.0)
# @arg command                               Command to run in developer environment (default: interactive shell)
devenv() {
    :;
}
# }} meson devenv

# {{ meson env2mfile
# @cmd Convert current environment to a cross or native file
# @flag -h --help                      show this help message and exit
# @option --debarch                    The dpkg architecture to generate.
# @option --gccsuffix                  A particular gcc version suffix if necessary.
# @option -o <OUTFILE>                 The output file.
# @flag --cross                        Generate a cross compilation file.
# @flag --native                       Generate a native compilation file.
# @option --system                     Define system for cross compilation.
# @option --subsystem                  Define subsystem for cross compilation.
# @option --kernel                     Define kernel for cross compilation.
# @option --cpu                        Define cpu for cross compilation.
# @option --cpu-family <CPU_FAMILY>    Define cpu family for cross compilation.
# @option --endian[big|little]         Define endianness for cross compilation.
# @arg outfile
env2mfile() {
    :;
}
# }} meson env2mfile

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_subproject() {
    meson introspect $(_argc_util_param_select_options -C) --projectinfo | \
    yq '.subprojects[].name'
}

_choice_test_suit() {
    meson introspect $(_argc_util_param_select_options -C) --tests | \
    yq '.[].suite.[]'
}

_choice_test() {
    meson test $(_argc_util_param_select_options -C) --no-rebuild --list | \
    sed 's| / .*||'
}

_choice_target() {
    meson introspect $(_argc_util_param_select_options -C) --targets | \
    yq '.[].name'
}

command eval "$(argc --argc-eval "$0" "$@")"