_patch_help() { 
    $@ --help | \
    sed \
        -e '/^\s*-\(s\|P\|o\)/ d' \
        -e '/^\s*-\S/ s/: /   /' \
        -e '/^\s*--min/ s|/|, --|g' \
        -e 's|/-|, -|' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--dns-servers;*,[`_module_os_hostname`]' \
        '--exclude;*,[`_module_os_hostname`]' \
        '--script;*[`_choice_script`]' \
        '--script-help;[`_choice_script`]' \
        '-T;[`_choice_template`]' \
        '-e;[`_module_os_network_interface`]' \
        ';;' \
        '-o-;[`_choice_output_format`];Scan output format' \
        '-s-;[`_choice_scan`];Scan options' \
        '-P-;[`_choice_protocol`];Protocol options' \
    | \
    _patch_table_edit_arguments ';;' 'hosts;*[`_module_os_hostname`]'

}

_choice_script() {
    printf "%s\tCategory\n" all auth broadcast brute default discovery dos exploit external fuzzer intrusive malware safe version vuln
    nmap --script-help all 2> /dev/null | gawk '
    BEGIN { NUM = 0 split("", LINES) }
    { NUM += 1; LINES[NUM] = $0 }
    END {
        for (i = 1; i <= NUM; i++) {
            line = LINES[i]
            if (match(line, /^Categories:/)) {
                matchLine = i
                name = LINES[i-1]
                desc = ""
            } else if (i == matchLine + 1) {
            } else if (desc == "" && match(line, /  \S/)) {
                desc = line
                gsub(/(^\s+|\s+$)/, "", desc)
                print name "\t" desc
            }
        }
    }'
}

_choice_template() {
    values=( paranoid sneaky polite normal aggressive insane )
    length=${#values[@]}
    for (( i=0; i<$length; i++)); do
        echo -e "$i\t${values[$i]} timing"
    done
}

_choice_output_format() {
    cat <<-'EOF'
N	normal format
X	xml format
S	Script kiddie format
G	Grepable format
EOF
}

_choice_scan() {
    cat <<-'EOF'
L	List Scan - simply list targets to scan
n	Ping Scan - disable port scan
S	TCY SYNC scans
T	Connect scans
A	ACK scans
W	Window scans
M	Maimon scans
I	Idle scan
Y	SCTP INIT scans
Z	COOKIE-ECHO scans
O	IP protocol scan
V	Probe open ports to determine service/version info
C	equivalent to --script=default
EOF
}

_choice_protocol() {
  cat <<-'EOF'  
n	Treat all hosts as online -- skip host discovery
S	TCP SYNC discovery to given ports
A	ACK discovery to given ports
U	UDP discovery to given ports
Y	SCTP discovery to given ports
E	ICMP echo request discovery probes
P	timestamp request discovery probes
M	netmask request discovery probes
O	IP Protocol Ping
EOF
}
