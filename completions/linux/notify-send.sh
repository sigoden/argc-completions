#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                           Show help options
# @option -u --urgency[low|normal|critical] <LEVEL>  Specifies the urgency level.
# @option -t --expire-time <TIME>           Specifies the timeout in milliseconds at which to expire the notification.
# @option -a --app-name <APP_NAME>          Specifies the app name for the icon
# @option -i --icon <ICON[,ICON...]>        Specifies an icon filename or stock icon to display.
# @option -c --category <TYPE[,TYPE...]>    Specifies the notification category.
# @option -h --hint <TYPE:NAME:VALUE>       Specifies basic extra data to pass.
# @flag -v --version                        Version of the package.
# @arg summary!
# @arg body
# @arg create
# @arg a
# @arg notification

command eval "$(argc --argc-eval "$0" "$@")"