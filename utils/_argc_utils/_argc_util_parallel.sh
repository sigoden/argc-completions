# Run functions in parallel
#
# ```sh
# _argc_util_parallel _choice_branch ::: _choice_tag ::: _choice_head
# ```
_argc_util_parallel() {
    argc --argc-parallel $(_argc_util_path_resolve $0) "$@"
}