_patch_help() {
    if [[ "$*" == "yadm" ]]; then
        $@ --help | \
        sed -n '/^Commands:/,/^\s*$/ {s/^  yadm /  /; s/ \[-\S\] /  /; s/ - /   /; p}'
        cat <<-'EOF'
  alt                     Create  symbolic  links  and process templates for any managed files matching the naming rules described in the ALTERNATES and TEMPLATES sections
  gitconfig               Pass options to the git config command.
  introspect <category>   Report internal yadm data. Supported categories are commands, configs, repo, and switches. 
  upgrade                 Version  3  of yadm uses a different directory for storing data
  version                 Print the version of yadm.
EOF
    elif [[ "$*" == "yadm config" ]]; then
        $@ --help | sed '/^\s*-/ s/ <> / <value> /'
    fi
}

_patch_table() {
    if [[ "$*" == "yadm" ]]; then
        _patch_table_edit_arguments ';;' 'cmd' 'args;~[`_choice_args`]'

    elif [[ "$*" == "yadm config" ]]; then
        _patch_table_edit_options \
            '--add(<name> <value>)' \
            '--get(<name>);[`_choice_config_key`]' \
            '--get-all(<name>);[`_choice_config_key`]' \
            '--get-color(<slot>)' \
            '--get-colorbool(<slot>)' \
            '--get-regexp(<name-regex>)' \
            '--get-urlmatch(<section>)' \
            '--remove-section(<old-name>)' \
            '--rename-section(<old-name> <new-name>)' \
            '--replace-all(<name> <value>);[`_choice_replace_key`]' \
            '--unset(<name>);[`_choice_config_key`]' \
            '--unset-all(<name>);~[`_choice_config_key`]' \

    else
        cat
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 0 git
}

_choice_config_key() {
    yadm introspect configs
}

_choice_replace_key() {
    if [[ "${#argc_replace_all[@]}" -eq 1 ]]; then
        _choice_config_key
    fi
}
