_patch_help() { 
    $@ --help | \
    sed \
        -e 's/^  -C/  -C /' \
        -e "s/^  -e 'command'/  -e command/" \
        -e 's/^  -E\S*/  -E /' \
        -e 's/^  -F/  -F /' \
        -e 's/^  -I/  -I /' \
        -e 's/^  -r/  -r /' \
        -e 's/^  -W/  -W /' \
        -e '/^  --jit-\[/ d' \

}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--disable(<value>);*[`_choice_feature`]' \
        '--dump(<value>);*[`_choice_dump`]' \
        '--enable(<value>);*[`_choice_feature`]' \
        '--external-encoding;[`_choice_encoding`]' \
        '--internal-encoding;[`_choice_encoding`]' \
        '-0;-*' \
        '-C;-*' \
        '-E;-*[`_choice_encoding_combined`]' \
        '-F;-*' \
        '-I;-*' \
        '-W;-*[`_choice_warning_level_combined`]' \
        '-i;-*' \
        '-r;-*' \
        '-x;-*' \
    
}

_choice_encoding_combined() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_encoding
        return
    fi
    _choice_encoding
}

_choice_warning_level_combined() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_warning_level
        return
    fi
    _choice_warning_category
}

_choice_dump() {
    cat <<-'EOF'
insns	instruction sequences
yydebug	yydebug of yacc parser generator
parsetree	AST
parsetree_with_comment	AST with comments
EOF
}

_choice_feature() {
    cat <<-'EOF'
gems	rubygems (default: enabled)
did_you_mean	did_you_mean (default: enabled)
rubyopt	RUBYOPT environment variable (default: enabled)
frozen-string-literal	freeze all string literals (default: disabled)
jit	JIT compiler (default: disabled)
EOF
}

_choice_encoding() {
    cat <<-'EOF'
ASCII	Specifies the ASCII encoding.
UTF-8	Specifies the UTF-8 encoding (default).
ISO-8859-1	Specifies the ISO-8859-1 (Latin-1) encoding.
EUC-JP	Specifies the EUC-JP encoding for Japanese text.
Shift_JIS	Specifies the Shift_JIS encoding for Japanese text.
EOF
}

_choice_warning_category() {
    cat <<-'EOF'
deprecated	deprecated features
experimental	experimental features
EOF
}

_choice_warning_level() {
    cat <<-'EOF'
0	silence
1	medium
2	verbose
EOF
}
