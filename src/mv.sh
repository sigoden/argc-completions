_patch_table() { 
    _patch_table_edit_options '--backup;[`_choice_backup`]' | \
    _patch_table_edit_arguments ';;' 'FILES...'
}

_choice_backup() {
    cat <<-'EOF'
none	never make backups (even if --backup is given),
off	never make backups (even if --backup is given),
numbered	make numbered backups,
t	make numbered backups,
existing	numbered if numbered backups exist, simple otherwise,
nil	numbered if numbered backups exist, simple otherwise,
simple	always make simple backups,
never	always make simple backups,
EOF
}
