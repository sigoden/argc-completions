#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                              display this help and exit
# @flag --version                           output version information and exit
# @flag -E --fatal-warnings                 once: warnings become errors, twice: stop execution at first error
# @flag -i --interactive                    unbuffer output, ignore interrupts
# @flag -P --prefix-builtins                force a `m4_' prefix to all builtins
# @flag -Q                                  suppress some warnings for builtins
# @flag --quiet                             suppress some warnings for builtins
# @flag --silent                            suppress some warnings for builtins
# @option --warn-macro-sequence <REGEXP>    warn if macro definition matches REGEXP, default \$\({[^}]*}\|[0-9][0-9]+\)
# @option -D --define <NAME[=VALUE]>        define NAME as having VALUE, or empty
# @option -I --include <DIRECTORY>          append DIRECTORY to include path
# @flag -s --synclines                      generate `#line NUM "FILE"' lines
# @option -U --undefine <NAME>              undefine NAME
# @flag -g --gnu                            override -G to re-enable GNU extensions
# @flag -G --traditional                    suppress all GNU extensions
# @option -H --hashsize <PRIME>             set symbol lookup hash table size [509]
# @option -L --nesting-limit <NUMBER>       change nesting limit, 0 for unlimited [0]
# @option -F --freeze-state <FILE>          produce a frozen state on FILE at end
# @option -R --reload-state <FILE>          reload a frozen state from FILE at start
# @option -d --debug <FLAGS>                set debug level (no FLAGS implies `aeq')
# @option --debugfile <FILE>                redirect debug and trace output to FILE (default stderr, discard if empty string)
# @option -l --arglength <NUM>              restrict macro tracing size
# @option -t --trace <NAME>                 trace NAME when it is defined
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"