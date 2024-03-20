_patch_table() {
    if [[ "$*" == "vfox info" ]] \
    || [[ "$*" == "vfox list" ]] \
    || [[ "$*" == "vfox available" ]] \
    || [[ "$*" == "vfox search" ]] \
    || [[ "$*" == "vfox update" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'plugin;[`_choice_installed_plugin`]'

    elif [[ "$*" == "vfox add" ]]; then
        _patch_table_edit_arguments ';;' 'plugin;[`_choice_plugin_cached`]'

    else
        _patch_table_edit_arguments ';;' 'sdk;[`_choice_sdk`]'
    fi
}

_choice_sdk() {
    if [[ "$ARGC_CWORD" != *'@'* ]]; then
        _choice_installed_plugin | _argc_util_transform nospace
    else
        plugin="${ARGC_CWORD%%@*}" 
        vfox list "$plugin" | _argc_util_strip_ansi | sed -n 's/^-> v/'"$plugin"'@/p' | sed 's/ <— /\t/'
    fi
}

_choice_installed_plugin() {
    vfox list | _argc_util_strip_ansi | sed -n 's/^\(├──\|└──\|└─┬\|├─┬\)//p'
}

_choice_plugin_cached() {
    _argc_util_cache 86400 _choice_plugin
}

_choice_plugin() {
    curl -fsSL https://version-fox.github.io/version-fox-plugins | \
    yq '.[] | .category as $x | .files[] | ($x + "/" + .name)'
}
