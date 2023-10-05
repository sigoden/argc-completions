_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ help | sed '/^Commands:/,/^\s*$/ {s/^  mpc /  /;s/output # or //;}'

    else
        $1 help | \
        sed -n "s/^  $1 $2 \(.*\)/Usage: $1 $2 \1/p" | \
        sed \
            -e 's/  \+.*//' \
            -e 's/<on|once|off>/{on|once|off}/' \
            -e 's/<on|off>/{on|off}/' \

    fi
}

_patch_table() {
    if [[ "$*" == "mpc" ]]; then
        _patch_table_add_metadata inherit-flag-options

    elif [[ "$*" == "mpc add" ]] \
      || [[ "$*" == "mpc insert" ]] \
    ; then
        _patch_table_edit_arguments 'uri;[`_choice_song`]'

    elif [[ "$*" == "mpc playlist" ]]; then
        _patch_table_edit_arguments 'playlist;[`_choice_playlist`]'

    else
        cat
    fi
}

_choice_song() {
    mpc listall
}

_choice_playlist() {
    mpc lsplaylists
}
