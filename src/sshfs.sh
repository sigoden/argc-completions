_patch_help() {
    $@ --help | \
    sed \
        -e '/^\s*-/ s/\(-\S\)\s\+--/\1 --/' \
        -e '/^\s*-o /,$ d' \

}

_patch_table() {
    _patch_table_edit_options \
        '' \
        ';;' \
        '-o;*,[`_choice_option`];mount options' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'remote;[`_choice_remote`]' \
        'mountpath' \

}

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
reconnect;;reconnect to server
delay_connect;;delay connection to server
sshfs_sync;;synchronous writes
no_readahead;;synchronous reads (no speculative readahead)
sync_readdir;;synchronous readdir
dir_cache=yes,no;;enable caching of directory contents (names, attributes, symlink targets)
dcache_max_size=;;sets the maximum size of the directory cache (default: 10000)
dcache_timeout=;;sets timeout for directory cache in seconds (default: 20)
dcache_stat_timeout=;;sets separate timeout for attributes
dcache_link_timeout=;;sets separate timeout for symlinks
dcache_dir_timeout=;;sets separate timeout for names
dcache_clean_interval=;;sets the interval for automatic cleaning of the cache (default: 60)
dcache_min_clean_interval=N;;sets the interval for forced cleaning of the cache if full (default: 5)
direct_io;;enable direct i/o
workaround=`_choice_workaround`;;colon separated list of workarounds
idmap=`_choice_idmap`;;user/group ID mapping (default: none)
uidfile=__argc_value=file;;file containing username:remote_uid mappings
gidfile=__argc_value=file;;file containing groupname:remote_gid mappings
nomap=`_choice_nomap`;;with idmap=file, how to handle missing mappings
ssh_command=`_module_os_command`;;execute CMD instead of 'ssh'
ssh_protocol=;;ssh protocol to use (default: 2)
sftp_server=__argc_value=path;;path to sftp server or subsystem (default: sftp)
directport=;;directly connect to PORT bypassing ssh
passive;;communicate over stdin and stdout bypassing network
disable_hardlink;;link(2) will return with errno set to ENOSYS
transform_symlinks;;transform absolute symlinks to relative
follow_symlinks;;follow symlinks on the server
no_check_root;;don't check for existence of 'dir' on server
password_stdin;;read password from stdin (only for pam_mount!)
max_conns=;;open parallel SSH connections
SSHOPT=;;ssh options (see man ssh_config)
kernel_cache;;cache files in kernel
noauto_cache;;enable caching based on modification times
auto_cache;;enable caching based on modification times
umask=;;set file permissions (octal)
uid=`_module_os_uid`;;set file owner
gid=`_module_os_gid`;;set file group
entry_timeout=;;cache timeout for names (1.0s)
negative_timeout=;;cache timeout for deleted names (0.0s)
attr_timeout=;;cache timeout for attributes (1.0s)
ac_attr_timeout=;;auto cache timeout for attributes (attr_timeout)
noforget;;never forget cached inodes
remember=;;remember cached inodes for T seconds (0s)
modules=;;names of modules to push onto filesystem stack
allow_other;;allow access by all users
allow_root;;allow access by root
auto_unmount;;auto unmount on process termination
subdir=DIR;;prepend this directory to all paths (mandatory)
norellinks;;transform absolute symlinks to relative
rellinks;;transform absolute symlinks to relative
from_code=;;original encoding of file names (default: UTF-8)
to_code=;;new encoding of the file names (default: UTF-8)
EOF
}

_choice_remote() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_ssh_host | _argc_util_transform suffix=: nospace
        _argc_util_comp_path
    else
        ssh -o 'Batchmode yes' "$argc__kv_key" command ls -a1dp "$argc__kv_filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix" 
    fi
}

_choice_idmap() {
    cat <<-'EOF'
none	no translation of the ID space
user	only translate UID/GID of connecting user
file	translate UIDs/GIDs contained in uidfile/gidfile
EOF
}

_choice_nomap() {
    cat <<-'EOF'
ignore	don't do any re-mapping
error	return an error (default)
EOF
}

_choice_workaround() {
    cat <<-'EOF'
none	no workarounds enabled
norename	fix renaming to existing file
norenamexdev	fix moving across filesystems
notruncate	fix truncate for old servers
nobuflimit	fix buffer fillup bug in server
nofstat	always use stat() instead of fstat()
nocreatemode	always pass mode 0 to create
rename	fix renaming to existing file
renamexdev	fix moving across filesystems
truncate	fix truncate for old servers
buflimit	fix buffer fillup bug in server
fstat	always use stat() instead of fstat()
createmode	always pass mode 0 to create
EOF
}
