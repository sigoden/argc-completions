#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --mode          set file mode (as in chmod), not a=rwx - umask
# @flag -p --parents         no error if existing, make parent directories as needed
# @flag -v --verbose         print a message for each created directory
# @flag -Z                   set SELinux security context of each created directory to the default type
# @option --context <CTX>    like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX
# @flag --help               display this help and exit
# @flag --version            output version information and exit
# @arg directory*

command eval "$(argc --argc-eval "$0" "$@")"