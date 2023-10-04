_patch_help() {
    _common_edit() {
        sed \
            -e '/^\s*-/ s/ or -/ -/' \
            -e '/^\s*-/ s/ (or \([^)]\+\))/ \1/' \
            -e '/^\s*-/ s/ - /   /' \

    }
    if [[ "$*" == "xmlstarlet" ]]; then
        $@ --help | \
        sed \
            -e 's/^where <command> is one of:/Commands:/' \
            -e '/^Commands:/,/^\s*$/ s/^  \(\S\+\)\s\+(or \(\S\+\))\s*- \(.*\)/  \2, \1   \3/' \

    elif [[ "$*" == "xmlstarlet edit"* ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# edit
## --delete/-d <xpath> - remove element
## --var <name> <xpath> - declare a variable
## --insert/-i <xpath> - add element before node matched by expression
    -t, --type {elem|text|attr}     specify type of node
    -n, --name <name>               specify name of node 
    -v, --value <value>             specify value of node
## --append/-a <xpath> - add element after node matched by expression
    -t, --type {elem|text|attr}     specify type of node
    -n, --name <name>               specify name of node 
    -v, --value <value>             specify value of node
## --subnode/-s <xpath> - add element as a child of node matched by expression
    -t, --type {elem|text|attr}     specify type of node
    -n, --name <name>               specify name of node 
    -v, --value <value>             specify value of node
## --move/-m <xpath1> <xpath2> - move element
## --rename/-r <xpath1> - rename element
    -v <new-name>                   specify new name
## --update/-u <xpath> - update element
    -v, --value <value>             specify value of node
    -x, --expr <xpath>              get value from node at xpath
EOF
        if [[ $# -eq 2 ]]; then
            $@ --help | _common_edit | \
            sed \
                -e '/^where <action>/,/^\s*$/ d'

        fi

    elif [[ "$*" == "xmlstarlet select" ]]; then
        $@ --help | _common_edit | \
        sed \
            -e '/--var <name> <value>/ d'

    else
        $@ --help | _common_edit
    fi
}
