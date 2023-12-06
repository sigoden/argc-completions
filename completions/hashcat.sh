#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --hash-type[`_choice_hash_mode`] <Num>  Hash-type, references below (otherwise autodetect)
# @option -a --attack-mode[`_choice_attack_mode`] <Num>  Attack-mode, see references below
# @flag -V --version                          Print version
# @flag -h --help                             Print help
# @flag --quiet                               Suppress output
# @flag --hex-charset                         Assume charset is given in hex
# @flag --hex-salt                            Assume salt is given in hex
# @flag --hex-wordlist                        Assume words in wordlist are given in hex
# @flag --force                               Ignore warnings
# @flag --deprecated-check-disable            Enable deprecated plugins
# @flag --status                              Enable automatic update of the status screen
# @flag --status-json                         Enable JSON format for status output
# @option --status-timer <Num>                Sets seconds between status screen updates to X
# @option --stdin-timeout-abort <Num>         Abort if there is no input from stdin for X seconds
# @flag --machine-readable                    Display the status view in a machine-readable format
# @flag --keep-guessing                       Keep guessing the hash after it has been cracked
# @flag --self-test-disable                   Disable self-test functionality on startup
# @flag --loopback                            Add new plains to induct directory
# @option --markov-hcstat2 <File>             Specify hcstat2 file to use
# @flag --markov-disable                      Disables markov-chains, emulates classic brute-force
# @flag --markov-classic                      Enables classic markov-chains, no per-position
# @flag --markov-inverse                      Enables inverse markov-chains, no per-position
# @option -t --markov-threshold <Num>         Threshold X when to stop accepting new markov-chains
# @option --runtime <Num>                     Abort session after X seconds of runtime
# @option --session <Str>                     Define specific session name
# @flag --restore                             Restore session from --session
# @flag --restore-disable                     Do not write restore file
# @option --restore-file-path <File>          Specific path to restore file
# @option -o --outfile <File>                 Define outfile for recovered hash
# @option --outfile-format*,[`_choice_outfile_format`] <Str>  Outfile format to use, separated with commas
# @flag --outfile-autohex-disable             Disable the use of $HEX[] in output plains
# @option --outfile-check-timer <Num>         Sets seconds between outfile checks to X
# @flag --wordlist-autohex-disable            Disable the conversion of $HEX[] from the wordlist
# @option -p --separator <Char>               Separator char for hashlists and outfile
# @flag --stdout                              Do not crack a hash, instead print candidates only
# @flag --show                                Compare hashlist with potfile; show cracked hashes
# @flag --left                                Compare hashlist with potfile; show uncracked hashes
# @flag --username                            Enable ignoring of usernames in hashfile
# @flag --remove                              Enable removal of hashes once they are cracked
# @option --remove-timer <Num>                Update input hash file each X seconds
# @flag --potfile-disable                     Do not write potfile
# @option --potfile-path <File>               Specific path to potfile
# @option --encoding-from <Code>              Force internal wordlist encoding from X
# @option --encoding-to <Code>                Force internal wordlist encoding to X
# @option --debug-mode[`_choice_debug_mode`] <Num>  Defines the debug mode (hybrid only by using rules)
# @option --debug-file <File>                 Output file for debugging rules
# @option --induction-dir <Dir>               Specify the induction directory to use for loopback
# @option --outfile-check-dir <Dir>           Specify the outfile directory to monitor for plains
# @flag --logfile-disable                     Disable the logfile
# @option --hccapx-message-pair <Num>         Load only message pairs from hccapx matching X
# @option --nonce-error-corrections <Num>     The BF size range to replace AP's nonce last bytes
# @option --keyboard-layout-mapping <File>    Keyboard layout mapping table for special hash-modes
# @option --truecrypt-keyfiles <File>         Keyfiles to use, separated with commas
# @option --veracrypt-keyfiles <File>         Keyfiles to use, separated with commas
# @option --veracrypt-pim-start <Num>         VeraCrypt personal iterations multiplier start
# @option --veracrypt-pim-stop <Num>          VeraCrypt personal iterations multiplier stop
# @flag -b --benchmark                        Run benchmark of selected hash-modes
# @flag --benchmark-all                       Run benchmark of all hash-modes (requires -b)
# @flag --speed-only                          Return expected speed of the attack, then quit
# @flag --progress-only                       Return ideal progress step size and time to process
# @option -c --segment-size <Num>             Sets size in MB to cache from the wordfile to X
# @option --bitmap-min <Num>                  Sets minimum bits allowed for bitmaps to X
# @option --bitmap-max <Num>                  Sets maximum bits allowed for bitmaps to X
# @option --cpu-affinity <Str>                Locks to CPU devices, separated with commas
# @option --hook-threads <Num>                Sets number of threads for a hook (per compute unit)
# @flag --hash-info                           Show information for each hash-mode
# @flag --example-hashes                      Alias of --hash-info
# @flag --backend-ignore-cuda                 Do not try to open CUDA interface on startup
# @flag --backend-ignore-hip                  Do not try to open HIP interface on startup
# @flag --backend-ignore-metal                Do not try to open Metal interface on startup
# @flag --backend-ignore-opencl               Do not try to open OpenCL interface on startup
# @flag -I --backend-info                     Show system/evironment/backend API info
# @option -d --backend-devices <Str>          Backend devices to use, separated with commas
# @option -D --opencl-device-types*,[`_choice_device_type`] <Str>  OpenCL device-types to use, separated with commas
# @flag -O --optimized-kernel-enable          Enable optimized kernels (limits password length)
# @flag -M --multiply-accel-disable           Disable multiply kernel-accel with processor count
# @option -w --workload-profile[`_choice_workload_profile`] <Num>  Enable a specific workload profile, see pool below
# @option -n --kernel-accel <Num>             Manual workload tuning, set outerloop step size to X
# @option -u --kernel-loops <Num>             Manual workload tuning, set innerloop step size to X
# @option -T --kernel-threads <Num>           Manual workload tuning, set thread count to X
# @option --backend-vector-width <Num>        Manually override backend vector-width to X
# @option --spin-damp <Num>                   Use CPU for device synchronization, in percent
# @flag --hwmon-disable                       Disable temperature and fanspeed reads and triggers
# @option --hwmon-temp-abort <Num>            Abort if temperature reaches X degrees Celsius
# @option --scrypt-tmto <Num>                 Manually override TMTO value for scrypt to X
# @option -s --skip <Num>                     Skip X words from the start
# @option -l --limit <Num>                    Limit X words from the start + skipped words
# @flag --keyspace                            Show keyspace base:mod values and quit
# @option -j --rule-left <Rule>               Single rule applied to each word from left wordlist
# @option -k --rule-right <Rule>              Single rule applied to each word from right wordlist
# @option -r --rules-file <File>              Multiple rules applied to each word from wordlists
# @option -g --generate-rules <Num>           Generate X random rules
# @option --generate-rules-func-min <Num>     Force min X functions per rule
# @option --generate-rules-func-max <Num>     Force max X functions per rule
# @option --generate-rules-func-sel <Str>     Pool of rule operators valid for random rule engine
# @option --generate-rules-seed <Num>         Force RNG seed set to X
# @option -1 --custom-charset1 <CS>           User-defined charset ?1
# @option -2 --custom-charset2 <CS>           User-defined charset ?2
# @option -3 --custom-charset3 <CS>           User-defined charset ?3
# @option -4 --custom-charset4 <CS>           User-defined charset ?4
# @flag --identify                            Shows all supported algorithms for input hashes
# @flag -i --increment                        Enable mask increment mode
# @option --increment-min <Num>               Start mask incrementing at X
# @option --increment-max <Num>               Stop mask incrementing at X
# @flag -S --slow-candidates                  Enable slower (but advanced) candidate generators
# @flag --brain-server                        Enable brain server
# @option --brain-server-timer <Num>          Update the brain server dump each X seconds (min:60)
# @flag -z --brain-client                     Enable brain client, activates -S
# @option --brain-client-features[`_choice_brain_client_features`] <Num>  Define brain client features, see below
# @option --brain-host[`_module_os_hostname`] <Str>  Brain server host (IP or domain)
# @option --brain-port <Port>                 Brain server port
# @option --brain-password <Str>              Brain server authentication password
# @option --brain-session <Hex>               Overrides automatically calculated brain session
# @option --brain-session-whitelist <Hex>     Allow given sessions only, separated with commas

