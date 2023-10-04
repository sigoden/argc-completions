#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help          Run perf help command.
# @flag -v --version       Display perf version.
# @flag -vv                Print the compiled-in status of libraries.
# @flag --exec-path        Display or set exec path.
# @flag --html-path        Display html documentation path.
# @flag -p --paginate      Set up pager.
# @flag --no-pager         Do not set pager.
# @flag --buildid-dir      Setup buildid cache directory.
# @flag --list-cmds        List the most commonly used perf commands.
# @flag --list-opts        List available perf options.
# @flag --debugfs-dir      Set debugfs directory or set environment variable PERF_DEBUGFS_DIR.
# @option --debug[0|10]    Setup debug variable (see list below) in value range.

# {{ perf annotate
# @cmd Read perf.data (created by perf record) and display annotated code
# @option -i --input <file>           Input file name.
# @option -d --dsos <dso[,dso...]>    Only consider symbols in these dsos.
# @option -s --symbol <symbol>        Symbol to annotate.
# @flag -f --force                    Don’t do ownership validation.
# @flag -v --verbose                  Be more verbose.
# @flag -q --quiet                    Do not show any message.
# @flag -n --show-nr-samples          Show the number of samples for each symbol
# @flag -D --dump-raw-trace           Dump raw trace in ASCII.
# @option -k --vmlinux <file>         vmlinux pathname.
# @flag --ignore-vmlinux              Ignore vmlinux files.
# @flag --itrace                      Options for decoding instruction tracing data.
# @flag -m --modules                  Load module symbols.
# @flag -l --print-line               Print matching source lines (may be slow).
# @flag -P --full-paths               Don’t shorten the displayed pathnames.
# @flag --stdio                       Use the stdio interface.
# @flag --stdio2                      Use the stdio2 interface, non-interactive, uses the TUI formatting.
# @option --stdio-color <mode>        always, never or auto, allowing configuring color output via the command line, in addition to via "color.ui" .perfconfig.
# @flag --tui                         Use the TUI interface.
# @flag --gtk                         Use the GTK interface.
# @option -C --cpu <cpu>              Only report samples for the list of CPUs provided.
# @flag --asm-raw                     Show raw instruction encoding of assembly instructions.
# @flag --show-total-period           Show a column with the sum of periods.
# @flag --source                      Interleave source code with assembly code.
# @option --symfs <directory>         Look for files with symbols relative to this directory.
# @option -M --disassembler-style     Set disassembler style for objdump.
# @option --objdump <path>            Path to objdump binary.
# @option --prefix <N>                Remove first N entries from source file path names in executables and add PREFIX.
# @option --prefix-strip <N>          Remove first N entries from source file path names in executables and add PREFIX.
# @flag --skip-missing                Skip symbols that cannot be annotated.
# @flag --group                       Show event group information together
# @flag --demangle                    Demangle symbol names to human readable form.
# @flag --demangle-kernel             Demangle kernel symbol names to human readable form (for C++ kernels).
# @flag --percent-type                Set annotation percent type from following choices: global-period, local-period, global-hits, local-hits
# @arg symbol_name
annotate() {
    :;
}
# }} perf annotate

# {{ perf archive
# @cmd Create archive with object files with build-ids found in perf.data file
# @arg file
archive() {
    :;
}
# }} perf archive

# {{ perf bench
# @cmd General framework for benchmark suites
# @option -r --repeat    Specify amount of times to repeat the run (default 10).
# @option -f --format    Specify format style.
bench() {
    :;
}

# {{{ perf bench sched
# @cmd Scheduler and IPC mechanisms.
bench::sched() {
    :;
}
# }}} perf bench sched

# {{{ perf bench syscall
# @cmd System call performance (throughput).
bench::syscall() {
    :;
}
# }}} perf bench syscall

# {{{ perf bench mem
# @cmd Memory access performance.
bench::mem() {
    :;
}
# }}} perf bench mem

# {{{ perf bench numa
# @cmd NUMA scheduling and MM benchmarks.
bench::numa() {
    :;
}
# }}} perf bench numa

# {{{ perf bench futex
# @cmd Futex stressing benchmarks.
bench::futex() {
    :;
}
# }}} perf bench futex

# {{{ perf bench epoll
# @cmd Eventpoll (epoll) stressing benchmarks.
bench::epoll() {
    :;
}
# }}} perf bench epoll

# {{{ perf bench internals
# @cmd Benchmark internal perf functionality.
bench::internals() {
    :;
}
# }}} perf bench internals

# {{{ perf bench all
# @cmd All benchmark subsystems.
bench::all() {
    :;
}
# }}} perf bench all

# {{{ perf bench messaging
# @cmd Suite for evaluating performance of scheduler and IPC mechanisms.
bench::messaging() {
    :;
}
# }}} perf bench messaging

# {{{ perf bench basic
# @cmd Suite for evaluating performance of core system call throughput (both usecs/op and ops/sec metrics).
bench::basic() {
    :;
}
# }}} perf bench basic

# {{{ perf bench memcpy
# @cmd Suite for evaluating performance of simple memory copy in various ways.
bench::memcpy() {
    :;
}
# }}} perf bench memcpy

# {{{ perf bench hash
# @cmd Suite for evaluating hash tables.
bench::hash() {
    :;
}
# }}} perf bench hash

# {{{ perf bench wake
# @cmd Suite for evaluating wake calls.
bench::wake() {
    :;
}
# }}} perf bench wake

# {{{ perf bench wake-parallel
# @cmd Suite for evaluating parallel wake calls.
bench::wake-parallel() {
    :;
}
# }}} perf bench wake-parallel

# {{{ perf bench requeue
# @cmd Suite for evaluating requeue calls.
bench::requeue() {
    :;
}
# }}} perf bench requeue

# {{{ perf bench lock-pi
# @cmd Suite for evaluating futex lock_pi calls.
bench::lock-pi() {
    :;
}
# }}} perf bench lock-pi

# {{{ perf bench wait
# @cmd Suite for evaluating concurrent epoll_wait calls.
bench::wait() {
    :;
}
# }}} perf bench wait

# {{{ perf bench ctl
# @cmd Suite for evaluating multiple epoll_ctl calls.
bench::ctl() {
    :;
}
# }}} perf bench ctl

# {{{ perf bench synthesize
# @cmd Suite for evaluating perf’s event synthesis performance.
bench::synthesize() {
    :;
}
# }}} perf bench synthesize
# }} perf bench

# {{ perf buildid-cache
# @cmd Manage build-id cache.
# @option -a --add               Add specified file to the cache.
# @flag -f --force               Don’t complain, do it.
# @flag -k --kcore               Add specified kcore file to the cache.
# @option -r --remove            Remove a cached binary which has same build-id of specified file from the cache.
# @option -p --purge             Purge all cached binaries including older caches which have specified path from the cache.
# @flag -P --purge-all           Purge all cached binaries.
# @option -M --missing           List missing build ids in the cache for the specified file.
# @option -u --update            Update specified file of the cache.
# @flag -l --list                List all valid binaries from cache.
# @flag -v --verbose             Be more verbose.
# @option --target-ns <PID:>     Obtain mount namespace information from the target pid.
# @option --debuginfod <URLs>    Specify debuginfod URL to be used when retrieving perf.data binaries, it follows the same syntax as the DEBUGINFOD_URLS variable, like:
buildid-cache() {
    :;
}
# }} perf buildid-cache

