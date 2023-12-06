_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^\s*\(--and\|--andnot\) .*/    \1/' \
        -e 's/^\s*\(--depth\S\+\), .*/    \1/' \
        -e 's/, -%%//' \

}

_patch_table() { 
    _patch_table_dedup_options \
        '--andnot' \
    | \
    _patch_table_edit_options \
        '--color;[`_choice_color`]' \
        '--encoding;[`_choice_encoding`]' \
        '--file-type;[`_choice_type`]' \
    | \
    _patch_table_edit_arguments 'pattern;[`_choice_pattern`]'

}

_choice_color() {
    printf "%s\n" auto never always
}

_choice_encoding() {
    printf "%s\n" \
        binary ASCII UTF-8 UTF-16 \
        UTF-16BE UTF-16LE UTF-32 UTF-32BE \
        UTF-32LE LATIN1 ISO-8859-1 ISO-8859-2 \
        ISO-8859-3 ISO-8859-4 ISO-8859-5 ISO-8859-6 \
        ISO-8859-7 ISO-8859-8 ISO-8859-9 ISO-8859-10 \
        ISO-8859-11 ISO-8859-13 ISO-8859-14 ISO-8859-15 \
        ISO-8859-16 MAC MACROMAN EBCDIC \
        CP437 CP850 CP858 CP1250 \
        CP1251 CP1252 CP1253 CP1254 \
        CP1255 CP1256 CP1257 CP1258 \
        KOI8-R KOI8-U KOI8-RU
}

_choice_type() {
    printf "%s\n" \
        actionscript ada asm asp aspx autoconf automake \
        awk Awk basic batch bison c c++ \
        clojure cpp csharp css csv dart Dart \
        delphi elisp elixir erlang fortran gif Gif \
        go groovy gsp haskell html jade java \
        jpeg Jpeg js json jsp julia kotlin \
        less lex lisp lua m4 make markdown \
        matlab node Node objc objc++ ocaml parrot \
        pascal pdf Pdf perl Perl php Php \
        png Png prolog python Python r rpm \
        Rpm rst rtf Rtf ruby Ruby rust \
        scala scheme shell Shell smalltalk sql svg \
        swift tcl tex text tiff Tiff tt \
        typescript verilog vhdl vim xml Xml yacc \
        yaml
}

_choice_pattern() {
    if [[ -n "$argc_regexp" ]] \
    || [[ -n "$argc_file" ]] \
    ; then
        _argc_util_comp_path
    fi
}
