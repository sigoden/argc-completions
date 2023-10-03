#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help           print this usage information and exit
# @flag -V                  print program version information and exit
# @flag -v                  print program version information and exit
# @flag --version           print program version information and exit
# @option -e --device       set the device to output the beeps to (see beep(1) man page)
# @flag --debug             make program output more verbose
# @flag --verbose           make program output more verbose
# @option -f <FREQ_Hz>      frequency of the tone in Hertz (Hz) (default: 440)
# @option -l <LENGTH_ms>    length of the tone in milliseconds (ms) (default: 200)
# @option -d <DELAY_ms>     delay between repetitions of the tone *without* delay after last repetition of the tone (default: 100)
# @option -D <DELAY_ms>     delay between repetitions of the tone *with* delay after last repetition of the tone (default: no delay after last note)
# @option -r <REPS>         number of repetitions of the last tone (default: 1 note without repeats)
# @flag -n --new            start a new tone
# @flag -s                  read text from stdin and write it through to stdout, beeping the last defined tone for every newline in the text, until EOF in stdin
# @flag -c                  like -s, but beep for every character in the text

command eval "$(argc --argc-eval "$0" "$@")"