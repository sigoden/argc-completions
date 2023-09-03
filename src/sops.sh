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
            '--kms(<value>);*,' \
            '--gcp-kms(<value>);*,' \
            '--azure-kv(<value>);*,' \
            '--hc-vault-transit(<value>);*,' \
            '--pgp(<value>);*,' \
            '--age(<value>);*,' \
            '--input-type;[json|yaml|dotenv|binary]' \
            '--output-type;[json|yaml|dotenv|binary]' \
            '--add-gcp-kms(<value>);*,' \
            '--rm-gcp-kms(<value>);*,' \
            '--add-azure-kv(<value>);*,' \
            '--rm-azure-kv(<value>);*,' \
            '--add-kms(<value>);*,' \
            '--rm-kms(<value>);*,' \
            '--add-hc-vault-transit(<value>);*,' \
            '--rm-hc-vault-transit(<value>);*,' \
            '--add-pgp(<value>);*,' \
            '--rm-pgp(<value>);*,' \
            '--encryption-context(<value>);*,' \
            '--add-page(<value>);*,' \
            '--rm-page(<value>);*,' \

    elif [[ "$*" == "sops groups add" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--encryption-context(<value>);*,' \

    else
        echo "$table"
    fi
}
