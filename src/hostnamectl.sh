_patch_help() { 
    if [[ "$*" == "hostnamectl" ]]; then
        $@ --help
    else
        cat <<-'EOF' | _patch_help_embed_help $@
# status
# hostname [NAME]
# icon-name [NAME]
# chassis [NAME]
# deployment [NAME]
# location [NAME]
EOF
    fi
}
