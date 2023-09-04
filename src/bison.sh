_patch_help() {
    
    $@ --help | \
    sed \
        -e '/^FEATURES /, /^\s*/ d' \
        -e '/^Warning categories /, /^\s*/ d' \
        -e '/^WHEN /, /^\s*/ d' \
        -e '/^THINGS /, /^\s*/ d' \

}

_patch_table() {
    _patch_table_edit_options \
        '--category;[`_choice_warning_category`]' \
        '--color;[`_choice_color`]' \
        '--feature;*[`_choice_feature`]' \
        '--report;[`_choice_report`]' \

}

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

_choice_warning_category() {
    cat <<-'EOF'
conflicts-sr	S/R conflicts (enabled by default)
conflicts-rr	R/R conflicts (enabled by default)
counterexamples	generate conflict counterexamples
dangling-alias	string aliases not attached to a symbol
deprecated	obsolete constructs
empty-rule	empty rules without %empty
midrule-values	unset or unused midrule values
precedence	useless precedence and associativity
yacc	incompatibilities with POSIX Yacc
other	all other warnings (enabled by default)
all	all the warnings except 'counterexamples', 'dangling-alias' and 'yacc'
no-	turn off warnings in CATEGORY
none	turn off all the warnings
error=	treat warnings as errors
EOF
}
