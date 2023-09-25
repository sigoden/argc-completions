_patch_table() {
    _patch_table_edit_options \
        '--_positionalArg_nexttrace_32(<value>)' \
        '--data-provider;[`_choice_data_provider`]' \
        '--dev;[`_module_os_network_interface`]' \
        '--dot-server;[dnssb|aliyun|dnspod|google|cloudflare]' \
        '--first(<integer>)' \
        '--language;[en|cn]' \
        '--max-hops(<integer>)' \
        '--parallel-requests(<integer>)' \
        '--port(<integer>)' \
        '--pow-provider;[api.leo.moe|sakura]' \
        '--psize(<integer>)' \
        '--queries(<integer>)' \
        '--send-time(<integer>)' \
        '--source(<value>)' \
        '--timeout(<integer>)' \
        '--ttl-time(<integer>)' \
    | \
    _patch_table_edit_arguments ';;'

}

_choice_data_provider() {
    printf "%s\n" Ip2region ip2region IP.SB ip.sb IPInfo ipinfo IPInsight ipinsight \
        IPAPI.com ip-api.com IPInfoLocal ipinfolocal chunzhen LeoMoeAPI leomoeapi disable-geoip
}