# {{ perf buildid-list
# @cmd List the buildids in a perf.data file
# @flag -H --with-hits    Show only DSOs with hits.
# @option -i --input      Input file name.
# @flag -f --force        Don’t do ownership validation.
# @flag -k --kernel       Show running kernel build id.
# @flag -v --verbose      Be more verbose.
buildid-list() {
    :;
}
# }} perf buildid-list

# {{ perf c2c
# @cmd Shared Data C2C/HITM Analyzer.
c2c() {
    :;
}

# {{{ perf c2c record
# @cmd
# @option -e --event       Select the PMU event.
# @flag -v --verbose       Be more verbose (show counter open errors, etc).
# @flag -l --ldlat         Configure mem-loads latency.
# @flag -k --all-kernel    Configure all used events to run in kernel space.
# @flag -u --all-user      Configure all used events to run in user space.
c2c::record() {
    :;
}
# }}} perf c2c record

# {{{ perf c2c report
# @cmd
# @option -k --vmlinux <file>      vmlinux pathname
# @flag -v --verbose               Be more verbose (show counter open errors, etc).
# @flag -i --input                 Specify the input file to process.
# @flag -N --node-info             Show extra node info in report (see NODE INFO section)
# @flag -c --coalesce              Specify sorting fields for single cacheline display.
# @flag -g --call-graph            Setup callchains parameters.
# @flag --stdio                    Force the stdio output (see STDIO OUTPUT)
# @flag --stats                    Display only statistic tables and force stdio mode.
# @flag --full-symbols             Display full length of symbols.
# @flag --no-source                Do not display Source:Line column.
# @flag --show-all                 Show all captured HITM lines, with no regard to HITM % 0.0005 limit.
# @flag -f --force                 Don’t do ownership validation.
# @option -d --display[rmt|lcl]    Switch to HITM type to display and sort on.
# @flag --stitch-lbr               Show callgraph with stitched LBRs, which may have more complete callgraph.
c2c::report() {
    :;
}
# }}} perf c2c report
# }} perf c2c

# {{ perf config
# @cmd Get and set variables in a configuration file.
# @flag -l --list    Show current config variables, name and value, for all sections.
# @flag --user       For writing and reading options: write to user $HOME/.perfconfig file or read it.
# @flag --system     For writing and reading options: write to system-wide $(sysconfdir)/perfconfig or read it.
# @arg section-name-value* <section.name[=value]>
config() {
    :;
}
# }} perf config

# {{ perf daemon
# @cmd Run record sessions on background
# @flag -v --verbose         Be more verbose.
# @option --config <PATH>    Config file path.
# @option --base <PATH>      Base directory path.
daemon() {
    :;
}

# {{{ perf daemon start
# @cmd
daemon::start() {
    :;
}
# }}} perf daemon start

# {{{ perf daemon stop
# @cmd
daemon::stop() {
    :;
}
# }}} perf daemon stop

# {{{ perf daemon signal
# @cmd
daemon::signal() {
    :;
}
# }}} perf daemon signal

# {{{ perf daemon ping
# @cmd
daemon::ping() {
    :;
}
# }}} perf daemon ping
# }} perf daemon

# {{ perf data
# @cmd Data file related processing
data() {
    :;
}

# {{{ perf data convert
# @cmd Converts perf data file into another format.
data::convert() {
    :;
}
# }}} perf data convert
# }} perf data

# {{ perf diff
# @cmd Read perf.data files and display the differential profile
# @flag -D --dump-raw-trace       Dump raw trace in ASCII.
# @option --kallsyms <file>       kallsyms pathname
# @flag -m --modules              Load module symbols.
# @option -d --dsos               Only consider symbols in these dsos.
# @option -C --comms              Only consider symbols in these comms.
# @option -S --symbols            Only consider these symbols.
# @option -s --sort[pid|comm|dso|symbol|cpu|parent|srcline]  Sort by key(s): pid, comm, dso, symbol, cpu, parent, srcline.
# @option -t --field-separator    Use a special separator character and don’t pad with spaces, replacing all occurrences of this separator in symbol names (and other output) with a .
# @flag -v --verbose              Be verbose, for instance, show the raw counts in addition to the diff.
# @flag -q --quiet                Do not show any message.
# @flag -f --force                Don’t do ownership validation.
# @option --symfs <directory>     Look for files with symbols relative to this directory.
# @flag -b --baseline-only        Show only items with match in baseline.
# @flag -c --compute              Differential computation selection - delta, ratio, wdiff, cycles, delta-abs (default is delta-abs).
# @flag --cycles-hist             Report a histogram and the standard deviation for cycles data.
# @flag -p --period               Show period values for both compared hist entries.
# @flag -F --formula              Show formula for given computation.
# @flag -o --order                Specify compute sorting column number.
# @flag --percentage              Determine how to display the overhead percentage of filtered entries.
# @flag --time                    Analyze samples within given time window.
# @flag --cpu                     Only diff samples for the list of CPUs provided.
# @option --pid                   Only diff samples for given process ID (comma separated list).
# @option --tid                   Only diff samples for given thread ID (comma separated list).
# @flag --stream                  Enable hot streams comparison.
# @arg baseline-file <baseline file>
# @arg data-file1 <data file1>
# @arg data-file2* <[data file2]>
diff() {
    :;
}
# }} perf diff

# {{ perf evlist
# @cmd List the event names in a perf.data file
# @option -i --input      Input file name.
# @flag -f --force        Don’t complain, do it.
# @option -F --freq       Show just the sample frequency used for each event.
# @flag -v --verbose      Show all fields.
# @flag -g --group        Show event group information.
# @flag --trace-fields    Show tracepoint field names.
evlist() {
    :;
}
# }} perf evlist

# {{ perf ftrace
# @cmd simple wrapper for kernel's ftrace functionality
# @option -t --tracer           Tracer to use when neither -G nor -F option is not specified: function_graph or function.
# @flag -v --verbose            Increase the verbosity level.
# @flag -F --funcs              List available functions to trace.
# @option -p --pid              Trace on existing process id (comma separated list).
# @option --tid                 Trace on existing thread id (comma separated list).
# @flag -D --delay              Time (ms) to wait before starting tracing after program start.
# @flag -a --all-cpus           Force system-wide collection.
# @option -C --cpu              Only trace for the list of CPUs provided.
# @flag -m --buffer-size        Set the size of per-cpu tracing buffer, <size> is expected to be a number with appended unit character - B/K/M/G.
# @flag --inherit               Trace children processes spawned by our target.
# @option -T --trace-funcs      Select function tracer and set function filter on the given function (or a glob pattern).
# @option -N --notrace-funcs    Select function tracer and do not trace functions given by the argument.
# @flag --func-opts             List of options allowed to set: call-graph - Display kernel stack trace for function tracer.
# @option -G --graph-funcs      Select function_graph tracer and set graph filter on the given function (or a glob pattern).
# @option -g --nograph-funcs    Select function_graph tracer and set graph notrace filter on the given function (or a glob pattern).
# @flag --graph-opts            List of options allowed to set: nosleep-time - Measure on-CPU time only for function_graph tracer.
# @arg command!
ftrace() {
    :;
}
# }} perf ftrace

