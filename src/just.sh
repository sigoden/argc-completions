_patch_table() {
   sed \
      -e '/--color <COLOR>/ coption # --color <COLOR> # Print colorful output [default: auto] # [=auto|always|never]' \
      -e '/--completions <SHELL>/ coption # --completions <SHELL> # Print shell completion script for <SHELL> # [zsh|bash|fish|powershell|elvish]' \
      -e '/--dump-format <FORMAT>/ coption # --dump-format <FORMAT> # Dump justfile as <FORMAT> [default: just] # [just|json]' \
      -e '/<ARGUMENTS>.../ cargument # <ARGUMENTS>... # Overrides and recipe(s) to run, defaulting to the first recipe in the justfile # [`_choice_recipe`]'
}

_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || awk '{$1=$1};1'
}
