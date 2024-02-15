_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--deps-mode;[`_choice_deps_mode`]' \
    )"
    if [[ "$*" == "luarocks build" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '--build-deps' \
            '--deps-only' \
            '--pin' \

    else
        echo "$table"
    fi
}

_choice_deps_mode() {
    cat <<'EOF'
all	use all trees from the rocks_trees list for finding dependencies
one	use only the current tree (possibly set with --tree)
order	use trees based on order (use the current tree and all trees below it on the rocks_trees list)
none	ignore dependencies altogether.
EOF

}
