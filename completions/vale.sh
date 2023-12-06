#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --config <file>               A file path (--config='some/file/path/.vale.ini').
# @option --ext <value>                 An extension to associate with stdin (--ext=.md).
# @option --filter <value>              An expression to filter rules by.
# @option --glob <pattern>              A glob pattern (--glob='*.{md,txt}.')
# @flag -h --help                       Print this help message.
# @flag --ignore-syntax                 Lint all files line-by-line.
# @flag --no-exit                       Don't return a nonzero exit code on errors.
# @flag --no-wrap                       Don't wrap CLI output.
# @option --output[`_choice_output`]    An output style ("line", "JSON", or a template file).
# @flag -v --version                    Print the current version.
# @arg paths*

# {{ vale ls-config
# @cmd Print the current configuration to stdout.
ls-config() {
    :;
}
# }} vale ls-config

# {{ vale ls-metrics
# @cmd Print the given file's internal metrics to stdout.
ls-metrics() {
    :;
}
# }} vale ls-metrics

# {{ vale sync
# @cmd Download and install external configuration sources.
sync() {
    :;
}
# }} vale sync

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_output() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" line JSON
}

command eval "$(argc --argc-eval "$0" "$@")"