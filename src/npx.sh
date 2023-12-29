_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
Usage: npx <cmd> args...
Options:
    --package <pkg>...    Specify npm packages
    --yes                 Suppress prompt with yes
    --no                  Suppress prompt with yes
    -c, --call            The positional arguments are used to generate the command string
EOF
}

_patch_table() {
    _patch_table_edit_arguments \
        'cmd;[`_choice_cmd`]' \
        'args;~[`_module_os_command_args`]' \

}

_choice_cmd() {
    bin_dir="$(_argc_util_path_resolve -u "$(npm root)" .bin)"
    if [[ -d "$bin_dir" ]]; then
        ls -1 "$bin_dir" | sed -n 's/^\([A-Za-z0-9_-]\+\)\*\?$/\1/p'
    fi
}
