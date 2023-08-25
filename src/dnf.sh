_patch_help() { 
    if [[ "$*" == "dnf" ]]; then
        $@ --help | \
        sed '/^List of Main Commands:/,+1 c\Commands:' | \
        sed '/^Commands:/,/^$/ s/^/  /; s/^  Commands:/Commands:/'

    else
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "dnf alias" ]]; then
        _patch_table_edit_arguments ';;' 'action;[add|list|delete]'

    elif [[ "$*" == "dnf autoremove" ]] \
      || [[ "$*" == "dnf distro-sync" ]] \
      || [[ "$*" == "dnf downgrade" ]] \
      || [[ "$*" == "dnf mark" ]] \
      || [[ "$*" == "dnf reinstall" ]] \
      || [[ "$*" == "dnf remove" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_installed_package`]'

    elif [[ "$*" == "dnf check-update" ]] \
      || [[ "$*" == "dnf info" ]] \
      || [[ "$*" == "dnf install" ]] \
      || [[ "$*" == "dnf list" ]] \
      || [[ "$*" == "dnf updateinfo" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_package`]'

    elif [[ "$*" == "dnf clean" ]]; then
        _patch_table_edit_arguments ';;' 'action;[metadata|packages|dbcache|expire-cache|all]'

    elif [[ "$*" == "dnf deplist" ]]; then
        _patch_table_edit_arguments ';;' 'key...'

    elif [[ "$*" == "dnf group" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[summary|list|info|remove|install|upgrade|mark]' 'args...'

    elif [[ "$*" == "dnf history" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[list|info|redo|replay|rollback|store|undo|userinstalled]' 'transaction' 'file'

    elif [[ "$*" == "dnf module" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[`_choice_module_cmd`]' 'module-spec...'

    elif [[ "$*" == "dnf provides" ]]; then
        _patch_table_edit_arguments ';;' 'provide-spec...'

    elif [[ "$*" == "dnf repolist" ]]; then
        _patch_table_edit_arguments ';;' 'repository...'

    elif [[ "$*" == "dnf repoquery" ]]; then
        _patch_table_edit_arguments ';;' 'key...'

    elif [[ "$*" == "dnf repository-packages" ]]; then
        _patch_table_edit_arguments \
            ';;' \
            'repoid' \
            'cmd;[remove|install|remove-or-reinstall|info|remove-or-distro-sync|check-update|reinstall|reinstall-old|move-to|upgrade|list]' \
            'package;*[`_choice_package`]' \

    elif [[ "$*" == "dnf search" ]]; then
        _patch_table_edit_arguments ';;' 'keyword...'

    elif [[ "$*" == "dnf shell" ]]; then
        _patch_table_edit_arguments ';;' 'script'

    elif [[ "$*" == "dnf swap" ]]; then
        _patch_table_edit_arguments ';;' 'remove-spec' 'install-spec'

    elif [[ "$*" == "dnf upgrade" ]] \
      || [[ "$*" == "dnf upgrade-minimal" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_upgradable_pkg`]'

    else
        cat
    fi
}

_choice_installed_package() {
    dnf repoquery --cacheonly "$ARGC_CWORD*" --qf "%{name}" --installed
}

_choice_package() {
    dnf repoquery --cacheonly "$ARGC_CWORD*" --qf "%{name}" --available
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
    dnf repoquery --cacheonly "$ARGC_CWORD*" --qf "%{name}" --upgrades 
}
