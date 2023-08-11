#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                print both online and offline CPUs (default for -e)
# @flag -b --online             print online CPUs only (default for -p)
# @flag -B --bytes              print sizes in bytes rather than in human readable format
# @option -C --caches*,[`_choice_cache_column`] <list>  info about caches in extended readable format
# @flag -c --offline            print offline CPUs only
# @flag -J --json               use JSON for default or extended format
# @option -e --extended*,[`_choice_format_column`] <list>  print out an extended readable format
# @option -p --parse <list>     print out a parsable format
# @option -s --sysroot <dir>    use specified directory as system root
# @flag -x --hex                print hexadecimal masks rather than lists of CPUs
# @flag -y --physical           print physical instead of logical IDs
# @flag --output-all            print all available columns for -e, -p or -C
# @flag -h --help               display this help
# @flag -V --version            display version

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

command eval "$(argc --argc-eval "$0" "$@")"