#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose            Show additional command output.
# @flag --version               Print the Dart SDK version.
# @flag --enable-analytics      Enable analytics.
# @flag --disable-analytics     Disable analytics.
# @flag --suppress-analytics    Disallow analytics for this `dart *` run without changing the analytics configuration.
# @flag -h --help               Print this usage information.

# {{ dart analyze
# @cmd Analyze Dart code in a directory.
# @flag -h --help              Print this usage information.
# @flag --fatal-infos          Treat info level issues as fatal.
# @flag --fatal-warnings       Treat warning level issues as fatal.
# @flag --no-fatal-warnings    Treat warning level issues as fatal.
# @arg directory
analyze() {
    :;
}
# }} dart analyze

# {{ dart compile
# @cmd Compile Dart to various formats.
# @flag -h --help    Print this usage information.
compile() {
    :;
}

# {{{ dart compile aot-snapshot
# @cmd Compile Dart to an AOT snapshot.
# @flag -h --help                                 Print this usage information.
# @option -o --output <file>                      Write the output to <file name>.
# @option --verbosity[`_choice_log_verbosity`]    Sets the verbosity level of the compilation.
# @option -D --define <key=value>                 Define an environment declaration.
# @option -p --packages <path>                    Get package locations from the specified file instead of .dart_tool/package_config.json.
# @option -S --save-debugging-info <path>         Remove debugging information from the output and save it separately to the specified file.
# @option --target-os[android|fuchsia|ios|linux|macos|windows]  Compile to a specific target operating system.
# @arg dart-entry-point <file:.dart>
compile::aot-snapshot() {
    :;
}
# }}} dart compile aot-snapshot

# {{{ dart compile exe
# @cmd Compile Dart to a self-contained executable.
# @flag -h --help                                 Print this usage information.
# @option -o --output <file>                      Write the output to <file name>.
# @option --verbosity[`_choice_log_verbosity`]    Sets the verbosity level of the compilation.
# @option -D --define <key=value>                 Define an environment declaration.
# @option -p --packages <path>                    Get package locations from the specified file instead of .dart_tool/package_config.json.
# @option -S --save-debugging-info <path>         Remove debugging information from the output and save it separately to the specified file.
# @option --target-os[android|fuchsia|ios|linux|macos|windows]  Compile to a specific target operating system.
# @arg dart-entry-point <file:.dart>
compile::exe() {
    :;
}
# }}} dart compile exe

# {{{ dart compile jit-snapshot
# @cmd Compile Dart to a JIT snapshot.
# @flag -h --help                                 Print this usage information.
# @option -o --output <file>                      Write the output to <file name>.
# @option --verbosity[`_choice_log_verbosity`]    Sets the verbosity level of the compilation.
# @option -p --packages <path>                    Get package locations from the specified file instead of .dart_tool/package_config.json.
# @option -D --define <key=value>                 Define an environment declaration.
# @arg dart-entry-point <file:.dart>
compile::jit-snapshot() {
    :;
}
# }}} dart compile jit-snapshot

# {{{ dart compile js
# @cmd Compile Dart to JavaScript.
# @flag -h --help               Print this usage information.
# @option -o --output <file>    Write the output to <file name>.
# @option -O <0,1,2,3,4>        Set the compiler optimization level (defaults to -O1).
# @flag -O0                     No optimizations (only meant for debugging the compiler).
# @flag -O1                     Default (includes whole program analyses and inlining).
# @flag -O2                     Safe production-oriented optimizations (like minification).
# @flag -O3                     Potentially unsafe optimizations (see -h -v for details).
# @flag -O4                     More agressive unsafe optimizations (see -h -v for details).
# @arg dart-entry-point <file:.dart>
compile::js() {
    :;
}
# }}} dart compile js

# {{{ dart compile kernel
# @cmd Compile Dart to a kernel snapshot.
# @flag -h --help                                 Print this usage information.
# @option -o --output <file>                      Write the output to <file name>.
# @option --verbosity[`_choice_log_verbosity`]    Sets the verbosity level of the compilation.
# @option -p --packages <path>                    Get package locations from the specified file instead of .dart_tool/package_config.json.
# @option -D --define <key=value>                 Define an environment declaration.
# @arg dart-entry-point <file:.dart>
compile::kernel() {
    :;
}
# }}} dart compile kernel
# }} dart compile

# {{ dart create
# @cmd Create a new Dart project.
# @flag -h --help    Print this usage information.
# @option -t --template[`_choice_create_template`]  The project template to use.
# @flag --pub        Whether to run 'pub get' after the project has been created.
# @flag --no-pub     Whether to run 'pub get' after the project has been created.
# @flag --force      Force project generation, even if the target directory already exists.
# @arg directory!
create() {
    :;
}
# }} dart create

