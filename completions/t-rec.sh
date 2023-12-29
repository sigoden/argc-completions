#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --verbose                               Enable verbose insights for the curious
# @flag -q --quiet                                 Quiet mode, suppresses the banner: 'Press Ctrl+D to end recording'
# @flag -m --video                                 Generates additionally to the gif a mp4 video of the recording
# @flag -M --video-only                            Generates only a mp4 video and not gif
# @option -d --decor[shadow|none] <decor>          Decorates the animation with certain, mostly border effects [default: none]
# @option -b --bg[white|black|transparent] <bg>    Background color when decors are used [default: transparent]
# @flag -n --natural                               If you want a very natural typing experience and disable the idle detection and sampling optimization
# @flag -l --ls-win                                If you want to see a list of windows available for recording by their id, you can set env var 'WINDOWID' or `--win-id` to record this specific window only
# @option -w --win-id <win-id>                     Window Id (see --ls-win) that should be captured, instead of the current terminal
# @option -e --end-pause <s | ms | m>              to specify the pause time at the end of the animation, that time the gif will show the last frame
# @option -s --start-pause <s | ms | m>            to specify the pause time at the start of the animation, that time the gif will show the first frame
# @option -o --output <file>                       to specify the output file (without extension) [default: t-rec]
# @flag -h --help                                  Print help
# @flag -V --version                               Print version
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"