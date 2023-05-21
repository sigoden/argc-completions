_patch_table() {
   _patch_util_bind_choice_fn 'ARGUMENTS:_choice_recipe'
}

_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || awk '{$1=$1};1'
}
