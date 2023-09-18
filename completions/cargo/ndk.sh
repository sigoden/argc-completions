#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                               show help information
# @flag -v --version                            print version
# @option -o --output-dir <DIR>                 output to a jniLibs directory in the correct sub-directories
# @option -p --platform                         platform (also known as API level)
# @flag --no-strip                              disable stripping debug symbols (default: false)
# @option --manifest-path <PATH>                path to Cargo.toml
# @flag --bindgen                               set bindgen-specific environment variables (BINDGEN_EXTRA_CLANG_ARGS_*) when building (default: false)
# @option -t --target*[`_choice_ndk_target`]    Triples for the target(s).
# @arg cargo_args~[`_choice_ndk_cmd`]           args to be passed to cargo

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_ndk_cmd() {
    _argc_util_comp_subcommand 0 cargo
}

_choice_ndk_target() {
    printf "%s\n" rmeabi-v7a arm64-v8a x86 x86_64
}

command eval "$(argc --argc-eval "$0" "$@")"