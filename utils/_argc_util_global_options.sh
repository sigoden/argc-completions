_argc_util_global_options() {
    local name var_name opts
    for name in $@; do
        var_name="argc_$(echo "$name" | sed 's/^-\+//' | tr '-' '_')"
        if [[ -n "${!var_name}" ]]; then
            if [[ "${!var_name}" -eq 1 ]]; then
                opts="$opts $name"
            else
                opts="$opts $name ${!var_name}"
            fi
        fi
    done
    echo "$opts"
}