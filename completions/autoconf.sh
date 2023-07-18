#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                        print this help, then exit
# @flag -V --version                     print version number, then exit
# @flag -v --verbose                     verbosely report processing
# @flag -d --debug                       don't remove temporary files
# @flag -f --force                       consider all files obsolete
# @option -o --output <FILE>             save output in FILE (stdout is the default)
# @option -W --warnings[`_choice_warnings`] <CATEGORY>  report the warnings falling in CATEGORY
# @option -B --prepend-include <DIR>     prepend directory DIR to search path
# @option -I --include <DIR>             append directory DIR to search path
# @option -t --trace <MACRO[:FORMAT]>    report the list of calls to MACRO
# @flag -i --initialization              also trace Autoconf's initialization process
# @arg template-file

_choice_warnings() {
    cat <<-'EOF'
cross	cross compilation issues
gnu	GNU coding standards (default in gnu and gnits modes)
obsolete	obsolete features or constructions (default)
override	user redefinitions of Automake rules or variables
portability	portability issues (default in gnu and gnits modes)
portability-recursive	nested Make variables (default with -Wportability)
extra-portability	extra portability issues related to obscure tools
syntax	dubious syntactic constructs (default)
unsupported	unsupported or incomplete features (default)
all	all the warnings
no-CATEGORY	turn off warnings in CATEGORY
none	turn off all the warnings
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"