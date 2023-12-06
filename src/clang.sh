_patch_help() {
    $@ --help | \
    sed \
        -e '/^\s*-###/ d' \
        -e '/^\s*-stdlib++-isystem/ d' \

}

_patch_table() {
    _patch_table_dedup_options \
        ';;' \
        '-fcf-protection' \
        '-fcs-profile-generate' \
        '-fembed-bitcode' \
        '-flto' \
        '-fmemory-profile' \
        '-fno-builtin' \
        '-fno-sanitize-trap' \
        '-foffload-lto' \
        '-fprofile-generate' \
        '-fprofile-instr-generate' \
        '-fsanitize-memory-track-origins' \
        '-fsanitize-trap' \
        '-fsave-optimization-record' \
        '-fcrash-diagnostics' \
        '-fmodule-header' \
        '-fmodule-output' \
        '-ftime-trace' \
        '-mabi' \
        '-mcmodel' \
        '-mhvx' \
        '-ObjC' \
        '-save-stats' \
        '-save-temps' \
        '-Xopenmp-target' \


}
