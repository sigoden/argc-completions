_argc_util_param_select_options() {
    local item argc_var argc_val
    for item in $@; do
        item_var="argc_$(echo "$item" | sed 's/^-\+//' | tr '-' '_')"
        item_val="${!item_var}"
        if [[ -n "$item_val" ]]; then
            if [[ "$item_val" -eq 1 ]]; then
                echo -n " $item"
            else
                echo -n " $item $item_val"
            fi
        fi
    done
}