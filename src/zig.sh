_patch_help() {
    _prepare_workspace() {
        _patch_help_prepare_workspace $1
        if [[ ! -d "$workspace_dir" ]]; then
            mkdir -p "$workspace_dir" && \
            cd "$workspace_dir" && \
            zig init-exe >/dev/null 2>&1 && \
            zig build >/dev/null 2>&1
        fi
        cd "$workspace_dir"
    }

    if [[ "$*" == "zig ar" ]]; then
        (_prepare_workspace $1 && $@ --help) | \
        sed -n '/^OPTIONS:/,/^\s*$/ {s/ - /   /;p}'

    elif [[ "$*" == "zig lib" ]] \
      || [[ "$*" == "zig targets" ]] \
    ; then
        :;
    else
        (_prepare_workspace $1 && $@ --help) | \
        sed \
            -e '/^\s*-###/ d' \
            -e '/^\s*-cflags/ s/ --/   /' \
            -e '/^\s*-stdlib++-isystem/ d' \
            -e '/^\s*-I- / s/-I-/-I--/' \

    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--build-id;[fast|uuid|sha1|md5|none]' \
            '--compress-debug-sections;[none|zlib]' \
            '-mabi;[quadword-atomics|vec-default|vec-extabi];Set ABI on AIX' \
            '-mcmodel(<kind>);[default|tiny|small|kernel|medium|large];Limit range of code and data virtual addresses' \
            '-ofmt;[`_choice_ofmt`]' \
    )"
    if [[ "$*" == "zig build" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'steps;[`_choice_steps`]' \

    elif [[ "$*" == "zig ar" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--format;[default|gnu|darwin|bsd|bigarchive]' \
            '--rsp-quoting;[posix|windows]' \
        | \
        _patch_table_edit_arguments ';;' 'words;~[`_argc_ar`]'

    elif [[ "$*" == "zig cc" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            ';;' \
            '-flto' \
            '-mabi' \
            '-mcmodel' \
            '-ObjC' \
            '-Xopenmp-target' \

    else
        echo "$table"
    fi
}

_choice_steps() {
    cat <<-'EOF'
install	Copy build artifacts to prefix path
uninstall	Remove build artifacts from prefix path
run	Run the app
test	Run unit tests
EOF
}

_choice_ofmt() {
    cat <<-'EOF'
elf	Executable and Linking Format
c	C source code
wasm	WebAssembly
coff	Common Object File Format (Windows)
macho	macOS relocatables
spirv	Standard, Portable Intermediate Representation V (SPIR-V)
plan9	Plan 9 from Bell Labs object format
hex	Intel IHEX
raw	Dump machine code directly
EOF
}

_argc_ar() {
    _argc_util_comp_subcommand 0 ar
}
