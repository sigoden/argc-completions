#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --action <command>                Run the command in each session, e.g. "-a 'vi /etc/hosts'" to drop straight into a vi session.
# @option -K --autoclose <seconds>             Number of seconds to wait before closing finished terminal windows.
# @flag -q --autoquit                          Toggle automatically quitting after the last client window has closed (overriding the config file).
# @option -c --cluster-file <filename>         Use supplied file as additional cluster file (see also "FILES").
# @option -x --cols <cols>                     Number of columns
# @option -C --config-file <filename>          Use supplied file as additional configuration file (see also "FILES").
# @option --debug*[`_choice_debug`] <level>    Enable debugging.
# @flag -d --dump-config                       Dump the current configuration in the same format used by the $HOME/.clusterssh/config file.
# @option -e --evaluate[`_module_ssh_host`] <[user@]<host>[:port]>  Display and evaluate the terminal and connection arguments to display any potential errors.
# @flag --fillscreen                           Resize terminal windows to fill the whole available screen
# @option -f --font <font>                     Specify the font to use in the terminal windows.
# @flag -h --help                              Show basic help text and exit
# @option -L --list <tag>                      List available cluster tags.
# @flag -H --man                               Show full help text (the man page) and exit
# @option -o --options <STRING>                Specify arguments to be passed to ssh when making the connection.
# @option -p --port <port>                     Specify an alternate port for connections.
# @flag -Q --quiet                             Do not output extra text when using some options
# @option -y --rows <rows>                     Number of rows
# @flag -s --show-history                      Show history within console window.
# @option -r --tag-file <filename>             Use supplied file as additional tag file (see also "FILES")
# @option -t --term-args <STRING>              Specify arguments to be passed to terminals being used.
# @flag -g --tile                              Toggle window tiling (overriding the config file).
# @option -T --title <title>                   Specify the initial part of the title used in the console and client windows.
# @flag -u --unique-servers                    Toggle connecting to each host only once when a hostname has been specified multiple times.
# @flag -? --usage                             Show synopsis and exit
# @flag -A --use-all-a-records                 If a hostname resolves to multiple IP addresses, toggle whether or not to connect to all of them, or just the first one (see also config file entry).
# @option -l --username <username>             Specify the default username to use for connections (if different from the currently logged in user).
# @flag -v --version                           Show version information and exit
# @arg args*[`_module_ssh_host`]

_choice_debug() {
    seq 0 9
}

_module_ssh_host() {
    cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
}

command eval "$(argc --argc-eval "$0" "$@")"