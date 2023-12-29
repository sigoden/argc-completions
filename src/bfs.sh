_patch_help() {
    _patch_help_run_man $@ | \
    sed \
        -e '/^\s*-/ {:x;N;s/\n\s*-/, -/;t x;}' \
        -e 's/^\(\s*-O\)N/\1- N/' \

}

_patch_table() {
    _patch_table_dedup_options \
        '-depth' \
    | \
    _patch_table_edit_options \
        '-exec;~[`_module_os_exec`]' \
        '-execdir;~[`_module_os_exec`]' \
        '-ok;~[`_module_os_exec`]' \
        '-regextype;[`_choice_regextype`]' \
        '-type;*,[`_choice_type`]' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'

}

_choice_regextype() {
    cat <<-'EOF'
posix-basic	POSIX basic regular expressions (the default).
posix-extended	POSIX extended resular expressions.
ed	Like ed(1) (same as posix-basic).
emacs	Like emacs(1).
grep	Like grep(1).
sed	Like sed(1) (same as posix-basic).
EOF
}

_choice_type() {
    cat <<-'EOF'
b	block device
c	character device
d	directory
l	link (symbolic)
p	pipe
f	file (regular)
s	socket
w	whiteout
D	Door
EOF
}
