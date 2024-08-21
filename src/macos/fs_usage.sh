_patch_table() {
    _patch_table_edit_options \
        '-E(<microseconds>)' \
        '-R(<file>)' \
        '-S(<microseconds>)' \
        '-f;*[`_choice_mode`]' \
        '-t(<seconds>)' \
    | \
    _patch_table_edit_arguments ';;' 'pid-or-pname;[`_choice_pid_or_pname`]'
        
}

_choice_mode() {
    cat <<-'EOF'
network	Show network-related events
filesys	Show filesystem-related events
pathname	Show only pathname-related events
exec	Show only exec and spawn events
diskio	Show only disk I/O events
cachehit	In addition, show cache hits
EOF
}

_choice_pid_or_pname() {
    _argc_util_parallel _module_os_pid ::: _module_os_process
}
