#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -allow-missing        applies missing (out-of-order) migrations
# @option -certfile <file>    file path to root CA's certificates in pem format (only support on mysql)
# @option -dir <path>         directory with migration files (default ".")
# @flag -h                    print help
# @flag -no-color             disable color output (NO_COLOR env variable supported)
# @flag -no-versioning        apply migration commands with no versioning, in file order, from directory pointed to
# @flag -s                    use sequential numbering for new migrations
# @option -ssl-cert <file>    file path to SSL certificates in pem format (only support on mysql)
# @option -ssl-key <file>     file path to SSL key in pem format (only support on mysql)
# @option -table <string>     migrations table name (default "goose_db_version")
# @flag -v                    enable verbose mode
# @flag -version              print version
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ -n "$GOOSE_DRIVER" ]] && [[ -n "$GOOSE_DBSTRING" ]]; then
        if [[ "$len" -lt 2 ]]; then
            _choice_action
            return
        fi
    else
        if [[ "$len" -lt 2 ]]; then
            _choice_driver
        elif [[ "$len" -eq 2 ]]; then
            if _argc_util_has_path_prefix; then
                _argc_util_comp_path
                return
            fi
        elif [[ "$len" -eq 3 ]]; then
            _choice_action
        fi
    fi
}

_choice_action() {
    goose -h 2>&1 | sed -n '/^Commands:/,/^\s*$/ s/^\s\+\(\S\+\).*/\1/p'
}

_choice_driver() {
    goose -h 2>&1 | sed -n '/^Drivers:/,/^\s*$/ s/^\s\+\(\S\+\)/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"