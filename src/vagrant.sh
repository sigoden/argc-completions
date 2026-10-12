_patch_help() {
    if [[ "$*" == "vagrant login" ]]; then
        :;
    elif [[ "$*" == "vagrant serve" ]]; then
        :;
    elif [[ "$*" == "vagrant ssh" ]]; then
        $@ --help | sed -e '/^\s*--no-tty/ d'
    else
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "vagrant box"* ]]; then
        if [[ "$*" == "vagrant box add" ]]; then
            _patch_table_edit_options \
                '--provider;[`_choice_provider`]' \
            | \
            _patch_table_edit_arguments \
                'name-url-or-path;[`_choice_box_add`]' \

        elif [[ "$*" == "vagrant box prune" ]]; then
            _patch_table_edit_options \
                '--name;[`_choice_box`]' \
                '--provider;[`_choice_provider`]' \

        elif [[ "$*" == "vagrant box remove" ]]; then
            _patch_table_edit_options \
                '--box-version;[`_choice_box_version`]' \
                '--provider;[`_choice_box_provider`]' \
            | \
            _patch_table_edit_arguments \
                'name;[`_choice_box`]' \

        elif [[ "$*" == "vagrant box repackage" ]]; then
            _patch_table_edit_options \
                '--box;[`_choice_box`]' \
                '--provider;[`_choice_box_provider`]' \


        elif [[ "$*" == "vagrant box repackage" ]]; then
            _patch_table_edit_options \
                '--box;[`_choice_box`]' \
                '--provider;[`_choice_box_provider`]' \


        else
            cat
        fi

    elif [[ "$*" == "vagrant destroy" ]] \
      || [[ "$*" == "vagrant halt" ]] \
      || [[ "$*" == "vagrant port" ]] \
      || [[ "$*" == "vagrant rdp" ]] \
      || [[ "$*" == "vagrant ssh" ]] \
      || [[ "$*" == "vagrant ssh-config" ]] \
      || [[ "$*" == "vagrant status" ]] \
      || [[ "$*" == "vagrant suspend" ]] \
      || [[ "$*" == "vagrant up" ]] \
      || [[ "$*" == "vagrant winrm" ]] \
      || [[ "$*" == "vagrant winrm-config" ]] \
    ; then
        _patch_table_edit_arguments \
            'name-id;[`_choice_machine`]' \

    elif [[ "$*" == "vagrant init" ]]; then
        _patch_table_edit_options \
            '--box-version;[`_choice_box_version`]' \
        | \
        _patch_table_edit_arguments \
            'name;[`_choice_box_search`]' \

    elif [[ "$*" == "vagrant package" ]]; then
        _patch_table_edit_options \
            '--include;*,' \

    elif [[ "$*" == "vagrant plugin uninstall" ]] \
      || [[ "$*" == "vagrant plugin update" ]] \
    ; then
        _patch_table_edit_arguments \
            ';;' \
            'names;*[`_choice_plugin`]' \
        
    elif [[ "$*" == "vagrant provision" ]] \
      || [[ "$*" == "vagrant reload" ]] \
      || [[ "$*" == "vagrant resume" ]] \
    ; then
        _patch_table_edit_arguments \
            'vm-name;[`_choice_machine`]' \

    elif [[ "$*" == "vagrant push" ]]; then
        _patch_table_edit_arguments \
            'strategy;[atlas|ftp|heroku|sftp|local-exec]' \

    elif [[ "$*" == "vagrant snapshot"* ]]; then
        _patch_table_edit_arguments \
            'vm-name;[`_choice_machine`]' \
            'name;[`_choice_snapshot`]' \

    elif [[ "$*" == "vagrant upload" ]]; then
        _patch_table_edit_arguments \
            'source(path)' \
            'name-id;[`_choice_machine`]' \

    else
        cat
    fi
}

_choice_provider() {
		printf "%s\n" aws cloudstack digitalocean docker google hyperv libvirt lxc \
            openstack parallels qemu rackspace softlayer veertu virtualbox vmware \
            vmware_desktop vmware_fusion vmware_ovf vmware_workstation vsphere xenserver

}

_choice_box_add() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path exts=.box,.json
        return
    fi
    _choice_box_search
}

_choice_box() {
    vagrant box list | sed -n 's/^\(\S\+\).*/\1/p'
}

_choice_box_provider() {
    box="${argc_name:-$argc_box}"
    if [[ -z "$box" ]]; then
        _choice_provider
        return
    fi
    vagrant box list | sed -n "s|$box (\(\S\+\), \(\S\+\))|\1|p"
}

_choice_box_version() {
    box="${argc_name:-$argc_box}"
    if [[ -z "$box" ]]; then
        return
    fi
    if [[ -z "$argc_provider" ]]; then
        vagrant box list | sed -n "s|$box (\(\S\+\), \(\S\+\))|\2|p"
    else
        vagrant box list | sed -n "s|$box ($argc_provider, \(\S\+\))|\1|p"
    fi
}

_choice_machine() {
    _helper_find_vagrant_file
    if [[ -z "$vagrant_file" ]]; then
        return
    fi
    vagrant status | sed -n 's/^\(\S\+\)\s\+\([^(]\+\) (\(.*\))$/\1\t\3 \2/p'
}

_choice_box_search() {
    query="page=1&limit=50&q=$ARGC_CWORD"
    if [[ -n "$argc_provider" ]]; then
        query="provider=$argc_provider&$query"
    fi
    curl -fsSL "https://app.vagrantup.com/api/v1/search?$query" | yq '.boxes[].tag'
}

_choice_plugin() {
    vagrant plugin list --local | sed -n 's/\(\S\+\).*/\1/p'
}

_choice_snapshot() {
    machine="${argc_vm_name}"
    if [[ -z "$machine" ]]; then
        return
    fi
    vagrant snapshot list $machine | sed -n '2,$ p'
}

_helper_find_vagrant_file() {
    vagrant_file="$(_argc_util_path_search_parent Vagrantfile)"
}
