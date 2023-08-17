_patch_help() {
    $@ --help | sed '/^Usage:/ s/\[global options\] //'
}

_patch_table() {
    if [[ "$*" == "terraform plan" ]]; then
        _patch_table_edit_options \
            '-replace;[`_choice_resource_parts`]' \
            '-target;[`_choice_resource_parts`]' \

    elif [[ "$*" == "terraform destroy" ]]; then
        _patch_table_copy_options terraform apply

    elif [[ "$*" == "terraform refresh" ]]; then
        _patch_table_edit_options \
            '-target;[`_choice_resource_parts`]' \

    elif [[ "$*" == "terraform state"* ]]; then
        if [[ "$*" == "terraform state mv" ]]; then
            _patch_table_edit_arguments \
                'source;[`_choice_resource_parts`]' \
                'destination;[`_choice_resource_parts`]' \

        else
            _patch_table_edit_arguments \
                'address;[`_choice_resource_parts`]' \

        fi

    elif [[ "$*" == "terraform workspace"* ]]; then
        _patch_table_edit_arguments 'name;[`_choice_workspace`]'

    else
        cat
    fi
}

_choice_resource_parts() {
    _choice_resource | _argc_util_comp_parts '.'
}

_choice_workspace() {
    terraform workspace list | sed -n 's/^[* ] \(.*\)$/\1/p'
} 

_choice_resource() {
    local opts=""
    if [[ -n "$argc_state" ]]; then 
        opts="--state $argc_state"
    fi
    terraform state list $opts
}
