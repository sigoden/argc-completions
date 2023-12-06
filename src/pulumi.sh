_patch_help() {
    $@ --help | sed 's/\x0//g'
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
        | \
        _patch_table_edit_options \
            '--stack;[`_choice_stack`]' \
    )"

    if [[ "$*" == "pulumi new" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'template-url;[`_choice_template`]'

    elif [[ "$*" == "pulumi config"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_arguments 'key;[`_choice_config_key`]' \
        )"

        if [[ "$*" == "pulumi config rm-all" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments ';;' 'keys;*[`_choice_config_key`]'

        elif [[ "$*" == "pulumi config set-all" ]]; then
            echo "$table" | \
            _patch_table_edit_arguments ';;' 'key-values;*[`_choice_config_key_value`]'

        else
            echo "$table"
        fi

    elif [[ "$*" == "pulumi stack init" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--copy-config-from;[`_choice_all_stack`]' \

    elif [[ "$*" == "pulumi import" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--parent;[`_choice_name_urn`]' \
            '--provider;[`_choice_name_urn`]' \

    elif [[ "$*" == "pulumi state delete" ]] \
      || [[ "$*" == "pulumi state unprotect" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'resource-urn;[`_choice_urn_cached`]' \


    elif [[ "$*" == "pulumi state rename" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--stack;[`_choice_all_stack`]' \
        | \
        _patch_table_edit_arguments \
            'resource-urn;[`_choice_urn_cached`]' \

    elif [[ "$*" == "pulumi up" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--replace;[`_choice_urn_cached`]' \
            '--target;[`_choice_urn_cached`]' \
            '--target-replace;[`_choice_urn_cached`]' \
        | \
        _patch_table_edit_arguments 'template-url;[`_choice_template`]'

    elif [[ "$*" == "pulumi destroy" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--target;[`_choice_urn_cached`]' \

    elif [[ "$*" == "pulumi preview" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--replace;[`_choice_urn_cached`]' \
            '--target;[`_choice_urn_cached`]' \
            '--target-replace;[`_choice_urn_cached`]' \

    elif [[ "$*" == "pulumi cancel" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'stack-name;[`_choice_inprogress_stack`]' \

    elif [[ "$*" == "pulumi plugin install" ]] \
      || [[ "$*" == "pulumi plugin rm" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            ';;' \
            'kind;[`_choice_plugin_kind`]' \
            'name;[`_choice_plugin_name`]' \
            'version;[`_choice_plugin_version`]' \


    elif [[ "$*" == "pulumi logs" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--resource;[`_choice_urn_cached`]' \

    else
        echo "$table"
    fi
}

_choice_stack() {
    _pulumi stack ls --json | yq '.[].name' 
}

_choice_template() {
    cat <<-'EOF'
alicloud-csharp	A minimal AliCloud C# Pulumi program
alicloud-fsharp	A minimal AliCloud F# Pulumi program
alicloud-go	A minimal AliCloud Go Pulumi program
alicloud-javascript	A minimal AliCloud JavaScript Pulumi program
alicloud-python	A minimal AliCloud Python Pulumi program
alicloud-typescript	A minimal AliCloud TypeScript Pulumi program
alicloud-visualbasic	A minimal AliCloud VB.NET Pulumi program
aws-csharp	A minimal AWS C# Pulumi program
aws-fsharp	A minimal AWS F# Pulumi program
aws-go	A minimal AWS Go Pulumi program
aws-javascript	A minimal AWS JavaScript Pulumi program
aws-python	A minimal AWS Python Pulumi program
aws-typescript	A minimal AWS TypeScript Pulumi program
aws-visualbasic	A minimal AWS VB.NET Pulumi program
azure-classic-csharp	A minimal C# Pulumi program with the classic Azure provider
azure-classic-fsharp	A minimal F# Pulumi program with the classic Azure provider
azure-classic-go	A minimal Go Pulumi program with the classic Azure provider
azure-classic-javascript	A minimal JavaScript Pulumi program with the classic Azure provider
azure-classic-python	A minimal Python Pulumi program with the classic Azure provider
azure-classic-typescript	A minimal TypeScript Pulumi program with the classic Azure provider
azure-classic-visualbasic	A minimal VB.NET Pulumi program with the classic Azure provider
azure-csharp	A minimal Azure Native C# Pulumi program
azure-fsharp	A minimal Azure Native F# Pulumi program
azure-go	A minimal Azure Native Go Pulumi program
azure-javascript	A minimal JavaScript Pulumi program with the native Azure provider
azure-python	A minimal Azure Native Python Pulumi program
azure-typescript	A minimal Azure Native TypeScript Pulumi program
csharp	A minimal C# Pulumi program
digitalocean-go	A minimal DigitalOcean Go Pulumi program
digitalocean-javascript	A minimal DigitalOcean JavaScript Pulumi program
digitalocean-python	A minimal DigitalOcean Python Pulumi program
digitalocean-typescript	A minimal DigitalOcean TypeScript Pulumi program
equinix-metal-go	A minimal Equinix Metal Go Pulumi program
equinix-metal-javascript	A minimal Equinix Metal JavaScript Pulumi program
equinix-metal-python	A minimal Equinix Metal Python Pulumi program
equinix-metal-typescript	A minimal Equinix Metal TypeScript Pulumi program
fsharp	A minimal F# Pulumi program
gcp-csharp	A minimal GCP C# Pulumi program
gcp-fsharp	A minimal GCP F# Pulumi program
gcp-go	A minimal Google Cloud Go Pulumi program
gcp-javascript	A minimal Google Cloud JavaScript Pulumi program
gcp-python	A minimal Google Cloud Python Pulumi program
gcp-typescript	A minimal Google Cloud TypeScript Pulumi program
gcp-visualbasic	A minimal GCP VB.NET Pulumi program
go	A minimal Go Pulumi program
google-native-csharp	A minimal Google Cloud C# Pulumi program
google-native-go	A minimal Google Cloud Go Pulumi program
google-native-python	A minimal Google Cloud Python Pulumi program
google-native-typescript	A minimal Google Cloud TypeScript Pulumi program
hello-aws-javascript	A simple AWS serverless JavaScript Pulumi program
javascript	A minimal JavaScript Pulumi program
kubernetes-csharp	A minimal Kubernetes C# Pulumi program
kubernetes-fsharp	A minimal Kubernetes F# Pulumi program
kubernetes-go	A minimal Kubernetes Go Pulumi program
kubernetes-javascript	A minimal Kubernetes JavaScript Pulumi program
kubernetes-python	A minimal Kubernetes Python Pulumi program
kubernetes-typescript	A minimal Kubernetes TypeScript Pulumi program
linode-go	A minimal Linode Go Pulumi program
linode-javascript	A minimal Linode JavaScript Pulumi program
linode-python	A minimal Linode Python Pulumi program
linode-typescript	A minimal Linode TypeScript Pulumi program
openstack-go	A minimal OpenStack Go Pulumi program
openstack-javascript	A minimal OpenStack JavaScript Pulumi program
openstack-python	A minimal OpenStack Python Pulumi program
openstack-typescript	A minimal OpenStack TypeScript Pulumi program
python	A minimal Python Pulumi program
typescript	A minimal TypeScript Pulumi program
visualbasic	A minimal VB.NET Pulumi program
EOF
}

_choice_config_key() {
    _pulumi config --json | yq 'to_entries | .[] | .key + "	" + .value.value'
}

_choice_config_key_value() {
    _choice_config_key | _argc_util_transform suffix== nospace
}

_choice_all_stack() {
    _pulumi stack ls --json --all | yq '.[].name'
}

_choice_name_urn() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        :;
    else
        _choice_urn_cached
    fi
}

_choice_urn_cached() {
    _argc_util_cache 180 _choice_urn "pulumi__choice_urn:${argc_cwd:-`pwd`}:${argc_stack}"
}

_choice_inprogress_stack() {
    _pulumi stack ls --json | yq 'filter(.updateInProgress == false) | .[].name' 
}

_choice_plugin_kind() {
    _pulumi plugin ls --json | yq '.[].kind'
}

_choice_plugin_name() {
    _pulumi plugin ls --json | yq 'filter(.kind == "'$argc_kind'") | .[].name'
}

_choice_plugin_version() {
    _pulumi plugin ls --json | yq 'filter(.kind == "'$argc_kind'" && .name == "'$argc_name'") | .[].version'
}

_choice_urn() {
    if [[ -z "$argc_stack" ]]; then
        _pulumi stack export | yq '.deployment.resources[].urn'
    else
        _pulumi stack export --stack $argc_stack | yq '.deployment.resources[].urn'
    fi
}

_pulumi() {
    PULUMI_SKIP_UPDATE_CHECK=1 \
    pulumi $(_argc_util_param_select_options --cwd) "$@"
}
