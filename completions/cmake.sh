#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -S <path-to-source>                    Explicitly specify a source directory.
# @option -B <path-to-build>                     Explicitly specify a build directory.
# @option -C <initial-cache>                     Pre-load a script to populate the cache.
# @option -D-*[`_choice_set_cache_entry`] <<var>[:<type>]=<value>>  Create or update a cmake cache entry.
# @option -U-*[`_choice_remove_cache_entry`] <globbing_expr>  Remove matching entries from CMake cache.
# @option -G[`_choice_generator`] <generator-name>  Specify a build system generator.
# @option -T <toolset-name>                      Specify toolset name if supported by generator.
# @option -A <platform-name>                     Specify platform name if supported by generator.
# @option --toolchain <file>                     Specify toolchain file [CMAKE_TOOLCHAIN_FILE].
# @option --install-prefix <directory>           Specify install directory [CMAKE_INSTALL_PREFIX].
# @flag -Wdev                                    Enable developer warnings.
# @flag -Wno-dev                                 Suppress developer warnings.
# @flag -Wdeprecated                             Enable deprecation warnings.
# @flag -Wno-deprecated                          Suppress deprecation warnings.
# @option -Werror[dev|deprecated] <value>        Make deprecated macro and function warnings errors.
# @option -Wno-error[dev|deprecated] <value>     Make deprecated macro and function warnings not errors.
# @option --preset[`_choice_preset`] <preset>    Specify a configure preset.
# @option --list-presets[`_choice_list_preset`] <type>  List available presets.
# @option -E[`_choice_cmd`] <cmd> <args+>        CMake command mode.
# @flag -LA                                      List non-advanced cached variables.
# @flag -LH                                      List non-advanced cached variables.
# @flag --fresh                                  Configure a fresh build tree, removing any existing cache file.
# @option --build <dir>                          Build a CMake-generated project binary tree.
# @option --install <dir>                        Install a CMake-generated project binary tree.
# @option --open <dir>                           Open generated project in the associated application.
# @flag -N                                       View mode only.
# @option -P <file>                              Process script mode.
# @flag --find-package                           Legacy pkg-config like mode.
# @option --graphviz <file>                      Generate graphviz of dependencies, see CMakeGraphVizOptions.cmake for more.
# @option --system-information <file>            Dump information about this system.
# @option --log-level[ERROR|WARNING|NOTICE|STATUS|VERBOSE|DEBUG|TRACE]  Set the verbosity of messages from CMake files.
# @flag --log-context                            Prepend log messages with context, if given
# @flag --debug-trycompile                       Do not delete the try_compile build tree.
# @flag --debug-output                           Put cmake in a debug mode.
# @flag --debug-find                             Put cmake find in a debug mode.
# @option --debug-find-pkg <<pkg-name>[,...]>    Limit cmake debug-find to the comma-separated list of packages
# @option --debug-find-var <<var-name>[,...]>    Limit cmake debug-find to the comma-separated list of result variables
# @flag --trace                                  Put cmake in trace mode.
# @flag --trace-expand                           Put cmake in trace mode with variable expansion.
# @option --trace-format[human|json-v1]          Set the output format of the trace.
# @option --trace-source <file>                  Trace only this CMake file/module.
# @option --trace-redirect <file>                Redirect trace output to a file instead of stderr.
# @flag --warn-uninitialized                     Warn about uninitialized values.
# @flag --no-warn-unused-cli                     Don't warn about command line options.
# @flag --check-system-vars                      Find problems with variable usage in system files.
# @option --compile-no-warning-as-error          Ignore COMPILE_WARNING_AS_ERROR property and CMAKE_COMPILE_WARNING_AS_ERROR variable.
# @option --profiling-format <fmt>               Output data for profiling CMake scripts.
# @option --profiling-output <file>              Select an output path for the profiling data enabled through --profiling-format.
# @flag -h                                       Print usage information and exit.
# @flag -H                                       Print usage information and exit.
# @flag --help                                   Print usage information and exit.
# @flag -help                                    Print usage information and exit.
# @flag -usage                                   Print usage information and exit.
# @option --version <file>                       Print version number and exit.
# @option -version <file>                        Print version number and exit.
# @option --help-full <file>                     Print all help manuals and exit.
# @option --help-manual[`_choice_help_manual`] <man> <file>  Print one help manual and exit.
# @option --help-manual-list <file>              List help manuals available and exit.
# @option --help-command[`_choice_help_command`] <cmd> <[<file>]=>  Print help for one command and exit.
# @option --help-command-list <file>             List commands with help available and exit.
# @option --help-commands <file>                 Print cmake-commands manual and exit.
# @option --help-module[`_choice_help_module`] <mod> <file>  Print help for one module and exit.
# @option --help-module-list <file>              List modules with help available and exit.
# @option --help-modules <file>                  Print cmake-modules manual and exit.
# @option --help-policy[`_choice_help_policy`] <cmp> <file>  Print help for one policy and exit.
# @option --help-policy-list <file>              List policies with help available and exit.
# @option --help-policies <file>                 Print cmake-policies manual and exit.
# @option --help-property[`_choice_help_property`] <prop> <file>  Print help for one property and exit.
# @option --help-property-list <[<file>]=>       List properties with help available and exit.
# @option --help-properties <file>               Print cmake-properties manual and exit.
# @option --help-variable[`_choice_help_variable`] <var> <file>  Print help for one variable and exit.
# @option --help-variable-list <[<file>]=>       List variables with help available and exit.
# @option --help-variables <file>                Print cmake-variables manual and exit.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_set_cache_entry() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        cmake -LA -N 2>/dev/null | tail -n +2 | gawk -F: '{print $1 "=\0"}'
        return
    else
        if [[ "$argc__kv_key" == "CMAKE_BUILD_TYPE" ]]; then
            printf "%s\n" Debug Release RelWithDebInfo MinSizeRel
            return
        fi
        type="$(cmake -LA -N 2>/dev/null | tail -n +2 | grep "^$argc__kv_key")"
        if [[ -n "$type" ]]; then
            type="${type#*:}"
            type="${type%%=*}"
            case "$type" in
            FILEPATH)
                _argc_util_comp_path
                ;;
            PATH)
                _argc_util_comp_path dir
                ;;
            BOOL)
                printf "%s\n" ON OFF TRUE FALSE
                ;;
            esac
        fi
    fi
}

