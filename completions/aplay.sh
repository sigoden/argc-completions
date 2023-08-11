#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  help
# @flag --version                                  print current version
# @flag -l --list-devices                          list all soundcards and digital audio devices
# @flag -L --list-pcms                             list device names
# @option -D --device[`_choice_card`] <NAME>       select PCM by name
# @flag -q --quiet                                 quiet mode
# @option -t --file-type[voc|wav|raw|au] <TYPE>    file type (voc, wav, raw or au)
# @option -c --channels <#>                        channels
# @option -f --format[`_choice_format`]            sample format (case insensitive)
# @option -r --rate <#>                            sample rate
# @option -d --duration <#>                        interrupt after ♯ seconds
# @option -s --samples <#>                         interrupt after ♯ samples per channel
# @flag -M --mmap                                  mmap stream
# @flag -N --nonblock                              nonblocking mode
# @option -F --period-time <#>                     distance between interrupts is ♯ microseconds
# @option -B --buffer-time <#>                     buffer duration is ♯ microseconds
# @option --period-size <#>                        distance between interrupts is ♯ frames
# @option --buffer-size <#>                        buffer duration is ♯ frames
# @option -A --avail-min <#>                       min available space for wakeup is ♯ microseconds
# @option -R --start-delay <#>                     delay for automatic PCM start is ♯ microseconds (relative to buffer size if <= 0)
# @option -T --stop-delay <#>                      delay for automatic PCM stop is ♯ microseconds from xrun
# @flag -v --verbose                               show PCM structure and setup (accumulative)
# @option -V --vumeter[mono|stereo] <TYPE>         enable VU meter (TYPE: mono or stereo)
# @flag -I --separate-channels                     one file for each channel
# @flag -i --interactive                           allow interactive operation from stdin
# @option -m --chmap* <ch1,ch2,>                   Give the channel map to override or follow
# @flag --disable-resample                         disable automatic rate resample
# @flag --disable-channels                         disable automatic channel conversions
# @flag --disable-format                           disable automatic format conversions
# @flag --disable-softvol                          disable software volume control (softvol)
# @flag --test-position                            test ring buffer position
# @option --test-coef <#>                          test coefficient for ring buffer position (default 8) expression for validation is: coef * (buffer_size / 2)
# @flag --test-nowait                              do not wait for ring buffer - eats whole CPU
# @option --max-file-time <#>                      start another output file when the old file has recorded for this many seconds
# @flag --process-id-file                          write the process ID here
# @flag --use-strftime                             apply the strftime facility to the output file name
# @flag --dump-hw-params                           dump hw_params of the device
# @flag --fatal-errors                             treat all errors as fatal
# @arg file*

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}

_choice_format() {
    cat <<-'EOF'
S8
A_LAW
DSD_U16_BE
DSD_U16_LE
DSD_U32_BE
DSD_U32_LE
DSD_U8
FLOAT64_BE
FLOAT64_LE
FLOAT_BE
FLOAT_LE
G723_24
G723_24_1B
G723_40
G723_40_1B
GSM
IEC958_SUBFRAME_BE
IEC958_SUBFRAME_LE
IMA_ADPCM
MPEG
MU_LAW
S16_BE
S16_LE
S18_3BE
S18_3LE
S20_3BE
S20_3LE
S20_BE
S20_LE
S24_3BE
S24_3LE
S24_BE
S24_LE
S32_BE
S32_LE
SPECIAL
U16_BE
U16_LE
U18_3BE
U18_3LE
U20_3BE
U20_3LE
U20_BE
U20_LE
U24_3BE
U24_3LE
U24_BE
U24_LE
U32_BE
U32_LE
U8
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"