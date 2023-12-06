#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -t <tab>                            set tab width
# @flag -r                                    ignore backspace effect
# @option -lof preserved line (default 10000) <line>
# @option -I[`_choice_charset`] <charset>     document charset
# @option -O[`_choice_charset`] <charset>     display/output charset
# @flag -B                                    load bookmark
# @option -bookmark <file>                    specify bookmark file
# @option -T <type>                           specify content-type
# @flag -m                                    internet message mode
# @flag -v                                    visual startup mode
# @flag -M                                    monochrome display
# @flag -H                                    use high-intensity colors
# @flag -N                                    open URL of command line on each new tab
# @flag -F                                    automatically render frames
# @option -cols <width>                       specify column width (used with -dump)
# @option -ppc <count>                        specify the number of pixels per character (4.0...32.0)
# @option -ppl <count>                        specify the number of pixels per line (4.0...64.0)
# @flag -dump                                 dump formatted page into stdout
# @flag -dump_head                            dump response of HEAD request into stdout
# @flag -dump_source                          dump page source into stdout
# @flag -dump_both                            dump HEAD and source into stdout
# @flag -dump_extra                           dump HEAD, source, and extra information into stdout
# @option -post <file>                        use POST method with file content
# @option -header <string>                    insert string as a header
# @flag -num                                  show line number
# @flag -no-proxy                             don't use proxy
# @flag -4                                    IPv4 only (-o dns_order=4)
# @flag -6                                    IPv6 only (-o dns_order=6)
# @flag -insecure                             use insecure SSL config options
# @flag -no-mouse                             don't use mouse
# @flag -cookie                               use cookie (-no-cookie: don't use cookie)
# @flag -graph                                use DEC special graphics for border of table and menu
# @flag -no-graph                             use ASCII character for border of table and menu
# @flag -s                                    squeeze multiple blank lines
# @flag -W                                    toggle search wrap mode
# @flag -X                                    don't use termcap init/deinit
# @option -title <TERM>                       set buffer name to terminal title string
# @option -o[`_choice_option`] <opt=value>    assign value to config option
# @flag -show-option                          print all config options
# @option -config <file>                      specify config file
# @flag -debug                                use debug mode (only for debugging)
# @flag -reqlog                               write request logfile
# @flag -help                                 print this usage message
# @flag -version                              print w3m version
# @arg url-or-filename[`_choice_url_file`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_charset() {
    printf "%s\n" \
        US-ASCII ISO-8859-1 ISO-8859-2 ISO-8859-3 ISO-8859-4 ISO-8859-5 \
        ISO-8859-6 ISO-8859-7 ISO-8859-8 ISO-8859-9 ISO-8859-10 ISO-8859-11 \
        ISO-8859-13 ISO-8859-14 ISO-8859-15 ISO-8859-16 EUC-JP Shift_JIS \
        Shift_JISX0213 ISO-2022-JP ISO-2022-JP-2 ISO-2022-JP-3 EUC-CN GBK GB18030 \
        HZ-GB-2312 ISO-2022-CN EUC-TW Big5 HKSCS EUC-KR UHC Johab ISO-2022-KR \
        TIS-620 TCVN-5712 VISCII VPS KOI8-R KOI8-U NeXTSTEP CP437 CP737 CP775 \
        CP850 CP852 CP855 CP856 CP857 CP860 CP861 CP862 CP863 CP864 CP865 CP866 \
        CP869 CP874 CP1006 CP1250 CP1251 CP1252 CP1253 CP1254 CP1255 CP1256 \
        CP1257 CP1258 UTF-8 UTF-7
}

_choice_option() {
    w3m -show-option 2>/dev/null | \ 
    sed -n 's/^\s*-o \(\w\+\)=\S\+\s\+\(.*\)/\1=\x00\t\2/p'
}

_choice_url_file() {
    _choice_url
    _argc_util_comp_path
}

_choice_url() {
    if [[ -f ~/.w3m/bookmark.html ]]; then
        cat ~/.w3m/bookmark.html | sed -n 's|<li><a href="\(.*\)">.*|\1|p'
    fi
    if [[ -f ~/.w3m/history ]]; then
        cat ~/.w3m/history
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"