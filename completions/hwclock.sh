#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -r --show             display the RTC time
# @flag --get                 display drift corrected RTC time
# @flag --set                 set the RTC according to --date
# @flag -s --hctosys          set the system time from the RTC
# @flag -w --systohc          set the RTC from the system time
# @flag --systz               send timescale configurations to the kernel
# @flag -a --adjust           adjust the RTC to account for systematic drift
# @flag --predict             predict the drifted RTC time according to --date
# @flag -u --utc              the RTC timescale is UTC
# @flag -l --localtime        the RTC timescale is Local
# @option -f --rtc <file>     use an alternate file to /dev/rtc0
# @flag --directisa           use the ISA bus instead of /dev/rtc0 access
# @option --date <time>       date/time input for --set and --predict
# @option --delay <sec>       delay used when set new RTC time
# @flag --update-drift        update the RTC drift factor
# @flag --noadjfile           do not use /etc/adjtime
# @option --adjfile <file>    use an alternate file to /etc/adjtime
# @flag --test                dry run; implies --verbose
# @flag -v --verbose          display more details
# @flag -h --help             display this help
# @flag -V --version          display version

command eval "$(argc --argc-eval "$0" "$@")"