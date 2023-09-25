#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --export-to-opml                export OPML feed to stdout
# @flag -r --refresh-on-start              refresh feeds on start
# @option -i --import-from-opml <file>     import OPML file
# @option -u --url-file <urlfile>          read RSS feed URLs from <urlfile>
# @option -c --cache-file <cachefile>      use <cachefile> as cache file
# @option -C --config-file <configfile>    read configuration from <configfile>
# @flag -X --vacuum                        compact the cache
# @option -x --execute*[`_module_os_command`] <command>  execute list of commands
# @flag -q --quiet                         quiet startup
# @flag -v --version                       get version information
# @option -l --log-level <loglevel>        write a log with a certain loglevel (valid values: 1 to 6)
# @option -d --log-file <logfile>          use <logfile> as output log file
# @option -E --export-to-file <file>       export list of read articles to <file>
# @option -I --import-from-file <file>     import list of read articles from <file>
# @flag -h --help                          this help

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

command eval "$(argc --argc-eval "$0" "$@")"