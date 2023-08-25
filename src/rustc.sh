_patch_table() { 
    _patch_table_dedup_options ';;' '--help' '-C' '-W' | \
    _patch_table_edit_options \
        '--allow;*,[`_choice_lint_option`]' \
        '--deny;*,[`_choice_lint_option`]' \
        '--forbid;*,[`_choice_lint_option`]' \
        '--force-warn;*,[`_choice_lint_option`]' \
        '--warn;*,[`_choice_lint_option`]' \
        '-C;[`_choice_codegen_option`]' \
        '-L;[`_choice_lib`]' \
        '-l;[`_choice_link`]' \
        ';;' \
        '-Z;[`_choice_unstable_option`];Unstable compiler options' \
    | \
    _patch_table_edit_arguments ';;' 'path...(file:.rs)'
}

_choice_lib() {
    _argc_util_mode_kv =
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s=\0\n" dependency crate native framework all 
    else
        _argc_util_comp_path
    fi
}

_choice_link() {
    _argc_util_mode_kv =
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ -z "$argc__kv_prefix" ]]; then
        if [[ "$ARGC_CWORD" == *':'* ]]; then
            kind="${ARGC_CWORD%%:*}"
            modifiers="${ARGC_CWORD#*:}"
            _choice_link_modifier | _argc_util_comp_multi ',' "$modifiers" "$kind:"

        else
            printf "%s\0\n" static framework dylib
        fi
    else
        _argc_util_comp_path
    fi
}

_choice_lint_option() {
    rustc -W help  | \
    gawk '{
        if (match($0, /name\s+default\s+meaning/)) {
            isGroup=1
        } else if (match($0, /name\s+sub-lints/)) {
            isGroup=1
        } else if (isGroup == 1 && match($0, /^\s*(\S+)\s+(allow|warn|deny)\s+(.*)$/, arr))  {
            if (match(arr[1], /^-+$/)) { next }
            print arr[1] "\t" arr[3]
        } else if (match($0, /^\s*$/)) {
            isGroup = 0
        }
    }'
}

_choice_codegen_option() {
    rustc -C help  | _helper_format_options
}

_choice_unstable_option() {
    if rustc +nightly >/dev/null 2>&1; then
        rustc +nightly -Z help | _helper_format_options
    fi
}

_choice_link_modifier() {
    printf "+%s\n" bundle verbatim whole-archive as-needed
    printf -- "-%s\n" bundle verbatim whole-archive as-needed
}

_helper_format_options() {
    gawk '{
        if (NR >= 4) {
            split($0, parts, " -- ")
            if (match(parts[1], / (\S+)=val\s*$/, arr)) {
                print arr[1] "=\0\t" parts[2]
            } else if (match(parts[1], /^\s+`([^`]+)`/, arr)) {
                print arr[1] 
            }
        }
    }'
}
