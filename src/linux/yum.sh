_patch_help() { 
    if [[ "$*" == "yum" ]]; then
        $@ --help | \
        sed '/^List of Main Commands:/,+1 c\Commands:' | \
        sed '/^Commands:/,/^$/ s/^/  /; s/^  Commands:/Commands:/'

    else
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "yum alias" ]]; then
        _patch_table_edit_arguments ';;' 'action;[add|list|delete]'

    elif [[ "$*" == "yum autoremove" ]] \
      || [[ "$*" == "yum distro-sync" ]] \
      || [[ "$*" == "yum downgrade" ]] \
      || [[ "$*" == "yum mark" ]] \
      || [[ "$*" == "yum reinstall" ]] \
      || [[ "$*" == "yum remove" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_installed_package`]'

    elif [[ "$*" == "yum check-update" ]] \
      || [[ "$*" == "yum info" ]] \
      || [[ "$*" == "yum install" ]] \
      || [[ "$*" == "yum list" ]] \
      || [[ "$*" == "yum updateinfo" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_package`]'

    elif [[ "$*" == "yum clean" ]]; then
        _patch_table_edit_arguments ';;' 'action;[metadata|packages|dbcache|expire-cache|all]'

    elif [[ "$*" == "yum deplist" ]]; then
        _patch_table_edit_arguments ';;' 'key...'

    elif [[ "$*" == "yum group" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[summary|list|info|remove|install|upgrade|mark]' 'args...'

    elif [[ "$*" == "yum history" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[list|info|redo|replay|rollback|store|undo|userinstalled]' 'transaction' 'file'

    elif [[ "$*" == "yum module" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[`_choice_module_cmd`]' 'module-spec...'

    elif [[ "$*" == "yum provides" ]]; then
        _patch_table_edit_arguments ';;' 'provide-spec...'

    elif [[ "$*" == "yum repolist" ]]; then
        _patch_table_edit_arguments ';;' 'repository...'

    elif [[ "$*" == "yum repoquery" ]]; then
        _patch_table_edit_arguments ';;' 'key...'

    elif [[ "$*" == "yum repository-packages" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'repoid' \
            'cmd;[remove|install|remove-or-reinstall|info|remove-or-distro-sync|check-update|reinstall|reinstall-old|move-to|upgrade|list]' \
            'package;*[`_choice_package`]' \

    elif [[ "$*" == "yum search" ]]; then
        _patch_table_edit_arguments ';;' 'keyword...'

    elif [[ "$*" == "yum shell" ]]; then
        _patch_table_edit_arguments ';;' 'script'

    elif [[ "$*" == "yum swap" ]]; then
        _patch_table_edit_arguments ';;' 'remove-spec' 'install-spec'

    elif [[ "$*" == "yum upgrade" ]] \
      || [[ "$*" == "yum upgrade-minimal" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_upgradable_pkg`]'


    else
        cat
    fi
}

_choice_installed_package() {
    yum list --installed | _helper_transform_pkg
}

_choice_package() {
    yum list --all | _helper_transform_pkg
}

_choice_module_cmd() {
    cat <<-'EOF'
disable	disable a module with all its streams
enable	enable a module stream
info	print detailed information about a module
install	install a module profile including its packages
list	list all module streams, profiles and states
provides	list modular packages
remove	remove installed module profiles and their packages
repoquery	list packages belonging to a module
reset	reset a module
switch-to	switch a module to a stream and distrosync rpm packages
update	update packages associated with an active stream
EOF
}

_choice_upgradable_pkg() {
    yum list --upgrade | _helper_transform_pkg
}

_helper_transform_pkg() {
    gawk '{if (NR>1) { gsub(/\.[^.]+$/, "", $1); print $1 } }'
}
