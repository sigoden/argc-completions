_patch_help() {
    if [[ $# -eq 1 ]]; then
        cat <<-'EOF' | _patch_help_embed_help $@
# --realise - realise specified store paths
# --serve - serve local Nix store over SSH
# --gc - run garbage collection
# --delete - delete store paths
# --query - display information about store paths
# --add - add paths to Nix store
# --add-fixed - add paths to store using given hashing algorithm
# --verify - check Nix database for consistency
# --verify-path - check path contents against Nix database
# --dump - write a single path to a Nix Archive
# --restore - extract a Nix archive
# --export - export store paths to a Nix Archive
# --import - import Nix Archive into the store
# --optimise - reduce disk space usage
# --read-log - print build log
# --dump-db - export Nix database
# --load-db - import Nix database
# --print-env - print the build environment of a derivation
# --generate-binary-cache-key - generate key pair to use for a binary cache
EOF
    else
        $1 --help $2 | \
        sed \
            -e '/^Examples/,$ d' \
            -e 's/…/.../g' \
            -e "/^\s*$1/ {s/\[{/[/g;s/}\]/]/g;}" \
            -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

    fi
}

_patch_table() {
    if [[ "$*" == "nix-store --verify" ]]; then
        _patch_table_dedup_options \
            '--repair' \

    else
        cat
    fi
}