# {{ perf inject
# @cmd Filter to augment the events stream with additional information
# @flag -b --build-ids                       Inject build-ids into the output stream
# @flag --buildid-all:                       Inject build-ids of all DSOs into the output stream
# @flag -v --verbose                         Be more verbose.
# @option -i --input                         Input file name.
# @option -o --output                        Output file name.
# @flag -s --sched-stat                      Merge sched_stat and sched_switch for getting events where and how long tasks slept.
# @option --kallsyms <file>                  kallsyms pathname
# @flag --itrace                             Decode Instruction Tracing data, replacing it with synthesized events.
# @flag --strip                              Use with --itrace to strip out non-synthesized events.
# @flag -j --jit                             Process jitdump files by injecting the mmap records corresponding to jitted functions.
# @flag -f --force                           Don’t complain, do it.
# @option --vm-time-correlation <OPTIONS>    Some architectures may capture AUX area data which contains timestamps affected by virtualization.
inject() {
    :;
}
# }} perf inject

# {{ perf iostat
# @cmd Show I/O performance metrics
iostat() {
    :;
}

# {{{ perf iostat list
# @cmd
iostat::list() {
    :;
}
# }}} perf iostat list
# }} perf iostat

# {{ perf kallsyms
# @cmd Searches running kernel for symbols
# @flag -v --verbose    Increase verbosity level, showing details about symbol table loading, etc.
# @arg symbol_name-symbol_name <symbol_name[,symbol_name...]>
kallsyms() {
    :;
}
# }} perf kallsyms

# {{ perf kmem
# @cmd Tool to trace/measure kernel memory properties
# @option -i --input <file>            Select the input file (default: perf.data unless stdin is a fifo)
# @flag -f --force                     Don’t do ownership validation
# @flag -v --verbose                   Be more verbose.
# @flag --caller                       Show per-callsite statistics
# @flag --alloc                        Show per-allocation statistics
# @option -s --sort <key[,key2...]>    Sort the output (default: frag,hit,bytes for slab and bytes,hit for page).
# @option -l --line <num>              Print n lines only
# @flag --raw-ip                       Print raw ip instead of symbol
# @flag --slab                         Analyze SLAB allocator events.
# @flag --page                         Analyze page allocator events
# @flag --live                         Show live page stat.
# @option --time <<start>,<stop>>      Only analyze samples within given time window: <start>,<stop>.
kmem() {
    :;
}

# {{{ perf kmem record
# @cmd
kmem::record() {
    :;
}
# }}} perf kmem record

# {{{ perf kmem stat
# @cmd
kmem::stat() {
    :;
}
# }}} perf kmem stat
# }} perf kmem

# {{ perf kvm
# @cmd Tool to trace/measure kvm guest os
# @option -i --input <path>         Input file name, for the report, diff and buildid-list subcommands.
# @option -o --output <path>        Output file name, for the record subcommand.
# @flag --host                      Collect host side performance profile.
# @flag --guest                     Collect guest side performance profile.
# @option --guestmount <path>       Guest os root file system mount directory.
# @option --guestkallsyms <path>    Guest os /proc/kallsyms file copy.
# @option --guestmodules <path>     Guest os /proc/modules file copy.
# @option --guestvmlinux <path>     Guest os kernel vmlinux.
# @flag -v --verbose                Be more verbose (show counter open errors, etc).
kvm() {
    :;
}

# {{{ perf kvm top
# @cmd
kvm::top() {
    :;
}
# }}} perf kvm top

# {{{ perf kvm record
# @cmd
kvm::record() {
    :;
}
# }}} perf kvm record

# {{{ perf kvm report
# @cmd
kvm::report() {
    :;
}
# }}} perf kvm report

# {{{ perf kvm diff
# @cmd
kvm::diff() {
    :;
}
# }}} perf kvm diff

# {{{ perf kvm buildid-list
# @cmd
kvm::buildid-list() {
    :;
}
# }}} perf kvm buildid-list

# {{{ perf kvm stat
# @cmd
kvm::stat() {
    :;
}

# {{{{ perf kvm stat record
# @cmd
kvm::stat::record() {
    :;
}
# }}}} perf kvm stat record

# {{{{ perf kvm stat report
# @cmd
# @option --vcpu <value>      analyze events which occur on this vcpu.
# @option --event <value>     event to be analyzed.
# @option -k --key <value>    Sorting key.
# @option -p --pid            Analyze events only for given process ID(s) (comma separated list).
kvm::stat::report() {
    :;
}
# }}}} perf kvm stat report

# {{{{ perf kvm stat live
# @cmd
# @flag -d --display            Time in seconds between display updates
# @option -m --mmap-pages       Number of mmap data pages (must be a power of two) or size specification with appended unit character - B/K/M/G.
# @flag -a --all-cpus           System-wide collection from all CPUs.
# @option -p --pid              Analyze events only for given process ID(s) (comma separated list).
# @option --vcpu <value>        analyze events which occur on this vcpu.
# @option --event <value>       event to be analyzed.
# @option -k --key <value>      Sorting key.
# @option --duration <value>    Show events other than HLT (x86 only) or Wait state (s390 only) that take longer than duration usecs.
# @flag --proc-map-timeout      When processing pre-existing threads /proc/XXX/mmap, it may take a long time, because the file may be huge.
kvm::stat::live() {
    :;
}
# }}}} perf kvm stat live
# }}} perf kvm stat
# }} perf kvm

# {{ perf list
# @cmd List all symbolic event types
# @flag -d --desc         Print extra event descriptions.
# @flag --no-desc         Don’t print descriptions.
# @flag -v --long-desc    Print longer event descriptions.
# @flag --debug           Enable debugging output.
# @flag --details         Print how named events are resolved internally into perf events, and also any extra expressions computed by perf stat.
# @flag --deprecated      Print deprecated events.
# @arg enum[hw|sw|cache|tracepoint|pmu|sdt|metric|metricgroup|event_glob]
list() {
    :;
}
# }} perf list

# {{ perf lock
# @cmd Analyze lock events
# @option -i --input <file>    Input file name.
# @flag -v --verbose           Be more verbose (show symbol address, etc).
# @flag -D --dump-raw-trace    Dump raw trace in ASCII.
# @flag -f --force             Don’t complain, do it.
lock() {
    :;
}

# {{{ perf lock record
# @cmd
lock::record() {
    :;
}
# }}} perf lock record

# {{{ perf lock report
# @cmd
# @option -k --key[acquired|contended|avg_wait|wait_total|wait_max|wait_min] <value>  Sorting key.
lock::report() {
    :;
}
# }}} perf lock report

# {{{ perf lock script
# @cmd
lock::script() {
    :;
}
# }}} perf lock script

# {{{ perf lock info
# @cmd
# @flag -t --threads    dump thread list in perf.data
# @flag -m --map        dump map of lock instances (address:name table)
lock::info() {
    :;
}
# }}} perf lock info
# }} perf lock

# {{ perf mem
# @cmd Profile memory accesses
# @option -i --input <file>                   Input file name.
# @flag -f --force                            Don’t do ownership validation
# @option -t --type[load|store] <type>        Select the memory operation type: load or store
# @flag -D --dump-raw-samples                 Dump the raw decoded samples on the screen in a format that is easy to parse with one sample per line.
# @option -x --field-separator <separator>    Specify the field separator used when dump raw samples (-D option).
# @option -C --cpu <cpu>                      Monitor only on the list of CPUs provided.
# @flag -U --hide-unresolved                  Only display entries resolved to a symbol.
# @flag -p --phys-data                        Record/Report sample physical addresses
# @flag --data-page-size                      Record/Report sample data address page size
mem() {
    :;
}

