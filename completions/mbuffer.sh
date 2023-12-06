#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b <num>        use <num> blocks for buffer (default: 160)
# @option -s <size>       use blocks of <size> bytes for processing (default: 8388608)
# @option -m <size>       memory <size> of buffer in b,k,M,G,% (default: 2% = 1280M)
# @flag -L                lock buffer in memory (unusable with file based buffers)
# @flag -d                use blocksize of device for output
# @option -D <size>       assumed output device size (default: infinite/auto-detect)
# @option -P <num>        start writing after buffer has been filled more than <num>%
# @option -p <num>        start reading after buffer has been filled less than <num>%
# @option -i <file>       use <file> for input
# @option -o <file>       use <file> for output (this option can be passed MULTIPLE times)
# @flag --append          append to output file (must be passed before -o)
# @flag --truncate        truncate next file (must be passed before -o)
# @option -I <p>          use network port <port> as input
# @option -O <<h>:<p>>    output data to host <h> and port <p> (MUTLIPLE outputs supported)
# @option -n <num>        <num> volumes for input, '0' to prompt interactively
# @flag -t                use memory mapped temporary file (for huge buffer)
# @option -T <file>       as -t but uses <file> as buffer
# @option -l <file>       use <file> for logging messages
# @option -u <num>        pause <num> milliseconds after each write
# @option -r <rate>       limit read rate to <rate> B/s, where <rate> can be given in b,k,M,G
# @option -R <rate>       same as -r for writing; use either one, if your tape is too fast
# @flag -f                overwrite existing files
# @option -a <time>       autoloader which needs <time> seconds to reload
# @option -A <cmd>        issue command <cmd> to request new volume
# @option -v <level>      set verbose level to <level> (valid values are 0..6)
# @flag -q                quiet - do not display the status on stderr
# @flag -Q                quiet - do not log the status
# @flag -c                write with synchronous data integrity support
# @flag -e                stop processing on any kind of error
# @flag -H
# @flag --md5             generate md5 hash of transfered data
# @option --hash <a>      use algorithm <a>, if <a> is 'list' possible algorithms are listed
# @flag --pid             print PID of this instance
# @option -W <time>       set watchdog timeout to <time> seconds
# @flag -4                force use of IPv4
# @flag -6                force use of IPv6
# @flag -0                use IPv4 or IPv6
# @flag --no-direct       omit use of O_DIRECT - e.g. to enable compression on btrfs
# @flag --tcpbuffer       size for TCP buffer
# @flag --tcptimeo        TCP send/receive time-out limit in msec
# @flag --tapeaware       write to end of tape instead of stopping when the drive signals the media end is approaching (write until 2x ENOSPC errors)
# @flag --direct          use direct I/O for temporary file buffer
# @flag -V
# @flag --version         print version information

command eval "$(argc --argc-eval "$0" "$@")"