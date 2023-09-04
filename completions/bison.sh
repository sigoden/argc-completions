#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                             display this help and exit
# @flag -V --version                          output version information and exit
# @flag --print-localedir                     output directory containing locale-dependent data and exit
# @flag --print-datadir                       output directory containing skeletons and XSLT and exit
# @flag -u --update                           apply fixes to the source grammar file and exit
# @option -f --feature*[`_choice_feature`] <FEATURES>  activate miscellaneous features
# @option -W --warnings <CATEGORY>            report the warnings falling in CATEGORY
# @option --color[`_choice_color`] <WHEN>     whether to colorize the diagnostics
# @option --style <FILE>                      specify the CSS FILE for colorizer diagnostics
# @option -L --language                       specify the output programming language
# @option -S --skeleton <FILE>                specify the skeleton to use
# @flag -t --debug                            instrument the parser for tracing same as '-Dparse.trace'
# @flag --locations                           enable location support
# @option -D --define <NAME[=VALUE]>          similar to '%define NAME VALUE'
# @option -F --force-define <NAME[=VALUE]>    override '%define NAME VALUE'
# @option -p --name-prefix <PREFIX>           prepend PREFIX to the external symbols deprecated by '-Dapi.prefix={PREFIX}'
# @flag -l --no-lines                         don't generate '#line' directives
# @flag -k --token-table                      include a table of token names
# @flag -y --yacc                             emulate POSIX Yacc
# @option -H --header <FILE>                  also produce a header file
# @flag -d                                    likewise but cannot specify FILE (for POSIX Yacc)
# @option -r --report[`_choice_report`] <THINGS>  also produce details on the automaton
# @option --report-file <FILE>                write report to FILE
# @flag -v --verbose                          same as '--report=state'
# @option -b --file-prefix <PREFIX>           specify a PREFIX for output files
# @option -o --output <FILE>                  leave output to FILE
# @option -g --graph <FILE>                   also output a graph of the automaton
# @option --html <FILE>                       also output an HTML report of the automaton
# @option -x --xml <FILE>                     also output an XML report of the automaton
# @option -M --file-prefix-map <OLD=NEW>      replace prefix OLD with NEW when writing file paths in output files
# @arg file

_choice_feature() {
    cat <<-'EOF'
caret	show errors with carets
fixit	show machine-readable fixes
syntax-only	do not generate any file
all	all of the above
none	disable all of the above
EOF
}

_choice_color() {
    cat <<-'EOF'
always	colorize the output
never	don't colorize the output
auto	colorize if the output device is a tty
EOF

}

_choice_report() {
    cat <<-'EOF'
states	describe the states
itemsets	complete the core item sets with their closure
lookaheads	explicitly associate lookahead tokens to items
solved	describe shift/reduce conflicts solving
counterexamples	generate conflict counterexamples
all	include all the above information
none	disable the report
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"