_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/More options can be seen with links -h/,$ d' \
        -e 's;<0>/<1>/<2>/<3>/<4>;{0|1|2|3|4};' \
        -e 's;<0>/<1>/<2>/<3>;{0|1|2|3};' \
        -e 's;<0>/<1>/<2>;{0|1|2};' \
        -e 's;<0>/<1>;{0|1};' \

}
