_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options '--backup;[`_choice_backup`]' | \
    _patch_table_edit_arguments ';;' 'FILES...'
}

_choice_backup() {
    cat <<-'EOF'
existing	numbered if numbered backup exists, simple otherwise,
nil	numbered if numbered backup exists, simple otherwise,
none	never make backups,
off	never make backups,
numbered	make numbered backups,
t	make numbered backups,
simple	always make simple backups,
never	always make simple backups,
EOF
}
