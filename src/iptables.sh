_patch_help() { 
    if [[ "$*" == "iptables" ]]; then
        _patch_help_run_man $@ | \
        sed -e 's/^\(\s*\)\[!\]/\1/' | \
        sed -n '/^TABLES/,/^OPTIONS/ {//!p};/^\s*PARAMETERS/,/LOCK FILE/ {//!p}'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@ 
# --append/-A chain - Append to chain
# --check/-C chain - Check for the existence of a rule
# --delete/-D chain rulenum - Delete rule rulenum (1 = first) from chain
# --insert/-I chain [rulenum] - Insert in chain as rulenum (default 1=first)
# --replace/-R chain rulenum - Replace rule rulenum (1 = first) in chain
# --list/-L chain [rulenum] - List the rules in a chain or all chains
# --list-rules/-S chain [rulenum] - Print the rules in a chain or all chains
# --flush/-F [chain] - Delete all rules in  chain or all chains
# --zero/-Z chain [rulenum] - Zero counters in chain or all chains
# --new/-N chain - Create a new user-defined chain
# --delete-chain/-X [chain] - Delete a user-defined chain
# --policy/-P chain target - Change policy on chain to target
# --rename-chain/-E old-chain new-chain - Change chain name, (moving any references)
EOF
}

_patch_table() { 
    if [[ "$*" == "iptables" ]]; then
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--jump;[`_choice_target`]' \
            '--protocol;[`_choice_protocol`]' \
            '--table;[`_choice_table`]' \

        return
    fi

    _patch_table_edit_arguments \
        'chain;[`_choice_chain`]' \
        'rulenum;[`_choice_rulenum`]' \

}

_choice_table() {
    cat <<-'EOF'
filter	This is the default table (if no -t option is passed).
nat	This  table is consulted when a packet that creates a new connection is encountered.
mangle	This table is used for specialized packet alteration.
raw	This table is used mainly for configuring exemptions from connection tracking in combination with the NOTRACK target.
security	This table is used for Mandatory Access Control (MAC) networking rules, such as those enabled by the SECMARK and CONNSEC‐MARK  targets.
EOF
}

_choice_protocol() {
    printf "%s\n" tcp udp udplite icmp icmpv6 esp ah sctp mh all
}

_choice_target() {
    printf "%s\n" ACCEPT DROP RETURN
    _choice_chain
}

_choice_chain() {
    prerouting="PREROUTING\tFor packets that are coming in"
    input="INPUT\tFor packets destined to local sockets"
    output="OUTPUT\tFor locally-generated packets"
    forward="FORWARD\tFor packets being routed through"
    postrouting="POSTROUTING\tFor packets that are about to go out"
    case "$argc_table" in
    filter)
        echo -e $input
        echo -e $forward
        echo -e $output
        ;;
    nat)
        echo -e $prerouting
        echo -e $output
        echo -e $postrouting
        ;;
    mangle)
        echo -e $prerouting
        echo -e $input
        echo -e $output
        echo -e $forward
        echo -e $postrouting
        ;;
    raw)
        echo -e $prerouting
        echo -e $output
        ;;
    security)
        echo -e $input
        echo -e $output
        echo -e $forward
        ;;
    *)
        echo -e $prerouting
        echo -e $input
        echo -e $output
        echo -e $forward
        echo -e $postrouting
        ;;
    esac
    _choice_user_chain
}

_choice_rulenum() {
    if [[ -n "$argc_table" ]] && [[ -n "$argc_chain" ]]; then
        iptables -t $argc_table -L $argc_chain --line-numbers -n 2>/dev/null | \
        gawk '{if (NR>2) { print $1 "\t" $2 " " $3 " -- " $5 " " $6 }}'
    fi
}

_choice_user_chain() {
    iptables $(_argc_util_param_select_options --table) -L -n 2>/dev/null | \
    sed -n 's/^Chain \(\S\+\).*$/\1/p'
}