# {{ dart devtools
# @cmd Open DevTools (optionally connecting to an existing application).
# @flag --version                           Prints the DevTools version.
# @flag -v --verbose                        Output more informational messages.
# @option --host <host>                     Hostname to serve DevTools on (defaults to localhost).
# @option --port <port>                     Port to serve DevTools on; specify 0 to automatically use any available port.
# @flag --launch-browser                    Launches DevTools in a browser immediately at start.
# @flag --no-launch-browser                 Launches DevTools in a browser immediately at start.
# @flag --machine                           Sets output format to JSON for consumption in tools.
# @option --record-memory-profile <file>    Start devtools headlessly and write memory profiling samples to the indicated file.
# @option --app-size-base <file>            Path to the base app size file used for app size debugging.
# @flag -h --help                           Print this usage information.
# @arg service-protocol-uri <service protocol uri>
devtools() {
    :;
}
# }} dart devtools

# {{ dart doc
# @cmd Generate API documentation for Dart projects.
# @flag -h --help                    Print this usage information.
# @option -o --output <directory>    Configure the output directory.
# @flag --validate-links             Display warnings for broken links.
# @flag --dry-run                    Try to generate the docs without saving them.
# @arg directory
doc() {
    :;
}
# }} dart doc

# {{ dart fix
# @cmd Apply automated fixes to Dart source code.
# @flag -h --help                   Print this usage information.
# @flag -n --dry-run                Preview the proposed changes but make no changes.
# @flag --apply                     Apply the proposed changes.
# @option --code* <code1,code2,>    Apply fixes for one (or more) diagnostic codes.
fix() {
    :;
}
# }} dart fix

# {{ dart format
# @cmd Idiomatically format Dart source code.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Show all options and flags with --help.
# @option -o --output[`_choice_format_output`]    Set where to write formatted output.
# @flag --set-exit-if-changed                     Return exit code 1 if there are any formatting changes.
# @arg files-or-directories+ <files or directories>
format() {
    :;
}
# }} dart format

# {{ dart info
# @cmd Show diagnostic information about the installed tooling.
# @flag -h --help                 Print this usage information.
# @flag --remove-file-paths       Remove file paths in displayed information.
# @flag --no-remove-file-paths    Remove file paths in displayed information.
info() {
    :;
}
# }} dart info

# {{ dart pub
# @cmd Work with packages.
# @flag -h --help                 Print this usage information.
# @flag -v --verbose              Print detailed logging.
# @flag --color                   Use colors in terminal output.
# @flag --no-color                Use colors in terminal output.
# @option -C --directory <dir>    Run the subcommand in the directory<dir>.
pub() {
    :;
}

# {{{ dart pub add
# @cmd Add dependencies to `pubspec.yaml`.
# @flag -h --help                 Print this usage information.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Build executables in immediate dependencies.
# @flag --no-precompile           Build executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg section-package-descriptor <[<section>:]<package>[:descriptor]>
pub::add() {
    :;
}
# }}} dart pub add

# {{{ dart pub cache
# @cmd Work with the system cache.
# @flag -h --help    Print this usage information.
pub::cache() {
    :;
}

# {{{{ dart pub cache add
# @cmd Install a package.
# @flag -h --help       Print this usage information.
# @flag --all           Install all matching versions.
# @flag -v --version    Version constraint.
# @arg package!
pub::cache::add() {
    :;
}
# }}}} dart pub cache add

# {{{{ dart pub cache clean
# @cmd Clears the global PUB_CACHE.
# @flag -h --help     Print this usage information.
# @flag -f --force    Don't ask for confirmation.
pub::cache::clean() {
    :;
}
# }}}} dart pub cache clean

# {{{{ dart pub cache repair
# @cmd Reinstall cached packages.
# @flag -h --help    Print this usage information.
pub::cache::repair() {
    :;
}
# }}}} dart pub cache repair
# }}} dart pub cache

# {{{ dart pub deps
# @cmd Print package dependencies.
# @flag -h --help                           Print this usage information.
# @option -s --style[=tree|compact|list]    How output should be displayed.
# @flag --dev                               Whether to include dev dependencies.
# @flag --no-dev                            Whether to include dev dependencies.
# @flag --executables                       List all available executables.
# @flag --json                              Output dependency information in a json format.
# @option -C --directory <dir>              Run this in the directory <dir>.
pub::deps() {
    :;
}
# }}} dart pub deps

# {{{ dart pub downgrade
# @cmd Downgrade the current package's dependencies to oldest versions.
# @flag -h --help                 Print this usage information.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg dependencies*[`_choice_package`]
pub::downgrade() {
    :;
}
# }}} dart pub downgrade

# {{{ dart pub get
# @cmd Get the current package's dependencies.
# @flag -h --help                 Print this usage information.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --enforce-lockfile        Enforce pubspec.lock.
# @flag --precompile              Build executables in immediate dependencies.
# @flag --no-precompile           Build executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
pub::get() {
    :;
}
# }}} dart pub get

