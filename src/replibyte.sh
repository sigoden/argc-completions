_patch_help() {
    _patch_help_run_help $@ | sed 's/replibyte --config <configuration file> //'
}
