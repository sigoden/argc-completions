#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option -t --table[`_choice_table`] <table>     This option specifies the packet matching table which the command should operate on.
# @flag -4 --ipv4                                 This option has no effect in iptables and iptables-restore.
# @flag -6 --ipv6                                 If a rule using the -6 option is inserted with (and only with) iptables-restore, it will be silently ignored.
# @option -p --protocol[`_choice_protocol`] <protocol>  The protocol of the rule or of the packet to check.
# @option -s --source <address[/mask][,...]>      Source specification.
# @option -d --destination <address[/mask][,...]>  Destination specification.
# @option -m --match <match>                      Specifies a match to use, that is, an extension module that tests for a specific property.
# @option -j --jump[`_choice_target`] <target>    This specifies the target of the rule; i.e., what to do if the packet matches it.
# @option -g --goto <chain>                       This specifies that the processing should continue in a user specified chain.
# @option -i --in-interface <name>                Name of an interface via which a packet was received (only for packets entering the INPUT, FORWARD and PREROUTING chains).
# @option -o --out-interface <name>               Name of an interface via which a packet is going to be sent (for packets entering the FORWARD, OUTPUT and POSTROUTING chains).
# @flag -f --fragment                             This means that the rule only refers to second and further IPv4 fragments of fragmented packets.
# @option -c --set-counters <packets> <bytes>     This enables the administrator to initialize the packet and byte counters of a rule (during INSERT, APPEND, REPLACE operations).
# @flag -v --verbose                              Verbose output.
# @option -w --wait <seconds>                     Wait for the xtables lock.
# @option -W --wait-interval <microseconds>       Interval to wait per each iteration.
# @flag -n --numeric                              Numeric output.
# @flag -x --exact                                Expand numbers.
# @flag --line-numbers                            When listing rules, add line numbers to the beginning of each rule, corresponding to that rule's position in the chain.
# @option --modprobe <command>                    When adding or inserting rules into a chain, use command to load any necessary modules (targets, match extensions, etc).

# {{ iptables --append
# @cmd Append to chain
# @alias -A
# @arg chain[`_choice_chain`]
--append() {
    :;
}
# }} iptables --append

# {{ iptables --check
# @cmd Check for the existence of a rule
# @alias -C
# @arg chain[`_choice_chain`]
--check() {
    :;
}
# }} iptables --check

# {{ iptables --delete
# @cmd Delete rule rulenum (1 = first) from chain
# @alias -D
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--delete() {
    :;
}
# }} iptables --delete

# {{ iptables --insert
# @cmd Insert in chain as rulenum (default 1=first)
# @alias -I
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--insert() {
    :;
}
# }} iptables --insert

# {{ iptables --replace
# @cmd Replace rule rulenum (1 = first) in chain
# @alias -R
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--replace() {
    :;
}
# }} iptables --replace

# {{ iptables --list
# @cmd List the rules in a chain or all chains
# @alias -L
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--list() {
    :;
}
# }} iptables --list

# {{ iptables --list-rules
# @cmd Print the rules in a chain or all chains
# @alias -S
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--list-rules() {
    :;
}
# }} iptables --list-rules

# {{ iptables --flush
# @cmd Delete all rules in  chain or all chains
# @alias -F
# @arg chain[`_choice_chain`]
--flush() {
    :;
}
# }} iptables --flush

# {{ iptables --zero
# @cmd Zero counters in chain or all chains
# @alias -Z
# @arg chain[`_choice_chain`]
# @arg rulenum[`_choice_rulenum`]
--zero() {
    :;
}
# }} iptables --zero

# {{ iptables --new
# @cmd Create a new user-defined chain
# @alias -N
# @arg chain[`_choice_chain`]
--new() {
    :;
}
# }} iptables --new

# {{ iptables --delete-chain
# @cmd Delete a user-defined chain
# @alias -X
# @arg chain[`_choice_chain`]
--delete-chain() {
    :;
}
# }} iptables --delete-chain

# {{ iptables --policy
# @cmd Change policy on chain to target
# @alias -P
# @arg chain[`_choice_chain`]
# @arg target
--policy() {
    :;
}
# }} iptables --policy

# {{ iptables --rename-chain
# @cmd Change chain name, (moving any references)
# @arg old-chain
# @arg new-chain
--rename-chain() {
    :;
}
# }} iptables --rename-chain

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"