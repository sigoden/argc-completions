_patch_help() { 
    _common_edit() {
        gawk '{
            noPrint = 0
            if (match($0, /^Examples:/)) {
                exampleZone = 1
            } else if (match($0, /^Options:/)) {
                exampleZone = 0
                optionZone = 1
            } else if (match($0, /^(Usage|Available Commands):/)) {
                exampleZone = 0
                optionZone = 0
            } else if (match($0, /    -.*:$/)) {
                noPrint = 1
                line = substr($0, 1, length($0) - 1)
                if (match(line, /=(false|true)$/)) {
                    line = substr(line, 1, length(line) - RLENGTH)
                } else if (match(line, /=\[([A-Za-z0-9_-]+(,[A-Za-z0-9_-]+)+)\]$/, arr)) {
                    gsub(",", "|", arr[1])
                    line = substr(line, 1, length(line) - RLENGTH) " " arr[1]
                } else if (match(line, /=\[\]$/)) {
                    line = substr(line, 1, length(line) - RLENGTH) " <value...>"
                } else if (match(line, /=(\047\047)?$/)) {
                    line = substr(line, 1, length(line) - RLENGTH) " <value>"
                } else if (match(line, /=\047(\S+)\047$/, arr)) {
                    line = substr(line, 1, length(line) - RLENGTH) " <" arr[1] ">"
                }
                print line
            } else if (match($0, /^\s*-/)) {
                noPrint = 1
            }  else if (optionZone == 1) {
                noPrint = 1
                print "      " $0
            }

            if (noPrint == 0 && exampleZone != 1) {
                print $0
            }
        }'
    }
    if [[ "$*" == "kubectl" ]]; then
        _patch_help_run_help $@ | _common_edit
        kubectl options | sed '1,2 c\Options:' | _common_edit

    elif [[ "$*" == "kubectl config set-credentials" ]]; then
        _patch_help_run_help $@ | _common_edit | sed '1,/Options:/ c\Options:'

    else
        _patch_help_run_help $@ | _common_edit
    fi
}

