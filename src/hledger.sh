_patch_help() {
    if [[ "$*" == "hledger" ]]; then
        $1 --help
        $1 | sed -e 's/^ \(\S\+\) (\(\S\+\))  / \1, \2  /' -e  '/^HELP /,$ d'
    elif [[ "$*" == "hledger bar" ]]; then
        :;
    else
        $@ --help | gawk '{
            if (NR == 1) {
                print "Usage: " $0
            } else if (match($0, /[Ff]lags:$/)) {
                isFlag = 1
                print $0
            } else if (match($0, /^\s*$/)) {
                isFlag = 0
                print $0
            } else {
                if (isFlag == 1) {
                    print $0
                }
            }
        }'
    fi
}
