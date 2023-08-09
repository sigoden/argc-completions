#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config-file <file>                Read config from file (default is $HOME/.gdu.yaml)
# @flag -g --const-gc                         Enable memory garbage collection during analysis with constant level set by GOGC
# @flag --enable-profiling                    Enable collection of profiling data and provide it on http://localhost:6060/debug/pprof/
# @flag -L --follow-symlinks                  Follow symlinks for files, i.e.
# @flag -h --help                             help for gdu
# @option -i --ignore-dirs*, <dir>            Absolute paths to ignore (separated by comma) (default [/proc,/dev,/sys,/run])
# @option -I --ignore-dirs-pattern*, <dir>    Absolute path patterns to ignore (separated by comma)
# @option -X --ignore-from <file>             Read absolute path patterns to ignore from file
# @option -f --input-file <file>              Import analysis from JSON file
# @option -l --log-file <file>                Path to a logfile (default "/dev/null")
# @option -m --max-cores <int>                Set max cores that GDU will use.
# @flag -c --no-color                         Do not use colorized output
# @flag -x --no-cross                         Do not cross filesystem boundaries
# @flag -H --no-hidden                        Ignore hidden directories (beginning with dot)
# @flag --no-mouse                            Do not use mouse
# @flag --no-prefix                           Show sizes as raw numbers without any prefixes (SI or binary) in non-interactive mode
# @flag -p --no-progress                      Do not show progress in non-interactive mode
# @flag -n --non-interactive                  Do not run in interactive mode
# @option -o --output-file <file>             Export all info into file as JSON
# @flag -a --show-apparent-size               Show apparent size
# @flag -d --show-disks                       Show all mounted disks
# @flag -B --show-relative-size               Show relative size
# @option --si[kB|MB|GB]                      Show sizes with decimal SI prefixes instead of binary prefixes (KiB, MiB, GiB)
# @flag -s --summarize                        Show only a total in non-interactive mode
# @flag -v --version                          Print version
# @flag --write-config                        Write current configuration to file (default is $HOME/.gdu.yaml)
# @arg directory_to_scan

command eval "$(argc --argc-eval "$0" "$@")"