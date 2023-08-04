#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                        Display version information
# @flag -h --help                           Print this message (--help-hidden for more)
# @flag --help-hidden                       Uncommon options not shown by `-h`
# @option --project <<dir>|@.>              Set <dir> as the home project/environment
# @option -J --sysimage <file>              Start up with the given system image file
# @option -H --home <dir>                   Set location of `julia` executable
# @option --startup-file[yes|no]            Load `JULIA_DEPOT_PATH/config/startup.jl`; if `JULIA_DEPOT_PATH` environment variable is unset, load `~/.julia/config/startup.jl`
# @option --handle-signals[yes|no]          Enable or disable Julia's default signal handlers
# @option --sysimage-native-code[yes|no]    Use native code from system image if available
# @option --compiled-modules[yes|no]        Enable or disable incremental precompilation of modules
# @option --pkgimages[yes|no]               Enable or disable usage of native code caching in the form of pkgimages ($)
# @option -e --eval <expr>                  Evaluate <expr>
# @option -E --print <expr>                 Evaluate <expr> and display the result
# @option -L --load <file>                  Load <file> immediately on all processors
# @option -t --threads <auto|N,auto|M>      Enable N[+M] threads; N threads are assigned to the `default` threadpool, and if M is specified, M threads are assigned to the `interactive` threadpool; "auto" tries to infer a useful default number of threads to use but the exact behavior might change in the future.
# @option -p --procs[N|auto]                Integer value N launches N additional local worker processes "auto" launches as many workers as the number of local CPU threads (logical cores)
# @option --machine-file <file>             Run processes on hosts listed in <file>
# @flag -i --interactive                    Interactive mode; REPL runs and `isinteractive()` is true
# @flag -q --quiet                          Quiet startup: no banner, suppress REPL warnings
# @option --banner[yes|no|auto]             Enable or disable startup banner
# @option --color[yes|no|auto]              Enable or disable color text
# @option --history-file[yes|no]            Load or save history
# @option --depwarn[yes|no|error]           Enable or disable syntax and method deprecation warnings (`error` turns warnings into errors)
# @option --warn-overwrite[yes|no]          Enable or disable method overwrite warnings
# @option --warn-scope[yes|no]              Enable or disable warning for ambiguous top-level scope
# @option -C --cpu-target <target>          Limit usage of CPU features up to <target>; set to `help` to see the available options
# @option -O --optimize[0|1|2|3]            Set the optimization level (level 3 if `-O` is used without a level) ($)
# @option --min-optlevel[0|1|2|3]           Set a lower bound on the optimization level
# @option -g --debug-info[0|1|2]            Set the level of debug info generation (level 2 if `-g` is used without a level) ($)
# @option --inline[yes|no]                  Control whether inlining is permitted, including overriding @inline declarations
# @option --check-bounds[yes|no|auto]       Emit bounds checks always, never, or respect @inbounds declarations ($)
# @option --code-coverage[`_choice_code_coverage`]  Count executions of source lines (omitting setting is equivalent to `user`)
# @option --track-allocation[`_choice_track_allocation`] <@<path>>  Count bytes but only in files that fall under the given file path/directory.
# @option --bug-report <KIND>               Launch a bug report session.
# @option --heap-size-hint <size>           Forces garbage collection if memory usage is higher than that value.
# @arg file
# @arg args*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_code_coverage() {
    printf "%s\n" none user all
    _argc_util_comp_path
}

_choice_track_allocation() {
    printf "%s\n" none user all
    _argc_util_comp_path
}

command eval "$(argc --argc-eval "$0" "$@")"