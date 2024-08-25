_patch_help() {
    if [[  "$#" -eq 1 ]]; then
        $1 --help | _patch_help_strip_ansi | \
        sed \
            -e '1,/^ \+Options:/d' \
            -e '/^ \+[A-Z].*/d' \
            -e '/^ \+\(-\S\+\)/ s/ : /  /' \
            -e 's/^ \+\(-\S\+\)\( (\(-\S\+\))\)/    \1 \3  /' \

    fi
    cat <<-'EOF' | _patch_help_embed_help $@ 
# audit
## system - Perform local security scan
### remote <host> - Remote security scan
## dockerfile <file> - Analyze Dockerfile
# show
## version - Show Lynis version
## help - Show help
# update
## info - Show update details
EOF
}

_patch_table() {
    if [[ "$*" == "lynis" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'
    else
        cat
    fi
}
