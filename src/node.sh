_patch_help() {
    $@ --help | sed '/^\s*-/ s/=\.\.\./=value/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--cpu-prof-dir(<dir>)' \
        '--diagnostic-dir(<dir>)' \
        '--experimental-policy(<file>)' \
        '--heap-prof-dir(<dir>)' \
        '--icu-data-dir(<dir>)' \
        '--openssl-config(<file>)' \
        '--redirect-warnings(<file>)' \
        '--report-dir(<dir>)' \
        '--report-directory(<dir>)' \
        '--tls-keylog(<file>)' \
        '--heapsnapshot-signal;[`_module_os_signal`]' \
        '--unhandled-rejections;[strict|warn|none]' \
        '--use-largepages;[off|on|silent]' \
    | \
    _patch_table_edit_arguments ';;' 'file' 'args...'
}
