#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --export-to-opml                export OPML feed to stdout
# @flag --export-to-opml2                  export OPML 2.0 feed including tags to stdout
# @flag -r --refresh-on-start              refresh feeds on start
# @option -i --import-from-opml <file>     import OPML file
# @option -u --url-file <urlfile>          read RSS feed URLs from <urlfile>
# @option -c --cache-file <cachefile>      use <cachefile> as cache file
# @option -C --config-file <configfile>    read configuration from <configfile>
# @flag -X --vacuum                        compact the cache
# @option -x --execute*[`_module_os_command`] <command>  execute list of commands
# @flag -q --quiet                         quiet startup
# @flag -v --version                       get version information
# @option -l --log-level <loglevel>        write a log with a certain log level (valid values: 1 to 6, for user error, critical, error, warning, info, and debug respectively)
# @option -d --log-file <logfile>          use <logfile> as output log file
# @option -E --export-to-file <file>       export list of read articles to <file>
# @option -I --import-from-file <file>     import list of read articles from <file>
# @flag -h --help                          this help
# @flag --cleanup                          remove unreferenced items from cache

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