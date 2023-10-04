_patch_table() {
    _patch_table_edit_options \
        '-I;[`_choice_charset`]' \
        '-O;[`_choice_charset`]' \
        '-o;[`_choice_option`]' \
    | \
    _patch_table_edit_arguments ';;' 'url-or-filename;[`_choice_url_file`]'
}

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
