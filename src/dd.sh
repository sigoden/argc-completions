_patch_help() {
    :;
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
}

_choice_args() {
    cat <<-'EOF' | _argc_util_comp_kv =
bs=;;read and write up to BYTES bytes at a time
cbs=;;convert BYTES bytes at a time
conv=`_choice_conv`;;convert the file as per the comma separated symbol list
count=;;copy only N input blocks
ibs=;;read up to BYTES bytes at a time
if=__argc_value=file;;read from FILE instead of stdin
iflag=`_choice_iflag`;;read as per the comma separated symbol list
obs=;;write BYTES bytes at a time
of=__argc_value=file;;write to FILE instead of stdout
oflag=`_choice_oflag`;;write as per the comma separated symbol list
seek=;;skip N obs-sized blocks at start of output
skip=;;skip N ibs-sized blocks at start of input
status=none,noxfer,progress;;The LEVEL of information to print to stderr
EOF
}

_choice_conv() {
    cat <<-'EOF' | _argc_util_comp_multi , "$argc__kv_filter" "$argc__kv_prefix"
ascii	from EBCDIC to ASCII
ebcdic	from ASCII to EBCDIC
ibm	from ASCII to alternate EBCDIC
block	pad newline-terminated records with spaces to cbs-size
unblock	replace trailing spaces in cbs-size records with newline
lcase	change upper case to lower case
ucase	change lower case to upper case
sparse	try to seek rather than write all-NUL output blocks
swab	swap every pair of input bytes
sync	pad every input block with NULs to ibs-size
excl	fail if the output file already exists
nocreat	do not create the output file
notrunc	do not truncate the output file
noerror	continue after read errors
fdatasync	physically write output file data before finishing
fsync	likewise	but also write metadata	  
EOF
}

_choice_iflag() {
    cat <<-'EOF' | _argc_util_comp_multi , "$argc__kv_filter" "$argc__kv_prefix"
append	append mode
direct	use direct I/O for data
directory	fail unless a directory
dsync	use synchronized I/O for data
sync	likewise	but also for metadata
fullblock	accumulate full blocks of input
nonblock	use non-blocking I/O
noatime	do not update access time
nocache	Request to drop cache
noctty	do not assign controlling terminal from file
nofollow	do not follow symlinks
count_bytes	treat 'count=N' as a byte count
skip_bytes	treat 'skip=N' as a byte count
EOF
}

_choice_oflag() {
    cat <<-'EOF' | _argc_util_comp_multi , "$argc__kv_filter" "$argc__kv_prefix" 
append	append mode
direct	use direct I/O for data
directory	fail unless a directory
dsync	use synchronized I/O for data
sync	likewise	but also for metadata
nonblock	use non-blocking I/O
noatime	do not update access time
nocache	Request to drop cache
noctty	do not assign controlling terminal from file
nofollow	do not follow symlinks
seek_bytes	treat 'seek=N' as a byte count
EOF
}
