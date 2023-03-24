_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || echo ""
}
