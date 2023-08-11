_patch_help() { 
    if [[ "$*" == "hostnamectl" ]]; then
        $@ --help
    else
        cat <<-'EOF' | _patch_help_select_subcmd $@
hostnamectl status
hostnamectl hostname [NAME]
hostnamectl icon-name [NAME]
hostnamectl chassis [NAME]
hostnamectl deployment [NAME]
hostnamectl location [NAME]
EOF
    fi
}
