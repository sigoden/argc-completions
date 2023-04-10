_patch_table() {
   sed \
      -e '/<ARGUMENTS>.../ cargument # <ARGUMENTS>... # Overrides and recipe(s) to run, defaulting to the first recipe in the justfile # [`_choice_recipe`]'
}

_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || awk '{$1=$1};1'
}