# {{{ perf mem record
# @cmd
# @option -e --event <event>    Event selector.
# @flag -K --all-kernel         Configure all used events to run in kernel space.
# @flag -U --all-user           Configure all used events to run in user space.
# @flag -v --verbose            Be more verbose (show counter open errors, etc)
# @option --ldlat <n>           Specify desired latency for loads event.
mem::record() {
    :;
}
# }}} perf mem record
# }} perf mem

# {{ perf record
# @cmd Run a command and record its profile into perf.data
# @option -e --event                        Select the PMU event.
# @option --filter <filter>                 Event filter.
# @flag --exclude-perf                      Don’t record events issued by perf itself.
# @flag -a --all-cpus                       System-wide collection from all CPUs (default if no target is specified).
# @option -p --pid                          Record events on existing process ID (comma separated list).
# @option -t --tid                          Record events on existing thread ID (comma separated list).
# @option -u --uid                          Record events in threads owned by uid.
# @option -r --realtime                     Collect data with this RT SCHED_FIFO priority.
# @flag --no-buffering                      Collect data without buffering.
# @option -c --count                        Event period to sample.
# @option -o --output                       Output file name.
# @flag -i --no-inherit                     Child tasks do not inherit counters.
# @option -F --freq                         Profile at this frequency.
# @flag --strict-freq                       Fail if the specified frequency can’t be used.
# @option -m --mmap-pages                   Number of mmap data pages (must be a power of two) or size specification with appended unit character - B/K/M/G.
# @flag --group                             Put all events in a single event group.
# @flag -g                                  Enables call-graph (stack chain/backtrace) recording for both kernel space and user space.
# @flag --call-graph                        Setup and enable call-graph (stack chain/backtrace) recording, implies -g.
# @flag -q --quiet                          Don’t print any message, useful for scripting.
# @flag -v --verbose                        Be more verbose (show counter open errors, etc).
# @flag -s --stat                           Record per-thread event counts.
# @flag -d --data                           Record the sample virtual addresses.
# @flag --phys-data                         Record the sample physical addresses.
# @flag --data-page-size                    Record the sampled data address data page size.
# @flag --code-page-size                    Record the sampled code address (ip) page size
# @flag -T --timestamp                      Record the sample timestamps.
# @flag -P --period                         Record the sample period.
# @flag --sample-cpu                        Record the sample cpu.
# @flag -n --no-samples                     Don’t sample.
# @flag -R --raw-samples                    Collect raw sample records from all opened counters (default for tracepoint counters).
# @flag -C --cpu                            Collect samples only on the list of CPUs provided.
# @flag -B --no-buildid                     Do not save the build ids of binaries in the perf.data files.
# @flag -N --no-buildid-cache               Do not update the buildid cache.
# @option -G --cgroup* <name,>              monitor only in the container (cgroup) called "name".
# @flag -b --branch-any                     Enable taken branch stack sampling.
# @flag -j --branch-filter                  Enable taken branch stack sampling.
# @flag --weight                            Enable weightened sampling.
# @flag --namespaces                        Record events of type PERF_RECORD_NAMESPACES.
# @flag --all-cgroups                       Record events of type PERF_RECORD_CGROUP.
# @flag --transaction                       Record transaction flags for transaction related events.
# @flag --per-thread                        Use per-thread mmaps.
# @option -D --delay                        After starting the program, wait msecs before measuring (-1: start with events disabled).
# @flag -I --intr-regs                      Capture machine state (registers) at interrupt, i.e., on counter overflows for each sample.
# @flag --user-regs                         Similar to -I, but capture user registers at sample time.
# @flag --running-time                      Record running and enabled time for read events (:S)
# @flag -k --clockid                        Sets the clock id to use for the various time fields in the perf_event_type records.
# @flag -S --snapshot                       Select AUX area tracing Snapshot Mode.
# @option --aux-sample <OPTIONS>            Select AUX area sampling.
# @flag --proc-map-timeout                  When processing pre-existing threads /proc/XXX/mmap, it may take a long time, because the file may be huge.
# @flag --switch-events                     Record context switch events i.e.
# @option --clang-path <PATH>               Path to clang binary to use for compiling BPF scriptlets.
# @option --clang-opt <OPTIONS>             Options passed to clang when compiling BPF scriptlets.
# @option --vmlinux <PATH>                  Specify vmlinux path which has debuginfo.
# @flag --buildid-all                       Record build-id of all DSOs regardless whether it’s actually hit or not.
# @flag --buildid-mmap                      Record build ids in mmap2 events, disables build id cache (implies --no-buildid).
# @option --aio <n>                         Use <n> control blocks in asynchronous (Posix AIO) trace writing mode (default: 1, max: 4).
# @option --affinity <mode>                 Set affinity mask of trace reading thread according to the policy defined by mode value: node - thread affinity mask is set to NUMA node cpu mask of the processed mmap buffer cpu - thread affinity mask is set to cpu of the processed mmap buffer
# @option --mmap-flush <number>             Specify minimal number of bytes that is extracted from mmap data pages and processed for output.
# @option -z --compression-level <n>        Produce compressed trace using specified level n (default: 1 - fastest compression, 22 - smallest trace)
# @flag --all-kernel                        Configure all used events to run in kernel space.
# @flag --all-user                          Configure all used events to run in user space.
# @flag --kernel-callchains                 Collect callchains only from kernel space.
# @flag --user-callchains                   Collect callchains only from user space.
# @flag --timestamp-boundary                Record timestamp boundary (time of first/last samples).
# @option --switch-output <mode>            Generate multiple perf.data files, timestamp prefixed, switching to a new one based on mode value: "signal" - when receiving a SIGUSR2 (default value) or <size> - when reaching the size threshold, size is expected to be a number with appended unit character - B/K/M/G <time> - when reaching the time threshold, size is expected to be a number with appended unit character - s/m/h/d
# @flag --switch-output-event               Events that will cause the switch of the perf.data file, auto-selecting --switch-output=signal, the results are similar as internally the side band thread will also send a SIGUSR2 to the main one.
# @option --switch-max-files <N>            When rotating perf.data with --switch-output, only keep N files.
# @flag --dry-run                           Parse options then exit.
# @flag --tail-synthesize                   Instead of collecting non-sample events (for example, fork, comm, mmap) at the beginning of record, collect them during finalizing an output file.
# @flag --overwrite                         Makes all events use an overwritable ring buffer.
# @flag --kcore                             Make a copy of /proc/kcore and place it into a directory with the perf data file.
# @option --max-size <size>                 Limit the sample data max size, <size> is expected to be a number with appended unit character - B/K/M/G
# @flag --num-thread-synthesize             The number of threads to run when synthesizing events for existing processes.
# @option --control <fd:ctl-fd[,ack-fd]>    ctl-fifo / ack-fifo are opened and used as ctl-fd / ack-fd as follows.
# @arg command!
record() {
    :;
}
# }} perf record

