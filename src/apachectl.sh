_patch_help() {
    $@ -h 2>&1 | \
    sed \
        -e '/^\s*-t -D/ d' \
        -e 's/: /  /' \

}

_patch_table() {
    _patch_table_edit_arguments ';;' 'action;[start|stop|restart|graceful|graceful-stop|configtest|status|fullstatus|help]'
}
