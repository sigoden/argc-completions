_patch_help() { 
    $@ --help  2>&1 | \
    gawk '{
        printLine = 1
        if (match($0, /^    --<HARDWARE_ITEM>/)) {
            printLine = 0
            scope = 1
        } else if (match($0, /^    --/)) {
            printLine = 1
            scope = 0
        } else if (scope == 1) {
            printLine = 0
            if (target != 1) {
                if (match($0, /Available hardware items are:$/)) {
                    target = 1
                }
            } else {
                gsub(/[[:space:]]+/,"", $0)
                split($0, items, ",")
                for (i in items) {
                    if (items[i] != "") {
                        print "    --" items[i]
                        print "        Show " items[i] " info."
                    }
                }
            }
        }
        if (printLine == 1) {
            print $0
        }
    }'
}

_patch_table() { 
    _patch_table_edit_options \
        '--dump-db;[0|1]' \
        '--only;*[`_choice_device`]' \
        '--save-config;[`_choice_save_config`]' \
        '--show-config;[`_choice_device_udi`]' \

}

_choice_device() {
    if [[ -z "$ARGC_CWORD" ]]; then
        echo "/dev/\0"
    else
        _argc_util_comp_path
    fi
}

_choice_save_config() {
    echo all
    _choice_device_udi
}

_choice_device_udi() {
    hwinfo --all | \
    gawk '{
        if (match($0, /^  Unique ID: (.*)$/, arr)) {
            id = arr[1]
        } else if (match($0, /^  Model: "(.*)"/, arr)) {
            print id "\t" arr[1]
        }
    }'
}
