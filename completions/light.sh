#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -H                            Show this help and exit
# @flag -h                            Show this help and exit
# @flag -V                            Show program version and exit
# @flag -L                            List available devices
# @option -A <value>                  Increase brightness by value
# @option -U <value>                  Decrease brightness by value
# @option -T <value>                  Multiply brightness by value (can be a non-whole number, ignores raw mode)
# @option -S <value>                  Set brightness to value
# @flag -G                            Get brightness
# @option -N <value>                  Set minimum brightness to value
# @flag -P                            Get minimum brightness
# @flag -O                            Save the current brightness
# @flag -I                            Restore the previously saved brightness
# @flag -r                            Interpret input and output values in raw mode (ignored for -T)
# @option -s[`_choice_controller`]    Specify device target path to use, use -L to list available
# @option -v[`_choice_verbosity`]     Specify the verbosity level (default 0)
# @arg value

_choice_controller() {
    light -L 2>/dev/null | sed -n '2,$ s/^\s\+\(\S\+\)$/\1/p'
}

_choice_verbosity() {
    cat <<-'EOF'
0	Values only
1	Values, Errors.
2	Values, Errors, Warnings.
3	Values, Errors, Warnings, Notices.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"