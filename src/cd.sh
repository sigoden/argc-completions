_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
usage:  cd file...
EOF
}
