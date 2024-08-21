_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_add_metadata 'combine-shorts' | \
    _patch_table_edit_commands ';;' | \
    _patch_table_edit_arguments 'mode;[`_choice_mode`]'
    
}

_choice_mode() {
    if [[ -z "$ARGC_CWORD" ]]; then
        printf "%s\n" = + - 
        return
    fi
    echo "__argc_prefix=$ARGC_CWORD"
    echo __argc_filter=
    cat <<-'EOF' | _argc_util_filter "$ARGC_CWORD" | _argc_util_transform nospace
A	no atime updates
a	append only
C	no copy on write
c	compressed
D	no synchronous directory updates
d	no dump
e	extent format
i	immutable
j	data journalling
P	project hierarchy
S	synchronous updates
s	secure deletion
T	top of directory hierarchy
t	no tail-merging
u	undeletable
EOF
}
