_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        gawk '
            BEGIN { print "Commands:" }
            {
                if (match($0, /^     zpool-/, arr)) {
                    commandZone = 1

                    sub(/\/zpool-set.*/, "", $0)

                    gsub(/\(8\)/, "", $0)
                    gsub(/zpool-/, "", $0)
                    gsub(/\//, ", ", $0)
                    print $0
                } else if (match($0, /^\s*$/)) {
                    commandZone = 0
                } else if (commandZone == 1) {
                    print "  " $0
                }
            }'
        cat <<'EOF'
     set
               Sets the given property on the specified pool.
EOF
    else
        if [[ "$*" == "zpool events" ]]; then
            man_text="$(_patch_help_run_man zpool events | sed '/^     zpool events -c/ d')"
        else
            man_text="$(_patch_help_run_man $@)"
        fi
        echo "$man_text" | \
        gawk -v SUBCMD=$2 '
            BEGIN {
                synopsisNum = 0
                split("", options)
            }
            {
                if (match($0, /^^SYNOPSIS/)) {
                    group = "synopsis"
                } else if (match($0, /^DESCRIPTION/)) {
                    if (synopsisNum == 1) {
                        print usageText
                        print ""
                    }
                    group = "description"
                } else if (match($0, /^OPTIONS/)) {
                    group = "options"
                } else if (match($0, /^[A-Z]/)) {
                    group = "misc"
                } else {
                    if (group == "synopsis") {
                        if (match($0, /^     zpool /)) {
                            usageText = "Usage: " sanitizeUsage(substr($0, 6))
                            synopsisNum += 1
                        }
                    } else if (group == "description" || group == "options") {
                        if (synopsisNum == 1) {
                            print $0
                        } else {
                            $0 = gensub(/ {13}/, "       ", 1, $0)
                            if (match($0, /^     zpool /)) {
                                if (match(substr($0, RLENGTH + 1), "^" SUBCMD "( |/|$)")) {
                                    usageText = substr($0, 6)
                                    if (usageText != "zpool " SUBCMD) {
                                        print  "Usage: " sanitizeUsage(usageText)
                                        print ""
                                    }
                                    matchCommand = 1
                                } else {
                                    matchCommand = 0
                                }
                            } else if (match($0, /^   \S/)) {
                                matchCommand = 0
                            } else if (matchCommand == 1) {
                                if (match($0, /^       (-\S+)/, arr)) {
                                    $0 = gensub(/-([A-Za-z])\|\S+/, "-\\1", 1, $0)
                                    if (options[arr[1]] == 1) {
                                        ignoreOption = 1
                                    } else {
                                        options[arr[1]] = 1
                                    }
                                    if (ignoreOption != 1) {
                                        print $0
                                    }
                                } else {
                                    if (ignoreOption != 1) {
                                        print $0
                                    }
                                } 
                            }
                        }
                    }
                }
            }
            function sanitizeUsage(value) {
                value = gensub(/-a\|(\S+)$/, "\\1", 1, value)
                gsub(/…/, "...", value)
                gsub(/\|/, "-", value)
                gsub(/\[\[-[^\]]*\][^\]]*\]/, "", value)
                return value
            }
            function trimStarts(input) {
                gsub(/^[[:space:]]+/,"",input)
                return input
            }
            '
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'pool;[`_choice_pool`]' \
    )"

    if [[ "$*" == "zpool create" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '-o' \

    elif [[ "$*" == "zpool attach" ]] \
      || [[ "$*" == "zpool replace" ]] \
      || [[ "$*" == "zpool split" ]] \
      || [[ "$*" == "zpool trim" ]] \
      || [[ "$*" == "zpool offline" ]] \
      || [[ "$*" == "zpool clear" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'device;[`_choice_pool_udev`]'

    elif [[ "$*" == "zpool add" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'vdev;[`_choice_pool_udev`]'

    elif [[ "$*" == "zpool get" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'property;[`_choice_get_property`]' 'pool;[`_choice_pool`]'

    elif [[ "$*" == "zpool iostat" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'pool;[`_choice_pool`]' 'interval' 'count'
        
    elif [[ "$*" == "zpool upgrade" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'pool;[`_choice_pool`]'

    else
        echo "$table"
    fi
}

_choice_pool() {
    zpool list -o name,comment -H | sed 's/\t-//'
}

_choice_pool_udev() {
    zpool list -Hv $argc_pool | \
    sed -n 's/^\t\([^\t]\+\).*$/\1/p' |\
    grep -v '^\(spare\|log\|cache\|mirror\|raidz\.\?\)'
}

_choice_get_property() {
    _argc_util_mode_parts ,
    _choice_get_property_value
}

_choice_get_property_value() {
    echo -e "name\tPool full name"
    echo -e "property\tProperty"
    echo -e "value\tProperty value"
    echo -e "source\tProperty value origin"
}