# {{ perf report
# @cmd Read perf.data (created by perf record) and display the profile
# @option -i --input                               Input file name.
# @flag -v --verbose                               Be more verbose.
# @flag -q --quiet                                 Do not show any message.
# @flag -n --show-nr-samples                       Show the number of samples for each symbol
# @flag --show-cpu-utilization                     Show sample percentage for different cpu modes.
# @flag -T --threads                               Show per-thread event counters.
# @option -c --comms                               Only consider symbols in these comms.
# @option --pid                                    Only show events for given process ID (comma separated list).
# @option --tid                                    Only show events for given thread ID (comma separated list).
# @option -d --dsos                                Only consider symbols in these dsos.
# @option -S --symbols                             Only consider these symbols.
# @option --symbol-filter                          Only show symbols that match (partially) with this filter.
# @flag -U --hide-unresolved                       Only display entries resolved to a symbol.
# @option -s --sort[pid|comm|dso|symbol|parent|cpu|socket|srcline|weight|local_weight|cgroup_id]  Sort histogram entries by given key(s) - multiple keys can be specified in CSV format.
# @option -F --fields                              Specify output field - multiple keys can be specified in CSV format.
# @option -p --parent <regex>                      A regex filter to identify parent.
# @flag -x --exclude-other                         Only display entries with parent-match.
# @option -w --column-widths <width[,width...]>    Force each column width to the provided list, for large terminal readability.
# @option -t --field-separator                     Use a special separator character and don’t pad with spaces, replacing all occurrences of this separator in symbol names (and other output) with a .
# @flag -D --dump-raw-trace                        Dump raw trace in ASCII.
# @flag --disable-order                            Disable raw trace ordering.
# @option -g --call-graph <print_type,threshold[,print_limit],order,sort_key[,branch],value>  Display call chains using type, min percent threshold, print limit, call order, sort key, optional branch and value.
# @flag --children                                 Accumulate callchain of children to parent entry so that then can show up in the output.
# @flag --max-stack                                Set the stack depth limit when parsing the callchain, anything beyond the specified depth will be ignored.
# @flag -G --inverted                              alias for inverted caller based call graph.
# @option --ignore-callees <regex>                 Ignore callees of the function(s) matching the given regex.
# @option --pretty[normal|raw] <key>               Pretty printing style.
# @flag --stdio                                    Use the stdio interface.
# @flag --stdio-color                              always, never or auto, allowing configuring color output via the command line, in addition to via "color.ui" .perfconfig.
# @flag --tui                                      Use the TUI interface, that is integrated with annotate and allows zooming into DSOs or threads, among other features.
# @flag --gtk                                      Use the GTK2 interface.
# @option -k --vmlinux <file>                      vmlinux pathname
# @flag --ignore-vmlinux                           Ignore vmlinux files.
# @option --kallsyms <file>                        kallsyms pathname
# @flag -m --modules                               Load module symbols.
# @flag -f --force                                 Don’t do ownership validation.
# @option --symfs <directory>                      Look for files with symbols relative to this directory.
# @flag -C --cpu                                   Only report samples for the list of CPUs provided.
# @option -M --disassembler-style                  Set disassembler style for objdump.
# @flag --source                                   Interleave source code with assembly code.
# @flag --asm-raw                                  Show raw instruction encoding of assembly instructions.
# @flag --show-total-period                        Show a column with the sum of periods.
# @flag -I --show-info                             Display extended information about the perf.data file.
# @flag -b --branch-stack                          Use the addresses of sampled taken branches instead of the instruction address to build the histograms.
# @flag --branch-history                           Add the addresses of sampled taken branches to the callstack.
# @option --objdump <path>                         Path to objdump binary.
# @option --prefix <N>                             Remove first N entries from source file path names in executables and add PREFIX.
# @option --prefix-strip <N>                       Remove first N entries from source file path names in executables and add PREFIX.
# @flag --group                                    Show event group information together.
# @flag --group-sort-idx                           Sort the output by the event at the index n in group.
# @flag --demangle                                 Demangle symbol names to human readable form.
# @flag --demangle-kernel                          Demangle kernel symbol names to human readable form (for C++ kernels).
# @flag --mem-mode                                 Use the data addresses of samples in addition to instruction addresses to build the histograms.
# @flag --percent-limit                            Do not show entries which have an overhead under that percent.
# @flag --percentage                               Determine how to display the overhead percentage of filtered entries.
# @flag --header                                   Show header information in the perf.data file.
# @flag --header-only                              Show only perf.data header (forces --stdio).
# @flag --time                                     Only analyze samples within given time window: <start>,<stop>.
# @option --switch-on <EVENT_NAME>                 Only consider events after this event is found.
# @option --switch-off <EVENT_NAME>                Stop considering events after this event is found.
# @flag --show-on-off-events                       Show the --switch-on/off events too.
# @flag --itrace                                   Options for decoding instruction tracing data.
# @flag --full-source-path                         Show the full path for source files for srcline output.
# @flag --show-ref-call-graph                      When multiple events are sampled, it may not be needed to collect callgraphs for all of them.
# @flag --stitch-lbr                               Show callgraph with stitched LBRs, which may have more complete callgraph.
# @flag --socket-filter                            Only report the samples on the processor socket that match with this filter
# @option --samples <N>                            Save N individual samples for each histogram entry to show context in perf report tui browser.
# @flag --raw-trace                                When displaying traceevent output, do not use print fmt or plugins.
# @flag --hierarchy                                Enable hierarchical output.
# @flag --inline                                   If a callgraph address belongs to an inlined function, the inline stack will be printed.
# @flag --mmaps                                    Show --tasks output plus mmap information in a format similar to /proc/<PID>/maps.
# @flag --ns                                       Show time stamps in nanoseconds.
# @flag --stats                                    Display overall events statistics without any further processing.
# @flag --tasks                                    Display monitored tasks stored in perf data.
# @flag --percent-type                             Set annotation percent type from following choices: global-period, local-period, global-hits, local-hits
# @flag --time-quantum                             Configure time quantum for time sort key.
# @flag --total-cycles                             When --total-cycles is specified, it supports sorting for all blocks by Sampled Cycles%.
# @flag --skip-empty                               Do not print 0 results in the --stat output.
report() {
    :;
}
# }} perf report

# {{ perf sched
# @cmd Tool to trace/measure scheduler properties (latencies)
# @option -i --input <file>      Input file name.
# @flag -v --verbose             Be more verbose.
# @option -D --dump-raw-trace    Display verbose dump of the sched data.
# @flag -f --force               Don’t complain, do it.
sched() {
    :;
}

# {{{ perf sched record
# @cmd
sched::record() {
    :;
}
# }}} perf sched record

# {{{ perf sched latency
# @cmd
sched::latency() {
    :;
}
# }}} perf sched latency

# {{{ perf sched map
# @cmd
# @flag --compact       Show only CPUs with activity.
# @flag --cpus          Show just entries with activities for the given CPUs.
# @flag --color-cpus    Highlight the given cpus.
# @flag --color-pids    Highlight the given pids.
sched::map() {
    :;
}
# }}} perf sched map

# {{{ perf sched replay
# @cmd
sched::replay() {
    :;
}
# }}} perf sched replay

# {{{ perf sched script
# @cmd
sched::script() {
    :;
}
# }}} perf sched script

# {{{ perf sched timehist
# @cmd
# @option -k --vmlinux <file>    vmlinux pathname
# @option --kallsyms <file>      kallsyms pathname
# @flag -g --call-graph          Display call chains if present (default on).
# @flag --max-stack              Maximum number of functions to display in backtrace, default 5.
# @option -C --cpu               Only show events for the given CPU(s) (comma separated list).
# @option -p --pid               Only show events for given process ID (comma separated list).
# @option -t --tid               Only show events for given thread ID (comma separated list).
# @flag -s --summary             Show only a summary of scheduling by thread with min, max, and average run times (in sec) and relative stddev.
# @flag -S --with-summary        Show all scheduling events followed by a summary by thread with min, max, and average run times (in sec) and relative stddev.
# @option --symfs <directory>    Look for files with symbols relative to this directory.
# @flag -V --cpu-visual          Show visual aid for sched switches by CPU: i marks idle time, s are scheduler events.
# @flag -w --wakeups             Show wakeup events.
# @flag -M --migrations          Show migration events.
# @flag -n --next                Show next task.
# @flag -I --idle-hist           Show idle-related events only.
# @flag --time                   Only analyze samples within given time window: <start>,<stop>.
# @flag --state                  Show task state when it switched out.
sched::timehist() {
    :;
}
# }}} perf sched timehist
# }} perf sched

