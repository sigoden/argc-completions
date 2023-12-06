#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --tool[`_choice_tool`] <name>            use the Valgrind tool named <name> [memcheck] available tools are: memcheck cachegrind callgrind helgrind drd massif dhat lackey none exp-bbv
# @flag -h --help                                  show this message
# @flag --help-debug                               show this message, plus debugging options
# @flag --help-dyn-options                         show the dynamically changeable options
# @flag --version                                  show version
# @flag -q --quiet                                 run silently; only print error msgs
# @flag -v --verbose                               be more verbose -- show misc extra info
# @option --trace-children[no|yes]                 Valgrind-ise child processes (follow execve)? [no]
# @option --trace-children-skip* <patt1,patt2,>    specifies a list of executables that --trace-children=yes should not trace into
# @option --trace-children-skip-by-arg* <patt1,patt2,>  same as --trace-children-skip= but check the argv[] entries for children, rather than the exe name, to make a follow/no-follow decision
# @option --child-silent-after-fork[no|yes]        omit child output between fork & exec? [no]
# @option --vgdb[no|yes|full]                      activate gdbserver? [yes] full is slower but provides precise watchpoint/step
# @option --vgdb-error <number>                    invoke gdbserver after <number> errors [999999999] to get started quickly, use --vgdb-error=0 and follow the on-screen directions
# @option --vgdb-stop-at* <event1,event2,>         invoke gdbserver for given events [none] where event is one of:
# @option --track-fds[no|yes|all]                  track open file descriptors? [no] all includes reporting stdin, stdout and stderr
# @option --time-stamp[no|yes]                     add timestamps to log messages? [no]
# @option --log-fd <number>                        log messages to file descriptor [2=stderr]
# @option --log-file <file>                        log messages to <file>
# @option --log-socket <ipaddr:port>               log messages to socket ipaddr:port
# @option --enable-debuginfod[no|yes]              query debuginfod servers for missing debuginfo [yes]
# @option --xml <yes>                              emit error output in XML (some tools only)
# @option --xml-fd <number>                        XML output to file descriptor
# @option --xml-file <file>                        XML output to <file>
# @option --xml-socket <ipaddr:port>               XML output to socket ipaddr:port
# @option --xml-user-comment <STR>                 copy STR verbatim into XML output
# @option --demangle[no|yes]                       automatically demangle C++ names? [yes]
# @option --num-callers <number>                   show <number> callers in stack traces [12]
# @option --error-limit[no|yes]                    stop showing new errors if too many? [yes]
# @option --exit-on-first-error[no|yes]            exit code on the first error found? [no]
# @option --error-exitcode <number>                exit code to return if errors found [0=disable]
# @option --error-markers <<begin>,<end>>          add lines with begin/end markers before/after each error output in plain text mode [none]
# @option --show-error-list[no|yes]                show detected errors list and suppression counts at exit [no]
# @flag -s                                         same as --show-error-list=yes
# @option --keep-debuginfo[no|yes]                 Keep symbols etc for unloaded code [no] This allows saved stack traces (e.g. memory leaks) to include file/line info for code that has been dlclose'd (or similar)
# @option --show-below-main[no|yes]                continue stack traces below main() [no]
# @option --default-suppressions[yes|no]           load default suppressions [yes]
# @option --suppressions <filename>                suppress errors described in <filename>
# @option --gen-suppressions[no|yes|all]           print suppressions for errors? [no]
# @option --input-fd <number>                      file descriptor for input [0=stdin]
# @option --dsymutil[no|yes]                       run dsymutil on Mac OS X when helpful? [yes]
# @option --max-stackframe <number>                assume stack switch for SP changes larger than <number> bytes [2000000]
# @option --main-stacksize <number>                set size of main thread's stack (in bytes) [min(max(current 'ulimit' value,1MB),16MB)]
# @option --alignment <number>                     set minimum alignment of heap allocations [16]
# @option --redzone-size <number>                  set minimum size of redzones added before/after heap blocks (in bytes).
# @option --xtree-memory[none|allocs|full]         profile heap memory in an xtree [none] and produces a report at the end of the execution none: no profiling, allocs: current allocated size/blocks, full: profile current and cumulative allocated size/blocks and freed size/blocks.
# @option --xtree-memory-file <file>               xtree memory report file [xtmemory.kcg.%p]
# @option --fullpath-after <string>                like --fullpath-after=, but only show the part of the path after 'string'.
# @option --extra-debuginfo-path <path>            absolute path to search for additional debug symbols, in addition to existing default well known search paths.
# @option --debuginfo-server <ipaddr:port>         also query this server (valgrind-di-server) for debug symbols
# @option --allow-mismatched-debuginfo[no|yes]     [no] for the above two flags only, accept debuginfo objects that don't "match" the main object
# @option --smc-check[none|stack|all|all-non-file] <all-non-file>  checks for self-modifying code: none, only for code found in stacks, for all code, or for all code except that from file-backed mappings
# @option --read-inline-info[yes|no]               read debug info about inlined function calls and use it to do better stack traces.
# @option --read-var-info[Memcheck|Helgrind|DRD] <yes|no>  read debug info on stack and global variables and use it to print better error messages in tools that make use of it [no]
# @option --vgdb-poll <number>                     gdbserver poll max every <number> basic blocks [5000]
# @option --vgdb-shadow-registers[no|yes]          let gdb see the shadow registers [no]
# @option --vgdb-prefix <prefix>                   prefix for vgdb FIFOs [/tmp/vgdb-pipe]
# @option --run-libc-freeres[no|yes]               free up glibc memory at exit on Linux? [yes]
# @option --run-cxx-freeres[no|yes]                free up libstdc++ memory at exit on Linux and Solaris? [yes]
# @option --sim-hints* <hint1,hint2,>              activate unusual sim behaviours [none] where hint is one of:
# @option --scheduling-quantum <number>            thread-scheduling timeslice in number of basic blocks [100000]
# @option --fair-sched[no|yes|try]                 schedule threads fairly on multicore systems [no]
# @option --kernel-variant* <variant1,variant2,>   handle non-standard kernel variants [none] where variant is one of:
# @option --merge-recursive-frames <number>        merge frames between identical program counters in max <number> frames) [0]
# @option --num-transtab-sectors <number>          size of translated code cache [32] more sectors may increase performance, but use more memory.
# @option --avg-transtab-entry-size <number>       avg size in bytes of a translated basic block [0, meaning use tool provided default]
# @option --aspace-minaddr <0xPP>                  avoid mapping memory below 0xPP [guessed]
# @option --valgrind-stacksize <number>            size of valgrind (host) thread's stack (in bytes) [1048576]
# @option --show-emwarns[no|yes]                   show warnings about emulation limits? [no]
# @option --require-text-symbol <:sonamepattern:symbolpattern>  abort run if the stated shared object doesn't have the stated text symbol.
# @option --soname-synonyms*, <syn1=pattern1,syn2=pattern2,>  specify patterns for function wrapping or replacement.
# @option --sigill-diagnostics[yes|no]             warn about illegal instructions? [yes]
# @option --unw-stack-scan-thresh <number>         Enable stack-scan unwind if fewer than <number> good frames found  [0, meaning "disabled"] NOTE: stack scanning is only available on arm-linux.
# @option --unw-stack-scan-frames <number>         Max number of frames that can be recovered by stack scanning [5]
# @option --resync-filter[no|yes|verbose] <yes on MacOS no on other OSes>  attempt to avoid expensive address-space-resync operations
# @option --max-threads <number>                   maximum number of threads that valgrind can handle [500]
# @option --realloc-zero-bytes-frees[yes|no] <yes on Linux glibc no otherwise>  should calls to realloc with a size of 0 free memory and return NULL or allocate/resize and return non-NULL
# @option --leak-check[no|summary|full]            search for memory leaks at exit?  [summary]
# @option --leak-resolution[low|med|high]          differentiation of leak stack traces [high]
# @option --show-leak-kinds* <kind1,kind2,>        which leak kinds to show? [definite,possible]
# @option --errors-for-leak-kinds* <kind1,kind2,>  which leak kinds are errors? [definite,possible] where kind is one of: definite indirect possible reachable all none
# @option --leak-check-heuristics* <heur1,heur2,>  which heuristics to use for improving leak search false positive [all] where heur is one of:
# @option --show-reachable[yes|no] <no>            same as --show-leak-kinds=definite
# @option --show-possibly-lost[yes|no] <no>        same as --show-leak-kinds=definite
# @option --xtree-leak[no|yes]                     output leak result in xtree format? [no]
# @option --xtree-leak-file <file>                 xtree leak report file [xtleak.kcg.%p]
# @option --undef-value-errors[no|yes]             check for undefined value errors [yes]
# @option --track-origins[no|yes]                  show origins of undefined values? [no]
# @option --partial-loads-ok[no|yes]               too hard to explain here; see manual [yes]
# @option --expensive-definedness-checks[no|auto|yes]  Use extra-precise definedness tracking [auto]
# @option --freelist-vol <number>                  volume of freed blocks queue  [20000000]
# @option --freelist-big-blocks <number>           releases first blocks with size>= [1000000]
# @option --workaround-gcc296-bugs[no|yes]         self explanatory [no].
# @option --ignore-ranges <0xPP-0xQQ[,0xRR-0xSS]>  assume given addresses are OK
# @option --ignore-range-below-sp <<number>-<number>>  do not report errors for accesses at the given offsets below SP
# @option --malloc-fill <hexnumber>                fill malloc'd areas with given value
# @option --free-fill <hexnumber>                  fill free'd areas with given value
# @option --keep-stacktraces[alloc|free|alloc-and-free|alloc-then-free|none]  stack trace(s) to keep for malloc'd/free'd areas  [alloc-and-free]
# @option --show-mismatched-frees[no|yes]          show frees that don't match the allocator? [yes]
# @option --show-realloc-size-zero[no|yes]         show realocs with a size of zero? [yes]
# @option --cachegrind-out-file <file>             output file name [cachegrind.out.%p]
# @option --cache-sim[yes|no]                      collect cache stats? [no]
# @option --branch-sim[yes|no]                     collect branch prediction stats? [no]
# @option --instr-at-start[yes|no]                 instrument at start? [yes]
# @option --I1 <<size>,<assoc>,<line_size>>        set I1 cache manually
# @option --D1 <<size>,<assoc>,<line_size>>        set D1 cache manually
# @option --LL <<size>,<assoc>,<line_size>>        set LL cache manually
# @option --free-is-write[no|yes]                  treat heap frees as writes [no]
# @option --track-lockorders[no|yes]               show lock ordering errors? [yes]
# @option --history-level[none|approx|full] <full>
# @option --history-backtrace-size <number>        record <number> callers for full history level [8]
# @option --delta-stacktrace[no|yes] <yes on linux amd64/x86>  no : always compute a full history stacktrace from unwind info yes : derive a stacktrace from the previous stacktrace
# @option --conflict-cache-size <N>                size of 'full' history cache [2000000]
# @option --check-stack-refs[no|yes]               race-check reads and writes on the main stack and thread stacks? [yes]
# @option --ignore-thread-creation[yes|no]         Ignore activities during thread creation [no]
# @option --heap[no|yes]                           profile heap blocks [yes]
# @option --heap-admin <size>                      average admin bytes per heap block; ignored if --heap=no [8]
# @option --stacks[no|yes]                         profile stack(s) [no]
# @option --pages-as-heap[no|yes]                  profile memory at the page level [no]
# @option --depth <number>                         depth of contexts [30]
# @option --alloc-fn[`_choice_function_prototype`] <name>  specify <name> as an alloc function [empty]
# @option --ignore-fn[`_choice_function_prototype`] <name>  ignore heap allocations within <name> [empty]
# @option --threshold <m.n>                        significance threshold, as a percentage [1.0]
# @option --peak-inaccuracy <m.n>                  maximum peak inaccuracy, as a percentage [1.0]
# @option --time-unit[i|ms|B]                      time unit: instructions executed, milliseconds or heap bytes alloc'd/dealloc'd [i]
# @option --detailed-freq <N>                      every Nth snapshot should be detailed [10]
# @option --max-snapshots <N>                      maximum number of snapshots recorded [100]
# @option --massif-out-file <file>                 output file name [massif.out.%p]
# @arg prog[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_tool() {
    cat <<-'EOF'
memcheck	Heavyweight memory checker
cachegrind	Cache-miss profiler
helgrind	Data-race detector
massif	Heap profiler
EOF
}

_choice_function_prototype() {
    mapfile -t headers < <(ls -1 | grep '\.\(h\|hh\|hpp\|hxx\)$')
    if [[ ${#headers[@]} -gt 0 ]]; then
        sed -n "s/^\(.*[^[a-zA-Z_0-9]\|\)\([a-zA-Z_][a-zA-Z_0-9]*\) *(.*);.*\$/\2/p" "${headers[@]}"
    fi
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"