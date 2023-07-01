_argc_util_param_select_options() {
    local option option_var option_val
    for option in "$@"; do
        option_var="argc_$(echo "$option" | sed 's/^-\+//' | tr '-' '_')"
        option_val="${!option_var}"
        if [[ -n "$option_val" ]]; then
            if [[ "$option_val" -eq 1 ]]; then
                echo -n " $option"
            else
                echo -n " $option $option_val"
            fi
        fi
    done
}