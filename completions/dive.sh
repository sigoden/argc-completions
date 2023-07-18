#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --ci                                     Skip the interactive TUI and validate against CI rules (same as env var CI=true)
# @option --ci-config <file>                     If CI=true in the environment, use the given yaml to drive validation rules.
# @option --config <file>                        config file (default is $HOME/.dive.yaml, ~/.config/dive/*.yaml, or $XDG_CONFIG_HOME/dive.yaml)
# @flag -h --help                                help for dive
# @option --highestUserWastedPercent <string>    (only valid with --ci given) highest allowable percentage of bytes wasted (as a ratio between 0-1), otherwise CI validation will fail.
# @option --highestWastedBytes <string>          (only valid with --ci given) highest allowable bytes wasted, otherwise CI validation will fail.
# @flag -i --ignore-errors                       ignore image parsing errors and run the analysis anyway
# @option -j --json <file>                       Skip the interactive TUI and write the layer analysis statistics to a given file.
# @option --lowestEfficiency <string>            (only valid with --ci given) lowest allowable image efficiency (as a ratio between 0-1), otherwise CI validation will fail.
# @option --source[docker|podman|docker-archive] <string>  The container engine to fetch the image from.
# @flag -v --version                             display version number
# @arg image[`_choice_image`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_image() {
    docker image ls --format '{{.Repository}}:{{.Tag}}' | sed 's/:/=/' | _argc_util_comp_kv :
}

command eval "$(argc --argc-eval "$0" "$@")"