# {{ perf script
# @cmd Read perf.data (created by perf record) and display trace output
# @option -D --dump-raw-trace                  Display verbose dump of the trace data.
# @option -L --Latency                         Show latency attributes (irqs/preemption disabled, etc).
# @option -l --list                            Display a list of available trace scripts.
# @option -s --script                          Process trace data with the given script ([lang]:script[.ext]).
# @option -g --gen-script                      Generate perf-script.[ext] starter script for given language, using current perf.data.
# @option --dlfilter <file>                    Filter sample events using the given shared object file.
# @option --dlarg <arg>                        Pass arg as an argument to the dlfilter.
# @flag --list-dlfilters                       Display a list of available dlfilters.
# @flag -a                                     Force system-wide collection.
# @option -i --input                           Input file name.
# @flag -d --debug-mode                        Do various checks like samples ordering and lost events.
# @option -F --fields[comm|tid|pid|time|cpu|event|trace|ip|sym|dso|addr|symoff|srcline|period|iregs|uregs|brstack|brstacksym|flags|bpf-output|brstackinsn|brstackoff|callindent|insn|insnlen|synth|phys_addr|metric|misc|srccode|ipc|data_page_size|code_page_size]  Comma separated list of fields to print.
# @option -k --vmlinux <file>                  vmlinux pathname
# @option --kallsyms <file>                    kallsyms pathname
# @option --symfs <directory>                  Look for files with symbols relative to this directory.
# @flag -G --hide-call-graph                   When printing symbols do not display call chain.
# @flag --stop-bt                              Stop display of callgraph at these symbols
# @flag -C --cpu                               Only report samples for the list of CPUs provided.
# @option -c --comms                           Only display events for these comms.
# @option --pid                                Only show events for given process ID (comma separated list).
# @option --tid                                Only show events for given thread ID (comma separated list).
# @flag -I --show-info                         Display extended information about the perf.data file.
# @flag --show-kernel-path                     Try to resolve the path of [kernel.kallsyms]
# @flag --show-task-events                     Display task related events (e.g. FORK, COMM, EXIT).
# @flag --show-mmap-events                     Display mmap related events (e.g. MMAP, MMAP2).
# @flag --show-namespace-events                Display namespace events i.e.
# @flag --show-switch-events                   Display context switch events i.e.
# @flag --show-lost-events                     Display lost events i.e.
# @flag --show-round-events                    Display finished round events i.e.
# @flag --show-bpf-events                      Display bpf events i.e.
# @flag --show-cgroup-events                   Display cgroup events i.e.
# @flag --show-text-poke-events                Display text poke events i.e.
# @flag --demangle                             Demangle symbol names to human readable form.
# @flag --demangle-kernel                      Demangle kernel symbol names to human readable form (for C++ kernels).
# @flag --header                               Show perf.data header.
# @flag --header-only                          Show only perf.data header.
# @flag --itrace                               Options for decoding instruction tracing data.
# @flag --full-source-path                     Show the full path for source files for srcline output.
# @flag --max-stack                            Set the stack depth limit when parsing the callchain, anything beyond the specified depth will be ignored.
# @flag --ns                                   Use 9 decimal places when displaying time (i.e.
# @flag -f --force                             Don’t do ownership validation.
# @flag --time                                 Only analyze samples within given time window: <start>,<stop>.
# @flag --max-blocks                           Set the maximum number of program blocks to print with brstackinsn for each sample.
# @flag --reltime                              Print time stamps relative to trace start.
# @flag --deltatime                            Print time stamps relative to previous event.
# @flag --per-event-dump                       Create per event files with a "perf.data.EVENT.dump" name instead of printing to stdout, useful, for instance, for generating flamegraphs.
# @flag --inline                               If a callgraph address belongs to an inlined function, the inline stack will be printed.
# @flag --insn-trace                           Show instruction stream for intel_pt traces.
# @flag --xed                                  Run xed disassembler on output.
# @option -S --symbols <symbol[,symbol...]>    Only consider the listed symbols.
# @flag --addr-range                           Use with -S or --symbols to list traced records within address range.
# @option --dsos                               Only consider symbols in these DSOs.
# @flag --call-trace                           Show call stream for intel_pt traces.
# @flag --call-ret-trace                       Show call and return stream for intel_pt traces.
# @flag --graph-function                       For itrace only show specified functions and their callees for itrace.
# @option --switch-on <EVENT_NAME>             Only consider events after this event is found.
# @option --switch-off <EVENT_NAME>            Stop considering events after this event is found.
# @flag --show-on-off-events                   Show the --switch-on/off events too.
# @flag --stitch-lbr                           Show callgraph with stitched LBRs, which may have more complete callgraph.
# @arg script!
# @arg args+
script() {
    :;
}

# {{{ perf script record
# @cmd
script::record() {
    :;
}
# }}} perf script record

# {{{ perf script report
# @cmd
script::report() {
    :;
}
# }}} perf script report
# }} perf script

# {{ perf stat
# @cmd Run a command and gather performance counter statistics
# @option -e --event                        Select the PMU event.
# @flag -i --no-inherit                     child tasks do not inherit counters
# @option -p --pid <pid>                    stat events on existing process id (comma separated list)
# @option -t --tid <tid>                    stat events on existing thread id (comma separated list)
# @flag -b --bpf-prog                       stat events on existing bpf program id (comma separated list), requiring root rights.
# @flag --bpf-counters                      Use BPF programs to aggregate readings from perf_events.
# @flag --bpf-attr-map                      With option "--bpf-counters", different perf-stat sessions share information about shared BPF programs and maps via a pinned hashmap.
# @flag -a --all-cpus                       system-wide collection from all CPUs (default if no target is specified)
# @flag --no-scale                          Don’t scale/normalize counter values
# @flag -d --detailed                       print more detailed statistics, can be specified up to 3 times
# @option -r --repeat <n>                   repeat command and print average + stddev (max: 100).
# @flag -B --big-num                        print large numbers with thousands' separators according to locale.
# @option -C --cpu                          Count only on the list of CPUs provided.
# @flag -A --no-aggr                        Do not aggregate counts across all monitored CPUs.
# @flag -n --null                           null run - Don’t start any counters.
# @flag -v --verbose                        be more verbose (show counter open errors, etc)
# @option -x --field-separator <SEP>        print counts using a CSV-style output to make it easy to import directly into spreadsheets.
# @flag --table                             Display time for each run (-r option), in a table format, e.g.:
# @option -G --cgroup <name>                monitor only in the container (cgroup) called "name".
# @option --for-each-cgroup <name>          Expand event list for each cgroup in "name" (allow multiple cgroups separated by comma).
# @option -o --output <file>                Print the output into the designated file.
# @flag --append                            Append to the output file designated with the -o option.
# @flag --log-fd                            Log output to fd, instead of stderr.
# @option --control <fd:ctl-fd[,ack-fd]>    ctl-fifo / ack-fifo are opened and used as ctl-fd / ack-fd as follows.
# @flag --pre                               Pre and post measurement hooks, e.g.:
# @flag --post                              Pre and post measurement hooks, e.g.:
# @option -I --interval-print <msecs>       Print count deltas every N milliseconds (minimum: 1ms) The overhead percentage could be high in some cases, for instance with small, sub 100ms intervals.
# @option --interval-count <times>          Print count deltas for fixed number of times.
# @flag --interval-clear                    Clear the screen before next interval.
# @option --timeout <msecs>                 Stop the perf stat session and print count deltas after N milliseconds (minimum: 10 ms).
# @flag --metric-only                       Only print computed metrics.
# @flag --per-socket                        Aggregate counts per processor socket for system-wide mode measurements.
# @flag --per-die                           Aggregate counts per processor die for system-wide mode measurements.
# @flag --per-core                          Aggregate counts per physical processor for system-wide mode measurements.
# @flag --per-thread                        Aggregate counts per monitored threads, when monitoring threads (-t option) or processes (-p option).
# @flag --per-node                          Aggregate counts per NUMA nodes for system-wide mode measurements.
# @option -D --delay <msecs>                After starting the program, wait msecs before measuring (-1: start with events disabled).
# @flag -T --transaction                    Print statistics of transactional execution if supported.
# @flag --metric-no-group                   By default, events to compute a metric are placed in weak groups.
# @flag --metric-no-merge                   By default metric events in different weak groups can be shared if one group contains all the events needed by another.
# @flag --quiet                             Don’t print output.
stat() {
    :;
}

