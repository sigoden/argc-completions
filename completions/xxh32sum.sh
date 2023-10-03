#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -H-[`_choice_algorithm`] <#>    algorithm selection: 0,1,2,3 or 32,64,128 (default: 0)
# @flag -c --check                        read xxHash checksum from [files] and check them
# @flag -h --help                         display a long help page about advanced options
# @flag -V --version                      Display version information
# @flag --tag                             Produce BSD-style checksum lines
# @flag --little-endian                   Checksum values use little endian convention (default: big endian)
# @option -b- <#>                         Bench only algorithm variant ♯
# @option -i- <#>                         Number of times to run the benchmark (default: 3)
# @flag -q --quiet                        Don't print OK for each successfully verified file
# @flag --status                          Don't output anything, status code shows success
# @flag --strict                          Exit non-zero for improperly formatted checksum lines
# @flag --warn                            Warn about improperly formatted checksum lines
# @arg files*

_choice_algorithm() {
    printf "%s\n" 0 32 64 128
}

command eval "$(argc --argc-eval "$0" "$@")"