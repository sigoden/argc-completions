_patch_help() { 
    _common_edit() {
        sed \
            -e '/^\s*-/ s|/-|, -|' \
            -e '/--version/ d' \
            -e 's/Usage: eval "$(\(.*\))"$/Usage: \1/' \

    }
    _patch_help_run_help $@ | _common_edit
}

_patch_table() { 
    if [[ "$*" == "pyenv exec" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'command;[`_choice_command`]' \
            'args;~[`_module_os_command_args`]' \

    elif [[ "$*" == "pyenv global" ]] \
      || [[ "$*" == "pyenv local" ]] \
      || [[ "$*" == "pyenv prefix" ]] \
      || [[ "$*" == "pyenv shell" ]] \
      || [[ "$*" == "pyenv uninstall" ]] \
    ; then
        _patch_table_edit_arguments \
            ';;' \
            'version;*[`_choice_installed_version`]' \

    elif [[ "$*" == "pyenv hooks" ]]; then
        _patch_table_edit_arguments \
            'command;[`_choice_command`]' \

    elif [[ "$*" == "pyenv init" ]]; then
        _patch_table_edit_options \
            '' ';;' \
            '--path(<path>)' \
            '--no-push-path' \
            '--detect-shell' \
            '--no-rehash' \
        | \
        _patch_table_edit_arguments \
            'shell;[bash|fish|zsh]' \
    
    elif [[ "$*" == "pyenv install" ]]; then
        _patch_table_edit_options \
            '--keep(<path>)' \
        | \
        _patch_table_edit_arguments \
            'version;[`_choice_install`]' \
            
    elif [[ "$*" == "pyenv latest" ]]; then
        _patch_table_edit_arguments \
            'prefix;[`_choice_prefix`]' \

    elif [[ "$*" == "pyenv whence" ]] \
      || [[ "$*" == "pyenv which" ]] \
    ; then
        _patch_table_edit_arguments \
            'command;[`_module_os_command`]' \

    else
        cat
    fi
}

_choice_command() {
    pyenv exec --complete
}

_choice_installed_version() {
    pyenv versions --bare
}

_choice_install() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_available_version
}

_choice_prefix() {
    pyenv prefix --complete
}

_choice_available_version() {
    pyenv install --list | sed '1d'
}
