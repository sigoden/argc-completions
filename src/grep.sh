_patch_table() { 
    _patch_table_edit_options \
        '--binary-files;[binary|test|without-match]' \
        '--color;[auto|never|always]' \
        '--colour;[auto|never|always]' \
        '--devices;[read|skip]' \
        '--directories;[read|recurse|skip]' \
    | \
    _patch_table_edit_arguments ';;' 'FILES...'
}