_patch_table() { 
    if [[ "$*" == "kubectl" ]]; then
        table="$( \
            _patch_table_edit_options \
                '--cache-dir(<dir>)' \
                '--certificate-authority(<path>)' \
                '--client-certificate(<path>)' \
                '--client-key(<path>)' \
                '--cluster;[`_choice_cluster`]' \
                '--context;[`_choice_context`]' \
                '--kubeconfig(<path>)' \
                '--namespace;[`_choice_namespace`]' \
                '--user;[`_choice_user`]' \
                '--vmodule(<value...>);*,' \
        )"
    else
        table="$( \
            _patch_table_copy_options kubectl; \
            _patch_table_edit_options \
                '--dry-run;[none|never|silent]' \
                '--filename(<file>)' \
                '--kustomize(<dir>)' \
                '--template(<file>)' \
                '--validate;[strict|true|warn|ignore|false]' \
        )"
    fi

    if [[ "$*" == "kubectl create" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "kubectl create rolebinding" ]]; then
        echo "$table" | \
        _patch_table_dedup_options --user \
        | \
        _patch_table_edit_options \
            '--clusterrole;[`_choice_clusterrole`]' \
            '--user(<value>...); ;Usernames to bind to the role.' \
            '--serviceaccount;[`_choice_serviceaccount`]' \

    elif [[ "$*" == "kubectl create clusterrolebinding" ]]; then
        echo "$table" | _patch_table_dedup_options --user

    elif [[ "$*" == "kubectl create secret "* ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--clusterrole;[`_choice_clusterrole`]' \
            '--from-file(<file>)' \
            '--from-env-file(<file>)' \
            '--key(<file>)' \

    elif [[ "$*" == "kubectl create role" ]] \
      || [[ "$*" == "kubectl create clusterrole" ]] \
      ; then
        echo "$table" | \
        _patch_table_edit_options \
            '--verb;*,[`_choice_verb_type`]' \

    elif [[ "$*" == "kubectl expose" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--override-type;[json|merge|strategic]' \
            '--type;[ClusterIP|NodePort|LoadBalancer|ExternalName]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_common_type`]' \
            'resource;[`_choice_resource`]' \
        
    elif [[ "$*" == "kubectl run" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--override-type;[json|merge|strategic]' \
            '--image;[`_choice_image_repo_tag`]' \
        | \
        _patch_table_edit_arguments 'NAME' 'args...'

    elif [[ "$*" == "kubectl set env" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'RESOURCE-NAME;[`_choice_resource_type_and_name`]' \
            'kv...' \

    elif [[ "$*" == "kubectl set image" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_resource_type_or_resource`]' \
            'container-image;*[`_choice_container_image`]' \

    elif [[ "$*" == "kubectl set resource" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_all_type`]' \
            'resource;[`_choice_resource`]' \

    elif [[ "$*" == "kubectl set selector" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_all_type`]' \
            'resource;[`_choice_resource`]' \
            'key=value...' \

    elif [[ "$*" == "kubectl set serviceaccount" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'RESOURCE-NAME;[`_choice_resource_type_and_name`]' \
            'name' \

    elif [[ "$*" == "kubectl set subject" ]]; then
        echo "$table" | _patch_table_dedup_options --user

    elif [[ "$*" == "kubectl explain" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'RESOURCE;[`_choice_all_type`]' \

    elif [[ "$*" == "kubectl get" ]] \
      || [[ "$*" == "kubectl edit" ]] \
      || [[ "$*" == "kubectl delete" ]] \
      || [[ "$*" == "kubectl describe" ]] \
      || [[ "$*" == "kubectl patch" ]] \
        ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_all_type`]' \
            'resource;[`_choice_resource`]' \

    elif [[ "$*" == "kubectl rollout "* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'RESOURCE-NAME;[`_choice_resource_type_and_name`]' \

    elif [[ "$*" == "kubectl scale" ]] \
      || [[ "$*" == "kubectl autoscale" ]] \
        ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'RESOURCE-NAME;[`_choice_resource_type_and_name`]' \

    elif [[ "$*" == "kubectl top node" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_node`]' \

    elif [[ "$*" == "kubectl top pod" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_pod`]' \

    elif [[ "$*" == "kubectl cordon" ]] \
      || [[ "$*" == "kubectl uncordon" ]] \
      || [[ "$*" == "kubectl drain" ]] \
      ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_node`]' \

    elif [[ "$*" == "kubectl taint" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NODE;[node]' \
            'NAME;[`_choice_node`]' \
            'key-value...' \

    elif [[ "$*" == "kubectl logs" ]] \
      || [[ "$*" == "kubectl attach" ]] \
      ; then
        echo "$table" | \
        _patch_table_edit_options \
            '--container;[`_choice_filtered_container`]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'POD;[`_choice_pod`]' \

    elif [[ "$*" == "kubectl exec" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--container;[`_choice_filtered_container`]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'POD;[`_choice_pod`]' \
            'args...'

    elif [[ "$*" == "kubectl port-forward" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'POD;[`_choice_pod`]' \
            'old:new-port...'

    elif [[ "$*" == "kubectl cp" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'src;[`_choice_cp`]' \
            'desc;[`_choice_cp`]'

    elif [[ "$*" == "kubectl auth can-i" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'verb;[`_choice_verb_type`]' \
            'type-name;[`_choice_all_type`]'

    elif [[ "$*" == "kubectl debug" ]]; then
        echo "$table" | \
        _patch_table_dedup_options --profile \
        | \
        _patch_table_edit_options \
            '--container;[`_choice_filtered_container`]' \
            '--image;[`_choice_image_repo_tag`]' \
            '--profile;[legacy|general|baseline|netadmin|restricted]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'POD;[`_choice_pod`]' \
            'args...'

    elif [[ "$*" == "kubectl debug" ]] \
      || [[ "$*" == "kubectl apply" ]] \
      || [[ "$*" == "kubectl apply set-last-applied" ]] \
      || [[ "$*" == "kubectl replace" ]] \
      ; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "kubectl apply edit-last-applied" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'RESOURCE-NAME;[`_choice_resource_type_and_name`]' \

    elif [[ "$*" == "kubectl apply view-last-applied" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_resource_type_or_resource`]' \

    elif [[ "$*" == "kubectl wait" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_common_type`]' \
            'resource;[`_choice_resource`]' \

    elif [[ "$*" == "kubectl label" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_all_type`]' \
            'resource;[`_choice_resource`]' \
            'key-value...' \

    elif [[ "$*" == "kubectl annotate" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'type-name;[`_choice_all_type`]' \
            'resource;[`_choice_resource`]' \
            'key-value...' \

    elif [[ "$*" == "kubectl completion" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'SHELL;[bash|zsh|fish|powershell]' \

    elif [[ "$*" == "kubectl config delete-cluster" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_cluster`]' \

    elif [[ "$*" == "kubectl config delete-context" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_context`]' \

    elif [[ "$*" == "kubectl config delete-user" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_user`]' \

    elif [[ "$*" == "kubectl config get-contexts" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;'

    elif [[ "$*" == "kubectl config rename-context" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'CONTEXT_NAME;[`_choice_context`]' \
            'NEW_NAME' \

    elif [[ "$*" == "kubectl config set-cluster" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            ';;' \
            --certificate-authority \
            --insecure-skip-tls-verify \
            --server \
            --tls-server-name \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_cluster`]' \

    elif [[ "$*" == "kubectl config set-context" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            ';;' \
            --cluster \
            --namespace \
            --user \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'NAME;[`_choice_context`]' \

    elif [[ "$*" == "kubectl config set-credentials" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            --password \
            --token \
            --username \
            ';;' \
            --client-certificate \
            --client-key \
            --user \

    elif [[ "$*" == "kubectl config use-context" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'CONTEXT_NAME;[`_choice_context`]' \

    else
        echo "$table"
    fi
}

_kubectl() {
    kubectl $(_argc_util_param_select_options --namespace) "$@"
}

_choice_cluster() {
    kubectl config get-clusters | tail -n +2
}

_choice_context() {
    kubectl config get-contexts -o name
}

_choice_namespace() {
    kubectl get namespaces | tail -n +2 | gawk '{print $1}'
}

_choice_user() {
    kubectl config get-users | tail -n +2
}

_choice_clusterrole() {
    kubectl get clusterrole | tail -n +2 | gawk '{print $1'}
}

_choice_serviceaccount() {
    kubectl get serviceaccounts | tail -n +2 |  gawk '{print $1'}
}

_choice_image_repo_tag() {
    docker image ls --format '{{.Repository}}:{{.Tag}}' | sed 's/:/=/' | _argc_util_comp_kv :
}

_choice_all_type() {
    kubectl api-resources --output=name --cached | gawk -F. '{print $1}'
}

_choice_common_type() {
    printf "%s\n" pod service replicationcontroller deployment replicaset
}

_choice_verb_type() {
    printf "%s\n" get list create update patch watch delete deletecollection
}

_choice_resource() {
    if [[ -n "${argc__positionals[0]}" ]]; then
        _helper_find_resource_by_type "${argc__positionals[0]}"
    fi
}

_choice_resource_type_and_name() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_all_type | _argc_util_transform suffix=/ nospace
    else
        _helper_find_resource_by_type $argc__kv_key
    fi
}

_choice_resource_type_or_resource() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_all_type | _argc_util_transform nospace
    else
        _helper_find_resource_by_type $argc__kv_key
    fi
}


_choice_container_image() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_container | _argc_util_transform suffix== nospace
    else
        _choice_image_repo_tag
    fi
}

_choice_container() {
    _kubectl get pods -o go-template --template="$(echo -e "{{range .items}}{{range .spec.containers}}{{.name}}\t{{.image}}\n{{end}}{{end}}")"
}

_choice_node() {
    _helper_find_resource_by_type nodes
}

_choice_pod() {
    _helper_find_resource_by_type pods
}

_choice_filtered_container() {
    if [[ "${argc__positionals[0]}" != *"/"* ]]; then
        _kubectl get pods "${argc__positionals[0]}"  -o jsonpath='{.spec.containers[*].name}'
    fi
}

_choice_pod_or_resource() {
    _argc_util_parallel _choice_pod ::: _choice_resource_type_and_name
}

_choice_cp() {
    _argc_util_mode_kv ':'
    _complete_container_path() {
        if [[ -z "$argc__kv_prefix" ]]; then
            echo "__argc_value=file"
            if ! _argc_util_is_path "$src"; then
                _choice_pod | _argc_util_transform suffix=: nospace
            fi
        else
            _argc_util_mode_parts '/' "$argc__kv_filter" "$argc__kv_prefix"
            if [[ -z "$argc__kv_filter" ]]; then
                echo -e "/\0"
                return
            fi
            _kubectl exec "${argc__kv_key}" -- ls -1p "$argc__parts_local_prefix" | _argc_util_transform nospaceIfEnd=/
        fi
    }
    if [[ ${#argc__positionals[@]} -eq 1 ]]; then
        _complete_container_path
    else
        if [[ "${argc__positionals[0]}" == *':'* ]]; then
            echo "__argc_value=file"
        else
            _complete_container_path
        fi
    fi
}

_helper_find_resource_by_type() {
    _kubectl get $1 -o go-template --template="$(echo -e "{{range .items}}{{.metadata.name}}\t{{.kind}}\n{{end}}")" 
}