#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f <text file>    Text file to speak
# @flag --stdin             Read text input from stdin instead of a file
# @option -a <integer>
# @option -g <integer>
# @option -k <integer>
# @option -l <integer>
# @option -p <integer>
# @option -s <integer>
# @option -v[`_choice_voice`] <voice name>
# @option -w <wave file name>
# @flag -b                  Input text encoding, 1=UTF8, 2=8 bit, 4=16 bit
# @flag -m                  Interpret SSML markup, and ignore other < > tags
# @flag -q                  Quiet, don't produce any speech (may be useful with -x)
# @flag -x                  Write phoneme mnemonics to stdout
# @flag -X                  Write phonemes mnemonics and translation trace to stdout
# @flag -z                  No final sentence pause at the end of the text
# @option --compile <voice name>
# @flag --ipa               Write phonemes to stdout using International Phonetic Alphabet --ipa=1 Use ties, --ipa=2 Use ZWJ, --ipa=3 Separate with _
# @option --path <path>
# @flag --pho               Write mbrola phoneme data (.pho) to stdout or to the file in --phonout
# @option --phonout <filename>
# @option --punct <characters>
# @option --split <minutes>
# @flag --stdout            Write speech output to stdout
# @flag --version           Shows version number and date, and location of espeak-data
# @option --voices[`_choice_lang`] <language>

_choice_voice() {
    espeak --voices | gawk '{if(NR>1){ print $4}}'
}

_choice_lang() {
    espeak --voices | gawk '{if(NR>1){ print $2}}'
}

command eval "$(argc --argc-eval "$0" "$@")"