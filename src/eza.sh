_patch_help() {
    $@ --help | sed 's/\[u\]//'
}

_patch_table() {
    _patch_table_edit_options \
        '--sort;[`_choice_sort`]' \

}

_choice_sort() {
    cat <<-'EOF'
accessed	Sort by file accessed time
age	Sort by file modified time (newest first)
changed	Sort by changed time
created	Sort by file modified time
date	Sort by file modified time
ext	Sort by file extension
Ext	Sort by file extension (uppercase first)
extension	Sort by file extension
Extension	Sort by file extension (uppercase first)
filename	Sort by filename
Filename	Sort by filename (uppercase first)
inode	Sort by file inode
modified	Sort by file modified time
name	Sort by filename
Name	Sort by filename (uppercase first)
newest	Sort by file modified time (newest first)
none	Do not sort files at all
oldest	Sort by file modified time
size	Sort by file size
time	Sort by file modified time
type	Sort by file type
EOF
}