_choice_hash_mode() {
    _helper_extract_table "Hash modes"
}

_choice_attack_mode() {
    _helper_extract_table "Attack Modes"
}

_choice_outfile_format() {
    _helper_extract_table "Outfile Formats"
}

_choice_debug_mode() {
    _helper_extract_table "Rule Debugging Modes"
}

_choice_device_type() {
    _helper_extract_table "OpenCL Device Types"
}

_choice_workload_profile() {
    _helper_extract_table "Workload Profiles"
}

_choice_brain_client_features() {
    _helper_extract_table "Brain Client Features"
}

_helper_extract_table() {
    hashcat --help | \
    gawk -v "NAME=$1" '{
        if (index($0, "- [ ")) {
            if (index($0, NAME) > 0) {
                enterTable = 1
            } else {
                enterTable = 0
            }
        } else if (enterTable > 0) {
            if (enterTable == 1 && match($0, /=\+=/)) {
                enterTable = 2
            } else if (enterTable == 2 && !match($0, /^\s*$/)) {
                gsub(/^[[:space:]]+|[[:space:]]+$/,"", $0)
                sub(/\s*\|\s*/, "\t", $0)
                gsub(/\s*\|\s*/, " • ", $0)
                print $0
            }
        }
    }'
}

_module_os_hostname() {
    _etc_hosts() {
        if [[ -f "/etc/hosts" ]]; then
            cat /etc/hosts | sed -e '/^\s*#/ d' -e '/^\s*$/ d'
        elif command -v getent >/dev/null; then
            getent hosts 
        fi
    }
    _etc_hosts | sed -e '/^\s*\(127\.0\.\|ff0\|fe0\|::1\)/ d' -e 's/^\s*\S\+\s*\(\S\+\)$/\1/'

    if [[ -r ~/.ssh/config ]]; then
        cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
    fi
    if [[ -r ~/.ssh/known_hosts ]]; then
        cat ~/.ssh/known_hosts | \
        sed \
            -e '/^\s*[!*|@#]/ d' \
            -e 's/^\s*\(\S\+\).*/\1/' \
            -e 's/,/\n/' \
            -e 's/\[\(\S\+\)\].*/\1/' \

    fi
}

command eval "$(argc --argc-eval "$0" "$@")"