_choice_remove_cache_entry() {
    cmake -LA -N 2>/dev/null | tail -n +2 | cut -f1 -d:
}

_choice_generator() {
    cmake --help 2>&1 | \
    sed -n \
        -e "1,/^Generators/d" \
        -e "/^\s*(/d" \
        -e "/^  *[^ =]/{s|^ *\([^=]*[^ =]\).*$|\1|;p}" \

}

_choice_preset() {
    cmake --list-presets 2>/dev/null | \
    sed -n \
        -e 's,^[[:space:]]*"\([^"]*\)"[[:space:]]*-[[:space:]]*\(.*\),\1:\2,p' \
        -e 's,^[[:space:]]*"\([^"]*\)"[[:space:]]*$,\1,p' \

}

_choice_list_preset() {
    printf "%s\n" configure build test all
}

_choice_cmd() {
    cmake -E help 2>&1 | sed -n  '/^  [^ ]/{s|^  \([^ ]\{1,\}\) .*$|\1|;p}' 
}

_choice_help_manual() {
    cmake --help-manual-list 2>&1 | grep -v "^cmake version " | sed -e "s/([0-9])$//"
}

_choice_help_command() {
    cmake --help-command-list 2>&1 | grep -v "^cmake version "
}

_choice_help_module() {
    cmake --help-module-list 2>&1 | grep -v "^cmake version "
}

_choice_help_policy() {
    cmake --help-policy-list 2>&1 | grep -v "^cmake version "
}

_choice_help_property() {
    cmake --help-property-list 2>&1 | grep -v "^cmake version "
}

_choice_help_variable() {
    cmake --help-variable-list 2>&1 | grep -v "^cmake version "
}

command eval "$(argc --argc-eval "$0" "$@")"