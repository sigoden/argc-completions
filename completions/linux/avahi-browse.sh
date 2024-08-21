#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help              Show this help
# @flag -V --version           Show version
# @flag -D --browse-domains    Browse for browsing domains instead of services
# @flag -a --all               Show all services, regardless of the type
# @option -d --domain          The domain to browse in
# @flag -v --verbose           Enable verbose mode
# @flag -t --terminate         Terminate after dumping a more or less complete list
# @flag -c --cache             Terminate after dumping all entries from the cache
# @flag -l --ignore-local      Ignore local services
# @flag -r --resolve           Resolve services found
# @flag -f --no-fail           Don't fail if the daemon is not available
# @flag -p --parsable          Output in parsable format
# @arg service-type[`_choice_service_type`]

_choice_service_type() {
    mapfile -t serv < <(avahi-browse -bk)
    mapfile -t desc < <(avahi-browse -b)
    len="${#serv[@]}"
    for ((i=0; i < len; i++)); do
        echo -e "${serv[i]}\t${desc[i]}"
    done
}

command eval "$(argc --argc-eval "$0" "$@")"