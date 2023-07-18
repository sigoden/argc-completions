#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --mode          set file permission bits to MODE, not a=rw - umask
# @flag -Z                   set the SELinux security context to default type
# @option --context <CTX>    like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX
# @flag --help               display this help and exit
# @flag --version            output version information and exit
# @arg name
# @arg type[`_choice_type`]

_choice_type() {
    cat <<-'EOF'
b	create a block (buffered) special file
c	create a character (unbuffered) special file
u	create a character (unbuffered) special file
p	create a FIFO
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"