_patch_help() {
    if [[ $# -le 2 ]]; then
        $@ --help 2>&1 | \
        _patch_help_preprocess_color | \
        sed \
            -e 's/^  //' \
            -e '/^Commands:/,/^[A-Z]/ {/^  [A-Z]/ d; /^\s*$/ d; s/ | /, /; s/\s\+\[\([^]]*\)\]/ <\1>/;}' \
            -e 's/,  /, /' \
            -e 's/▲ '"$*"'/Usage: '"$*"' [options]/'

    else
        _patch_help $1 $2  | sed -n '/^Commands/,/^[A-Z]/ s/^  \('$3' \(\S\+ \)*\) .*/Usage: '"$1 $2"' \1/p'
    fi
}
