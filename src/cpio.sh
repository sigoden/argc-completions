_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--format;[`_choice_format`]' \
        '--owner;[`_module_os_user`]' \
    | \
    _patch_table_edit_arguments ';;'

}

_choice_format() {
    cat <<-'EOF'
bin	The obsolete binary format.
odc	The old (POSIX.
newc	The new (SVR4) portable format, which supports file systems having more than 65536 i-nodes.
crc	The new (SVR4) portable format with a checksum added.
tar	The old tar format.
ustar	The POSIX.
hpbin	The obsolete binary format used by HPUX's cpio (which stores device files differently).
hpodc	The portable format used by HPUX's cpio (which stores device files differently).
EOF
}
