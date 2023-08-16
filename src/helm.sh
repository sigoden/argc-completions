_patch_help() { 
    if [[ "$*" == "helm" ]]; then
        $@ --help | sed '1,/^Usage:/ d'
    else
        $@ --help
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--keyring(<file>)' \
            '--kube-context;[`_choice_kube_context`]' \
            '--namespace;[`_choice_kube_namespace`]' \
            '--output;[table|json|yaml]' \
        | \
        _patch_table_edit_arguments \
            'chart;[`_choice_chart`]' \
            'release;[`_choice_release`]' \
            'release_name;[`_choice_release`]' \
    )"

    if [[ "$*" == "helm" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'dependency(dependency, dep, dependencies)' \
            'history(history, hist)' \
            'list(list, ls)' \
            'pull(pull, fetch)' \
            'show(show, inspect)' \
            'uninstall(uninstall, del, delete, un)' \
            'update(update, up)' \


    elif [[ "$*" == "helm install" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--set-file(<file>);*,[`_choice_set_file`]' \
            '--values(<file...>)' \

    elif [[ "$*" == "helm lint" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--set-file(<file>);*,[`_choice_set_file`]' \
            '--values(<file...>)' \

    elif [[ "$*" == "helm plugin" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'install(install, add)' \
            'list(list, ls)' \
            'uninstall(uninstall, rm, remove)' \
            'update(update, up)' \

    elif [[ "$*" == "helm plugin uninstall" ]] \
      || [[ "$*" == "helm plugin update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'plugin;[`_choice_plugin`]' \

    elif [[ "$*" == "helm pull" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'chart;[`_choice_repo_chart`]' \

    elif [[ "$*" == "helm push" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'chart(<dir>)' \

    elif [[ "$*" == "helm repo" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'list(list, ls)' \
            'remove(remove, rm)' \
            'update(update, up)' \

    elif [[ "$*" == "helm repo remove" ]] \
      || [[ "$*" == "helm repo update" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'name;*[`_choice_repo_name`]' \

    elif [[ "$*" == "helm rollback" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'revision;[`_choice_revision`]'

    elif [[ "$*" == "helm template" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--post-renderer(<path>)' \
            '--set-file(<file>);*,[`_choice_set_file`]' \
            '--values(<file...>)' \

    elif [[ "$*" == "helm uninstall" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--cascade;[background|orphan|foreground]' \

    elif [[ "$*" == "helm upgrade" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--post-renderer(<path>)' \
            '--set-file(<file>);*,[`_choice_set_file`]' \
            '--values(<file...>)' \

    else
        echo "$table"
    fi
}

_choice_kube_context() {
    kubectl config get-contexts -o name
}

_choice_kube_namespace() {
    kubectl get namespaces | tail -n +2 | gawk '{print $1}'
}

_choice_chart() {
    _choice_repo_chart
    _argc_util_comp_path isdir
}

_choice_release() {
    _helm list --output json | yq '.[] | .name + "	" + .chart'
}

_choice_set_file() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        :;
    else
        _argc_util_comp_path
    fi
}

_choice_plugin() {
    _helm plugin list | _argc_util_transform_table 'NAME;DESCRIPTION' '\t'
}

_choice_repo_chart() {
    _argc_util_mode_kv /
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_repo_name | _argc_util_transform suffix=/ nospace
    else
        chart_yaml_path="$(_argc_util_path_resolve CACHE_DIR /helm/repository/${argc__kv_key}-index.yaml)"
        if [[ ! -f  "$chart_yaml_path" ]]; then
            return
        fi
        cat "$chart_yaml_path" | \
        yq '.entries |
            to_entries | .[] |
            {"name": .key, "decription": .value[0].description } |
            .decription |= split("\n") |
            .name + "	" + .decription[0]'
    fi
}

_choice_repo_name() {
    repo_yaml_path="$(_argc_util_path_resolve CONFIG_DIR helm/repositories.yaml)" 
    if [[ ! -f  "$repo_yaml_path" ]]; then
        return
    fi
    cat "$repo_yaml_path" | yq '.repositories[] | .name + "	" + .url'
}

_choice_revision() {
    _helm history --output json "${argc__positionals[0]}" | yq '.[] | .revision + "	" + .description'
}

_helm() {
    local opts=( \
        --kube-apiserver \
        --kube-as-group \
        --kube-as-user \
        --kube-ca-file \
        --kube-context \
        --kube-insecure-skip-tls-verify \
        --kube-tls-server-name \
        --kube-token \
        --kubeconfig \
        --namespace \
        --registry-config \
        --repository-cache \
        --repository-config \
    )
    helm $(_argc_util_param_select_options ${opts[@]}) "$@"
}
