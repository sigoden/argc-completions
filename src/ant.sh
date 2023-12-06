_patch_help() { 
    $@ -h | sed -e 's/-\(\S\+\)\s\+\(\S\)/-\1 \2/'
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'target;*[`_choice_target`]'
}

_choice_target() {
    if [[ -f build.xml ]]; then
        yq -p xml -o yaml '.project.target[].["+@name"]' build.xml
    fi
}
