#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -?                                 this help
# @flag -h                                 this help
# @flag -v                                 show version and exit
# @flag -V                                 show version and configure options then exit
# @flag -t                                 test configuration and exit
# @flag -T                                 test configuration, dump it and exit
# @flag -q                                 suppress non-error messages during configuration testing
# @option -s[`_choice_signal`] <signal>    send signal to a master process: stop, quit, reopen, reload
# @option -p <prefix>                      set prefix path (default: /usr/share/nginx/)
# @option -c <filename>                    set configuration file (default: /etc/nginx/nginx.conf)
# @option -g <directives>                  set global directives out of configuration file

_choice_signal() {
    cat <<-'EOF'
quit	shut down gracefully (SIGQUIT)
reload	reload configuration (SIGHUP)
reopen	re-open log files (SIGUSR1)
stop	shut down quickly (SIGTERM)
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"