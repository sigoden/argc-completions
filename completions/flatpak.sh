#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_delegate() {
    line="${argc__args[*]}"
    cur="${argc__args[-1]}"
    if [[ "$cur" =~ ^-.*= ]]; then
        echo "__argc_prefix=${cur%%=*}="
        echo "__argc_filter=${cur#*=}"
    fi
    while IFS=$'\n' read -r value; do
        case "$value" in
        __FLATPAK_DIR)
            _argc_util_comp_path dir
            ;;
        __FLATPAK_*FILE)
            _argc_util_comp_path
            ;;
        *)
            if [[ "$value" == *" " ]]; then
                echo "$value"
            else
                printf "%s\0\n" "$value"
            fi
        esac
    done < <(flatpak complete "$line" "${#line}" "$cur")
}

command eval "$(argc --argc-eval "$0" "$@")"