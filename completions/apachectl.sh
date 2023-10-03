#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -D <name>           define a name for use in <IfDefine name> directives
# @option -d <directory>      specify an alternate initial ServerRoot
# @option -f <file>           specify an alternate ServerConfigFile
# @option -C <"directive">    process directive before reading config files
# @option -c <"directive">    process directive after reading config files
# @option -e <level>          show startup errors of level (see LogLevel)
# @option -E <file>           log startup errors to file
# @flag -v                    show version number
# @flag -V                    show compile settings
# @flag -h                    list available command line options (this page)
# @flag -l                    list compiled in modules
# @flag -L                    list available configuration directives
# @flag -S                    a synonym for -t -D DUMP_VHOSTS -D DUMP_RUN_CFG
# @flag -M                    a synonym for -t -D DUMP_MODULES
# @flag -t                    run syntax check for config files
# @flag -T                    start without DocumentRoot(s) check
# @flag -X                    debug mode (only one worker, do not detach)
# @arg action[start|stop|restart|graceful|graceful-stop|configtest|status|fullstatus|help]

command eval "$(argc --argc-eval "$0" "$@")"