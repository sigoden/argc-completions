_patch_help() { 
    $@ --help | sed '/^Available output columns/,/^$/ d'
}

_patch_table() { 
    _patch_table_edit_options \
        '--caches;*,[`_choice_cache_column`]' \
        '--extended;*,[`_choice_format_column`]' \

}

_choice_cache_column() {
    cat <<-'EOF'
ALL-SIZE	size of all system caches
LEVEL	cache level
NAME	cache name
ONE-SIZE	size of one cache
TYPE	cache type
WAYS	ways of associativity
ALLOC-POLICY	allocation policy
WRITE-POLICY	write policy
PHY-LINE	number of physical cache line per cache t
SETS	number of sets in the cache; set lines has the same cache index
COHERENCY-SIZE	minimum amount of data in bytes transferred from memory to cache
EOF
}

_choice_format_column() {
    cat <<-'EOF'
CPU	logical CPU number
CORE	logical core number
SOCKET	logical socket number
NODE	logical NUMA node number
BOOK	logical book number
DRAWER	logical drawer number
CACHE	shows how caches are shared between CPUs
POLARIZATION	CPU dispatching mode on virtual hardware
ADDRESS	physical address of a CPU
CONFIGURED	shows if the hypervisor has allocated the CPU
ONLINE	shows if Linux currently makes use of the CPU
MAXMHZ	shows the maximum MHz of the CPU
MINMHZ	shows the minimum MHz of the CPU
EOF
}
