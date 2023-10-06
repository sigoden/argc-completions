_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_arguments ';;' 'command;~[`_choice_command`]'
}

_choice_command() {
    _argc_util_comp_subcommand 0 tmux
}
