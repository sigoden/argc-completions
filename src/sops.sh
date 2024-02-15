_patch_help() {
    if [[ "$*" == "sops" ]]; then
        $@ --help | sed '/^USAGE:/,/^[A-Z]/ d'

    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
    )"

    if [[ "$*" == "sops" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--add-azure-kv(<value>);*,' \
            '--add-gcp-kms(<value>);*,' \
            '--add-hc-vault-transit(<value>);*,' \
            '--add-kms(<value>);*,' \
            '--add-page(<value>);*,' \
            '--add-pgp(<value>);*,' \
            '--age(<value>);*,' \
            '--azure-kv(<value>);*,' \
            '--encryption-context(<value>);*,' \
            '--gcp-kms(<value>);*,' \
            '--hc-vault-transit(<value>);*,' \
            '--input-type;[json|yaml|dotenv|binary]' \
            '--kms(<value>);*,' \
            '--output-type;[json|yaml|dotenv|binary]' \
            '--pgp(<value>);*,' \
            '--rm-azure-kv(<value>);*,' \
            '--rm-gcp-kms(<value>);*,' \
            '--rm-hc-vault-transit(<value>);*,' \
            '--rm-kms(<value>);*,' \
            '--rm-page(<value>);*,' \
            '--rm-pgp(<value>);*,' \

    elif [[ "$*" == "sops groups add" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--encryption-context(<value>);*,' \

    else
        echo "$table"
    fi
}