# {{{ dart pub global
# @cmd Work with global packages.
# @flag -h --help    Print this usage information.
pub::global() {
    :;
}

# {{{{ dart pub global activate
# @cmd Make a package's executables globally available.
# @flag -h --help                         Print this usage information.
# @option -s --source[git|hosted|path]    The source used to find the package.
# @flag --git-path                        Path of git package in repository
# @flag --git-ref                         Git branch or commit to be retrieved
# @flag --no-executables                  Do not put executables on PATH.
# @flag -x --executable                   Executable(s) to place on PATH.
# @flag --overwrite                       Overwrite executables from other packages with the same name.
# @flag -u --hosted-url                   A custom pub server URL for the package.
# @arg package!
# @arg version-constraint
pub::global::activate() {
    :;
}
# }}}} dart pub global activate

# {{{{ dart pub global deactivate
# @cmd Remove a previously activated package.
# @flag -h --help    Print this usage information.
# @arg package![`_choice_gloal_package`]
pub::global::deactivate() {
    :;
}
# }}}} dart pub global deactivate

# {{{{ dart pub global list
# @cmd List globally activated packages.
# @flag -h --help    Print this usage information.
pub::global::list() {
    :;
}
# }}}} dart pub global list

# {{{{ dart pub global run
# @cmd Run an executable from a globally activated package.
# @flag -h --help                             Print this usage information.
# @flag --enable-asserts                      Enable assert statements.
# @flag --no-enable-asserts                   Enable assert statements.
# @option --enable-experiment <experiment>    Runs the executable in a VM with the given experiments enabled.
# @arg package-executable[`_choice_global_package_executable`] <<package>:<executable>>
# @arg args*
pub::global::run() {
    :;
}
# }}}} dart pub global run
# }}} dart pub global

# {{{ dart pub login
# @cmd Log into pub.dev.
# @flag -h --help    Print this usage information.
pub::login() {
    :;
}
# }}} dart pub login

# {{{ dart pub logout
# @cmd Log out of pub.dev.
# @flag -h --help    Print this usage information.
pub::logout() {
    :;
}
# }}} dart pub logout

# {{{ dart pub outdated
# @cmd Analyze your dependencies to find which ones can be upgraded.
# @flag -h --help                    Print this usage information.
# @flag --dependency-overrides       Show resolutions with `dependency_overrides`.
# @flag --no-dependency-overrides    Show resolutions with `dependency_overrides`.
# @flag --dev-dependencies           Take dev dependencies into account.
# @flag --no-dev-dependencies        Take dev dependencies into account.
# @flag --json                       Output the results using a json format.
# @flag --prereleases                Include prereleases in latest version.
# @flag --no-prereleases             Include prereleases in latest version.
# @flag --show-all                   Include dependencies that are already fulfilling --mode.
# @flag --no-show-all                Include dependencies that are already fulfilling --mode.
# @flag --transitive                 Show transitive dependencies.
# @flag --no-transitive              Show transitive dependencies.
# @option -C --directory <dir>       Run this in the directory <dir>.
pub::outdated() {
    :;
}
# }}} dart pub outdated

# {{{ dart pub publish
# @cmd Publish the current package to pub.dev.
# @flag -h --help                 Print this usage information.
# @flag -n --dry-run              Validate but do not publish the package.
# @flag -f --force                Publish without confirmation if there are no errors.
# @flag --skip-validation         Publish without validation and resolution (this will ignore errors).
# @option -C --directory <dir>    Run this in the directory <dir>.
pub::publish() {
    :;
}
# }}} dart pub publish

# {{{ dart pub remove
# @cmd Removes dependencies from `pubspec.yaml`.
# @flag -h --help                 Print this usage information.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Precompile executables in immediate dependencies.
# @flag --no-precompile           Precompile executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg packages*[`_choice_package`]
pub::remove() {
    :;
}
# }}} dart pub remove

# {{{ dart pub token
# @cmd Manage authentication tokens for hosted pub repositories.
# @flag -h --help    Print this usage information.
pub::token() {
    :;
}

# {{{{ dart pub token add
# @cmd Add an authentication token for a package repository.
# @flag -h --help                 Print this usage information.
# @option --env-var <VARIABLE>    Read the secret token from this environment variable when making requests.
# @arg hosted-url!
pub::token::add() {
    :;
}
# }}}} dart pub token add

# {{{{ dart pub token list
# @cmd List servers for which a token exists.
# @flag -h --help    Print this usage information.
pub::token::list() {
    :;
}
# }}}} dart pub token list

# {{{{ dart pub token remove
# @cmd Remove secret token for package repository at <hosted-url>.
# @flag -h --help    Print this usage information.
# @flag --all        Remove all secret tokens.
# @arg hosted-url!
pub::token::remove() {
    :;
}
# }}}} dart pub token remove
# }}} dart pub token

