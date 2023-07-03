# Complete subcommand for something like `sudo`/`npx`.
# Args:
#   - `Index`:  Slice from positional args
#   - `PrependArgs*`: Args to prepend to sliced positional args array
# ```sh
# @ description A sudo cli
# # @arg cmd
# # @arg args~[`_choice_args`]
# _choice_args() {
#     _argc_util_comp_subcommand 0 
# }
# ```
_argc_util_comp_subcommand() {
    local args=( "${@:2}" "${argc__positionals[@]:$1}" )
    args[-1]="$ARGC_LAST_ARG"
    local completions_dir="$( dirname "${BASH_SOURCE[0]}" )"
    local scriptfile="$completions_dir/${args[0]}.sh"
    if [[ ! -f "$scriptfile" ]]; then
        scriptfile="$completions_dir/${args[0]}/${args[1]}.sh"
        if [[ ! -f "$scriptfile" ]]; then
            return
        fi
    fi
    scriptfile="$(_argc_util_path_resolve -p "$scriptfile")"
    argc --argc-compgen generic "$scriptfile" "${args[@]}"
}