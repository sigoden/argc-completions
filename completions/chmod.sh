#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --changes             like verbose but report only when a change is made
# @flag -f                       suppress most error messages
# @flag --silent                 suppress most error messages
# @flag --quiet                  suppress most error messages
# @flag -v --verbose             output a diagnostic for every file processed
# @flag --no-preserve-root       do not treat '/' specially (the default)
# @flag --preserve-root          fail to operate recursively on '/'
# @option --reference <RFILE>    use RFILE's mode instead of MODE values
# @flag -R --recursive           change files and directories recursively
# @flag --help                   display this help and exit
# @flag --version                output version information and exit
# @arg args~[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_path
    else
        len="${#argc__positionals[@]}"
        if [[ "$len" -lt 2  ]]; then
            _choice_mode
        else
            _argc_util_comp_path
        fi
    fi
}

_choice_mode() {
    prefix="${ARGC_CWORD%,*},"
    filter="${ARGC_CWORD##*,}"
    echo "__argc_prefix=$ARGC_CWORD"
    echo __argc_filter=
    if [[ "$filter" == *'+'* ]] || [[ "$filter" == *'-'* ]] || [[ "$filter" == *'='* ]]; then
        filter="$filter+-="
    fi
    if [[ "$filter" == *'u'* ]] || [[ "$filter" == *'g'* ]] || [[ "$filter" == *'o'* ]]; then
        filter="${filter}ugo"
    fi
    cat <<-'EOF' | _argc_util_filter "$filter" | _argc_util_transform nospace
+
-
=
r	read
s	set uid/gid
t	sticky
w	write
x	execute
X	execute only if directory or executable to another
u	owner's current permissions
g	group's current permissions
o	others' current permissions
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"