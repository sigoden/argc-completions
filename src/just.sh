_patch_table() {
   _patch_table_edit_arguments 'ARGUMENTS;[`_choice_recipe`]'
}

_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || gawk '{$1=$1};1'
}
