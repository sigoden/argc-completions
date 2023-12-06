#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -absname                            Show absolute filenames in error messages
# @flag -no-absname                         Do not try to show absolute filenames in error messages (default)
# @option -alert <list>                     Enable or disable alerts according to <list>: +<alertname>  enable alert <alertname> -<alertname>  disable alert <alertname> ++<alertname> treat <alertname> as fatal error --<alertname> treat <alertname> as non-fatal @<alertname>  enable <alertname> and treat it as fatal error
# @option -I <dir>                          Add <dir> to the list of include directories
# @option -init <file>                      Load <file> instead of default init file
# @flag -labels                             Use commuting label mode
# @flag -alias-deps                         Do record dependencies for module aliases
# @flag -no-alias-deps                      Do not record dependencies for module aliases
# @flag -app-funct                          Activate applicative functors
# @flag -no-app-funct                       Deactivate applicative functors
# @flag -noassert                           Do not compile assertion checks
# @flag -noinit                             Do not load any init file
# @flag -nolabels                           Ignore non-optional labels in types
# @flag -noprompt                           Suppress all prompts
# @flag -nopromptcont                       Suppress prompts for continuation lines of multi-line inputs
# @flag -nostdlib                           Do not add default directory to the list of include directories
# @flag -nocwd                              Do not implicitly add the current directory to the load path
# @option -open <module>                    Opens the module <module> before typing
# @option -ppx <command>                    Pipe abstract syntax trees through preprocessor <command>
# @flag -principal                          Check principality of type inference
# @flag -no-principal                       Do not check principality of type inference (default)
# @flag -rectypes                           Allow arbitrary recursive types
# @flag -no-rectypes                        Do not allow arbitrary recursive types (default)
# @flag -safe-string                        (default unconditionally since 5.0)
# @flag -safer-matching                     Do not use type information to optimize pattern-matching
# @flag -short-paths                        Shorten paths in types
# @flag -stdin                              Read script from standard input
# @flag -strict-sequence                    Left-hand part of a sequence must have type unit
# @flag -no-strict-sequence                 Left-hand part of a sequence need not have type unit (default)
# @flag -strict-formats                     Reject invalid formats accepted by legacy implementations (default)
# @flag -no-strict-formats                  Accept invalid formats accepted by legacy implementations
# @flag -unboxed-types                      unannotated unboxable types will be unboxed
# @flag -no-unboxed-types                   unannotated unboxable types will not be unboxed (default)
# @flag -unsafe                             Do not compile bounds checking on array and string access
# @flag -unsafe-string                      (option not available)
# @flag -version                            Print version and exit
# @flag --version                           Print version and exit
# @flag -no-version                         Do not print version at startup
# @flag -vnum                               Print version number and exit
# @option -w <list>                         Enable or disable warnings according to <list>: +<spec>  enable warnings in <spec> -<spec>  disable warnings in <spec> @<spec>  enable warnings in <spec> and treat them as errors <num>  a single warning number <num1>..<num2>  a range of consecutive warning numbers <letter>  a predefined set
# @option -warn-error <list>                Enable or disable error status for warnings according
# @flag -warn-help                          Show description of warning numbers
# @option -color[auto|always|never]         Enable or disable colors in compiler messages
# @option -error-style[contextual|short]    Control the way error messages and warnings are printed snippet corresponding to the location of the error
# @option -args <file>                      Read additional newline-terminated command line arguments from <file>
# @option -args0 <file>                     Read additional null character terminated command line arguments from <file>
# @option -e <script>                       Evaluate given script
# @flag -help                               Display this list of options
# @flag --help                              Display this list of options
# @arg files+

command eval "$(argc --argc-eval "$0" "$@")"