# {{{ perf stat record
# @cmd
# @option -o --output <file>    Output file name.
stat::record() {
    :;
}
# }}} perf stat record

# {{{ perf stat report
# @cmd
# @option -i --input <file>      Input file name.
# @flag --per-socket             Aggregate counts per processor socket for system-wide mode measurements.
# @flag --per-die                Aggregate counts per processor die for system-wide mode measurements.
# @flag --per-core               Aggregate counts per physical processor for system-wide mode measurements.
# @flag -M --metrics             Print metrics or metricgroups specified in a comma separated list.
# @flag -A --no-aggr             Do not aggregate counts across all monitored CPUs.
# @flag --topdown                Print complete top-down metrics supported by the CPU.
# @flag --td-level               Print the top-down statistics that equal to or lower than the input level.
# @flag --no-merge               Do not merge results from same PMUs.
# @flag --smi-cost               Measure SMI cost if msr/aperf/ and msr/smi/ events are supported.
# @flag --all-kernel             Configure all used events to run in kernel space.
# @flag --all-user               Configure all used events to run in user space.
# @flag --percore-show-thread    The event modifier "percore" has supported to sum up the event counts for all hardware threads in a core and show the counts per core.
# @flag --summary                Print summary for interval mode (-I).
# @flag --no-csv-summary         Don’t print summary at the first column for CVS summary output.
stat::report() {
    :;
}
# }}} perf stat report
# }} perf stat

# {{ perf test
# @cmd Runs sanity tests.
# @flag -s --skip         Tests to skip (comma separated numeric list).
# @flag -v --verbose      Be more verbose.
# @flag -F --dont-fork    Do not fork child for each test, run all tests within single process.
# @arg test-name-fragments-test-numbers <<test-name-fragments>|<test-numbers>>
test() {
    :;
}

# {{{ perf test list
# @cmd
test::list() {
    :;
}
# }}} perf test list
# }} perf test

# {{ perf timechart
# @cmd Tool to visualize total system behavior during a workload
timechart() {
    :;
}
# }} perf timechart

# {{ perf top
# @cmd System profiling tool.
# @flag -a --all-cpus                              System-wide collection.
# @option -c --count <count>                       Event period to sample.
# @option -C --cpu <cpu>                           Monitor only on the list of CPUs provided.
# @option -d --delay <seconds>                     Number of seconds to delay between refreshes.
# @option -e --event <event>                       Select the PMU event.
# @option -E --entries <entries>                   Display this many functions.
# @option -f --count-filter <count>                Only display functions with more events than this.
# @flag --group                                    Put the counters into a counter group.
# @flag --group-sort-idx                           Sort the output by the event at the index n in group.
# @option -F --freq <freq>                         Profile at this frequency.
# @flag -i --inherit                               Child tasks do not inherit counters.
# @option -k --vmlinux <path>                      Path to vmlinux.
# @flag --ignore-vmlinux                           Ignore vmlinux files.
# @option --kallsyms <file>                        kallsyms pathname
# @option -m --mmap-pages <pages>                  Number of mmap data pages (must be a power of two) or size specification with appended unit character - B/K/M/G.
# @option -p --pid <pid>                           Profile events on existing Process ID (comma separated list).
# @option -t --tid <tid>                           Profile events on existing thread ID (comma separated list).
# @option -u --uid                                 Record events in threads owned by uid.
# @option -r --realtime <priority>                 Collect data with this RT SCHED_FIFO priority.
# @option --sym-annotate <symbol>                  Annotate this symbol.
# @flag -K --hide_kernel_symbols                   Hide kernel symbols.
# @flag -U --hide_user_symbols                     Hide user symbols.
# @flag --demangle-kernel                          Demangle kernel symbols.
# @flag -D --dump-symtab                           Dump the symbol table used for profiling.
# @flag -v --verbose                               Be more verbose (show counter open errors, etc).
# @flag -z --zero                                  Zero history across display updates.
# @option -s --sort[pid|comm|dso|symbol|parent|srcline|weight|local_weight|abort|in_tx|transaction|overhead|sample|period]  Sort by key(s): pid, comm, dso, symbol, parent, srcline, weight, local_weight, abort, in_tx, transaction, overhead, sample, period.
# @option --fields                                 Specify output field - multiple keys can be specified in CSV format.
# @flag -n --show-nr-samples                       Show a column with the number of samples.
# @flag --show-total-period                        Show a column with the sum of periods.
# @flag --dsos                                     Only consider symbols in these dsos.
# @flag --comms                                    Only consider symbols in these comms.
# @flag --symbols                                  Only consider these symbols.
# @option -M --disassembler-style                  Set disassembler style for objdump.
# @option --prefix <N>                             Remove first N entries from source file path names in executables and add PREFIX.
# @option --prefix-strip <N>                       Remove first N entries from source file path names in executables and add PREFIX.
# @flag --source                                   Interleave source code with assembly code.
# @flag --asm-raw                                  Show raw instruction encoding of assembly instructions.
# @flag -g                                         Enables call-graph (stack chain/backtrace) recording.
# @option --call-graph <mode,type,min[,limit],order[,key][,branch]>  Setup and enable call-graph (stack chain/backtrace) recording, implies -g.
# @flag --children                                 Accumulate callchain of children to parent entry so that then can show up in the output.
# @flag --max-stack                                Set the stack depth limit when parsing the callchain, anything beyond the specified depth will be ignored.
# @option --ignore-callees <regex>                 Ignore callees of the function(s) matching the given regex.
# @flag --percent-limit                            Do not show entries which have an overhead under that percent.
# @flag --percentage                               Determine how to display the overhead percentage of filtered entries.
# @option -w --column-widths <width[,width...]>    Force each column width to the provided list, for large terminal readability.
# @flag --proc-map-timeout                         When processing pre-existing threads /proc/XXX/mmap, it may take a long time, because the file may be huge.
# @flag -b --branch-any                            Enable taken branch stack sampling.
# @flag -j --branch-filter                         Enable taken branch stack sampling.
# @flag --raw-trace                                When displaying traceevent output, do not use print fmt or plugins.
# @flag --hierarchy                                Enable hierarchy output.
# @flag --overwrite                                Enable this to use just the most recent records, which helps in high core count machines such as Knights Landing/Mill, but right now is disabled by default as the pausing used in this technique is leading to loss of metadata events such as PERF_RECORD_MMAP which makes perf top unable to resolve samples, leading to lots of unknown samples appearing on the UI.
# @flag --force                                    Don’t do ownership validation.
# @flag --num-thread-synthesize                    The number of threads to run when synthesizing events for existing processes.
# @flag --namespaces                               Record events of type PERF_RECORD_NAMESPACES and display it with the cgroup_id sort key.
# @option -G --cgroup <name>                       monitor only in the container (cgroup) called "name".
# @flag --all-cgroups                              Record events of type PERF_RECORD_CGROUP and display it with the cgroup sort key.
# @option --switch-on <EVENT_NAME>                 Only consider events after this event is found.
# @option --switch-off <EVENT_NAME>                Stop considering events after this event is found.
# @flag --show-on-off-events                       Show the --switch-on/off events too.
# @flag --stitch-lbr                               Show callgraph with stitched LBRs, which may have more complete callgraph.
top() {
    :;
}
# }} perf top