# {{{ dart pub upgrade
# @cmd Upgrade the current package's dependencies to latest versions.
# @flag -h --help                 Print this usage information.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Precompile executables in immediate dependencies.
# @flag --no-precompile           Precompile executables in immediate dependencies.
# @flag --tighten                 Updates lower bounds in pubspec.yaml to match the resolved version.
# @flag --major-versions          Upgrades packages to their latest resolvable versions, and updates pubspec.yaml.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg dependencies*[`_choice_package`]
pub::upgrade() {
    :;
}
# }}} dart pub upgrade
# }} dart pub

# {{ dart run
# @cmd Run a Dart program.
# @flag -h --help                                 Print this usage information.
# @flag -r --resident                             Enable faster startup times with the resident frontend compiler.
# @option --observe <<port>[/<bind-address>]>     The observe flag is a convenience flag used to run a program with a set of common options useful for debugging.
# @option --enable-vm-service <<port>[/<bind-address>]>  Enables the VM service and listens on the specified port for connections (default port number is 8181, default bind address is localhost).
# @flag --serve-devtools                          Serves an instance of the Dart DevTools debugger and profiler via the VM service at <vm-service-uri>/devtools.
# @flag --no-serve-devtools                       Serves an instance of the Dart DevTools debugger and profiler via the VM service at <vm-service-uri>/devtools.
# @flag --pause-isolates-on-exit                  Pause isolates on exit when running with --enable-vm-service.
# @flag --no-pause-isolates-on-exit               Pause isolates on exit when running with --enable-vm-service.
# @flag --pause-isolates-on-unhandled-exceptions  Pause isolates when an unhandled exception is encountered when running with --enable-vm-service.
# @flag --no-pause-isolates-on-unhandled-exceptions  Pause isolates when an unhandled exception is encountered when running with --enable-vm-service.
# @flag --warn-on-pause-with-no-debugger          Print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.
# @flag --no-warn-on-pause-with-no-debugger       Print a warning when an isolate pauses with no attached debugger when running with --enable-vm-service.
# @option --timeline-streams*[all|API|Compiler|CompilerVerbose|Dart|Debugger|Embedder|GC|Isolate|VM] <str1 str2>  Enables recording for specific timeline streams.
# @flag --pause-isolates-on-start                 Pause isolates on start when running with --enable-vm-service.
# @flag --no-pause-isolates-on-start              Pause isolates on start when running with --enable-vm-service.
# @flag --enable-asserts                          Enable assert statements.
# @flag --no-enable-asserts                       Enable assert statements.
# @option --timeline-recorder[none|ring|endless|startup|systrace|file|callback|perfettofile] <recorder>  Selects the timeline recorder to use.
# @option --verbosity[`_choice_log_verbosity`]    Sets the verbosity level of the compilation.
# @option -D --define <key=value>                 Define an environment declaration.
# @arg dart-file-package-target! <dart-file|package-target>
# @arg args*
run() {
    :;
}
# }} dart run

# {{ dart test
# @cmd Run tests for a project.
test() {
    :;
}
# }} dart test

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_log_verbosity() {
    cat <<-'EOF'
all	Show all messages
error	Show only error messages
info	Show error, warning, and info messages
warning	Show only error and warning messages
EOF
}

_choice_create_template() {
    cat <<-'EOF'
console	A command-line application.
package	A package containing shared Dart libraries.
server-shelf	A server app using package:shelf.
web	A web app that uses only core Dart libraries.
EOF
}

_choice_format_output() {
    cat <<-'EOF'
json	Print code and selection as JSON.
none	Discard output.
show	Print code to terminal.
write	Overwrite formatted files on disk.
EOF
}

_choice_package() {
    _helper_find_pubspec_path
    if [[ -z "$pubspec_path" ]]; then
        return
    fi
    cat "$pubspec_path" | yq '(.dependencies // {}) + (.dev_dependencies // {}) | keys | .[]'
}

_choice_gloal_package() {
    dart pub global list | sed 's/ /\t/'
}

_choice_global_package_executable() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_gloal_package | _argc_util_transform suffix=: nospace
    else
        pkg_subpath="$(dart pub global list | gawk -v NAME="$argc__kv_key" '{if($1 == NAME){ print $1 "-" $2 }}')"
        pkg_path="$HOME/.pub-cache/hosted/pub.dev/$pkg_subpath/bin"
        if [[ -d  "$pkg_path" ]]; then
            ls -1 "$pkg_path" | sed 's/\.dart$//'
        fi
    fi
}

_helper_find_pubspec_path() {
    pubspec_path="$(_argc_util_path_search_parent pubspec.yaml pubspec.yml)"
}

command eval "$(argc --argc-eval "$0" "$@")"