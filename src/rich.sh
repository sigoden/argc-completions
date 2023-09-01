_patch_help() {
    $@ --help | \
    _patch_help_strip_ansi | \
    sed \
        -e '/╭\|╰/ d' \
        -e 's/^│//' \
        -e 's/\s\+│$//' \
        -e 's/-j  --emoji/    --emoji/' \

}