# {{ perf version
# @cmd display the version of perf binary
# @flag --build-options    Prints the status of compiled-in libraries on the standard output.
version() {
    :;
}
# }} perf version

# {{ perf probe
# @cmd Define new dynamic tracepoints
# @option -k --vmlinux <PATH>           Specify vmlinux path which has debuginfo (Dwarf binary).
# @option -m --module <MODNAME|PATH>    Specify module name in which perf-probe searches probe points or lines.
# @option -s --source <PATH>            Specify path to kernel source.
# @flag -v --verbose                    Be more verbose (show parsed arguments, etc).
# @flag -q --quiet                      Be quiet (do not show any messages including errors).
# @option -a --add                      Define a probe event (see PROBE SYNTAX for detail).
# @option -d --del                      Delete probe events.
# @option -l --list <[GROUP:]EVENT>     List up current probe events.
# @option -L --line                     Show source code lines which can be probed.
# @option -V --vars                     Show available local variables at given probe point.
# @flag --externs                       (Only for --vars) Show external defined variables in addition to local variables.
# @flag --no-inlines                    (Only for --add) Search only for non-inlined functions.
# @option -F --funcs <FILTER>           Show available functions in given module or kernel.
# @option -D --definition               Show trace-event definition converted from given probe-event instead of write it into tracing/[k,u]probe_events.
# @option --filter                      (Only for --vars and --funcs) Set filter.
# @flag -f --force                      Forcibly add events with existing name.
# @flag -n --dry-run                    Dry run.
# @flag --cache                         (With --add) Cache the probes.
# @option --max-probes <NUM>            Set the maximum number of probe points for an event.
# @option --target-ns <PID:>            Obtain mount namespace information from the target pid.
# @option -x --exec <PATH>              Specify path to the executable or shared library file for user space tracing.
# @flag --demangle                      Demangle application symbols.
# @flag --demangle-kernel               Demangle kernel symbols.
probe() {
    :;
}
# }} perf probe

# {{ perf trace
# @cmd strace inspired tool
# @flag -a --all-cpus                  System-wide collection from all CPUs.
# @flag -e                             List of syscalls and other perf events (tracepoints, HW cache events, etc) to show.
# @flag --expr                         List of syscalls and other perf events (tracepoints, HW cache events, etc) to show.
# @flag --event                        List of syscalls and other perf events (tracepoints, HW cache events, etc) to show.
# @option --filter <filter>            Event filter.
# @option -D --delay <msecs>           After starting the program, wait msecs before measuring.
# @option -o --output                  Output file name.
# @option -p --pid                     Record events on existing process ID (comma separated list).
# @option -t --tid                     Record events on existing thread ID (comma separated list).
# @option -u --uid                     Record events in threads owned by uid.
# @flag -G --cgroup                    Record events in threads in a cgroup.
# @option --filter-pids                Filter out events for these pids and for trace itself (comma separated list).
# @flag -v --verbose                   Increase the verbosity level.
# @flag --no-inherit                   Child tasks do not inherit counters.
# @option -m --mmap-pages              Number of mmap data pages (must be a power of two) or size specification with appended unit character - B/K/M/G.
# @flag -C --cpu                       Collect samples only on the list of CPUs provided.
# @flag --duration                     Show only events that had a duration greater than N.M ms.
# @flag --sched                        Accrue thread runtime and provide a summary at the end of the session.
# @flag --failure                      Show only syscalls that failed, i.e.
# @flag -i --input                     Process events from a given perf data file.
# @flag -T --time                      Print full timestamp rather time relative to first sample.
# @flag --comm                         Show process COMM right beside its ID, on by default, disable with --no-comm.
# @flag -s --summary                   Show only a summary of syscalls by thread with min, max, and average times (in msec) and relative stddev.
# @flag -S --with-summary              Show all syscalls followed by a summary by thread with min, max, and average times (in msec) and relative stddev.
# @flag --errno-summary                To be used with -s or -S, to show stats for the errnos experienced by syscalls, using only this option will trigger --summary.
# @flag --tool_stats                   Show tool stats such as number of times fd→pathname was discovered thru hooking the open syscall return + vfs_getname or via reading /proc/pid/fd, etc.
# @flag -f --force                     Don’t complain, do it.
# @option -F --pf[all|min|maj]         Trace pagefaults.
# @flag --syscalls                     Trace system calls.
# @option --call-graph <mode,type,min[,limit],order[,key][,branch]>  Setup and enable call-graph (stack chain/backtrace) recording.
# @flag --kernel-syscall-graph         Show the kernel callchains on the syscall exit path.
# @option --max-events <N>             Stop after processing N events.
# @option --switch-on <EVENT_NAME>     Only consider events after this event is found.
# @option --switch-off <EVENT_NAME>    Stop considering events after this event is found.
# @flag --show-on-off-events           Show the --switch-on/off events too.
# @flag --max-stack                    Set the stack depth limit when parsing the callchain, anything beyond the specified depth will be ignored.
# @flag --min-stack                    Set the stack depth limit when parsing the callchain, anything below the specified depth will be ignored.
# @flag --print-sample                 Print the PERF_RECORD_SAMPLE PERF_SAMPLE_ info for the raw_syscalls:sys_{enter,exit} tracepoints, for debugging.
# @flag --proc-map-timeout             When processing pre-existing threads /proc/XXX/mmap, it may take a long time, because the file may be huge.
# @flag --sort-events                  Do sorting on batches of events, use when noticing out of order events that may happen, for instance, when a thread gets migrated to a different CPU while processing a syscall.
# @flag --libtraceevent_print          Use libtraceevent to print tracepoint arguments.
# @flag --map-dump                     Dump BPF maps setup by events passed via -e, for instance the augmented_raw_syscalls living in tools/perf/examples/bpf/augmented_raw_syscalls.c.
trace() {
    :;
}

# {{{ perf trace record
# @cmd
trace::record() {
    :;
}
# }}} perf trace record
# }} perf trace

command eval "$(argc --argc-eval "$0" "$@")"