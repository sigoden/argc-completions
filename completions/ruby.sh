#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -0 <octal>                              specify record separator (\0, if no argument) (-00 for paragraph mode, -0777 for slurp mode)
# @flag -a                                        autosplit mode with -n or -p (splits $_ into $F)
# @flag -c                                        check syntax only
# @option -C <directory>                          cd to directory before executing your script
# @flag -d --debug                                set debugging flags (set $DEBUG to true)
# @option -e <command>                            one line of script.
# @option -E --encoding <ex[:in]>                 specify the default external and internal character encodings
# @option -F <pattern>                            split() pattern for autosplit (-a)
# @option -i <extension>                          edit ARGV files in place (make backup if extension supplied)
# @option -I <directory>                          specify $LOAD_PATH directory (may be used more than once)
# @flag -l                                        enable line ending processing
# @flag -n                                        assume 'while gets(); ... end' loop around your script
# @flag -p                                        assume loop like -n but print line also like sed
# @option -r <library>                            require the library before executing your script
# @flag -s                                        enable some switch parsing for switches after script name
# @flag -S                                        look for the script using PATH environment variable
# @flag -v                                        print the version number, then turn on verbose mode
# @flag -w                                        turn warnings on for your script
# @option -W <level=2|:category>                  set warning level; 0=silence, 1=medium, 2=verbose
# @option -x <directory>                          strip off text before ♯!ruby line and perhaps cd to directory
# @flag --jit                                     enable JIT for the platform, same as --yjit
# @flag --yjit                                    enable in-process JIT compiler
# @flag --rjit                                    enable pure-Ruby JIT compiler (experimental)
# @flag --copyright                               print the copyright
# @option --dump <{insns|parsetree|...}[,...]>    dump debug information.
# @option --enable <{jit|rubyopt|...}[,...]>
# @option --disable <{jit|rubyopt|...}[,...]>     enable or disable features.
# @option --external-encoding <encoding>
# @option --internal-encoding <encoding>          specify the default external or internal character encoding
# @option --parser <prism>                        the parser used to parse Ruby code (experimental)
# @option --backtrace-limit <num>                 limit the maximum length of backtrace
# @flag --verbose                                 turn on verbose mode and disable script from stdin
# @flag --version                                 print the version number, then exit
# @option --crash-report <TEMPLATE>               template of crash report files
# @flag -y --yydebug                              print log of parser.
# @flag --help                                    show this message, -h for short message
# @option --yjit-exec-mem-size <num>              Size of executable memory block in MiB (default: 48)
# @option --yjit-call-threshold <num>             Number of calls to trigger JIT
# @option --yjit-cold-threshold <num>             Global calls after which ISEQs not compiled (default: 200K)
# @flag --yjit-stats                              Enable collecting YJIT statistics
# @flag --yjit-disable                            Disable YJIT for lazily enabling it with RubyVM::YJIT.enable
# @flag --yjit-code-gc                            Run code GC when the code size reaches the limit
# @flag --yjit-perf                               Enable frame pointers and perf profiling
# @flag --yjit-trace-exits                        Record Ruby source location when exiting from generated code
# @option --yjit-trace-exits-sample-rate <num>    Trace exit locations only every Nth occurrence
# @option --rjit-exec-mem-size <num>              Size of executable memory block in MiB (default: 64)
# @option --rjit-call-threshold <num>             Number of calls to trigger JIT (default: 10)
# @flag --rjit-stats                              Enable collecting RJIT statistics
# @flag --rjit-disable                            Disable RJIT for lazily enabling it with RubyVM::RJIT.enable
# @flag --rjit-trace                              Allow TracePoint during JIT compilation
# @flag --rjit-trace-exits                        Trace side exit locations
# @arg programfile

command eval "$(argc --argc-eval "$0" "$@")"