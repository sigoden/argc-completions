_argc_util_exist_cygpath() {
    if [[ -z $_argc_var_exist_cygpath ]]; then
        if [[ -x "$(command -v cygpath)" ]]; then
            _argc_var_exist_cygpath=0
        else
            _argc_var_exist_cygpath=1
        fi
    fi
    return $_argc_var_exist_cygpath
}