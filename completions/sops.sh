#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -d --decrypt                             decrypt a file and output the result to stdout
# @flag -e --encrypt                             encrypt a file and output the result to stdout
# @flag -r --rotate                              generate a new data encryption key and reencrypt all values with the new key
# @flag --disable-version-check                  do not check whether the current version is latest during --version
# @option -k --kms*, <value>                     comma separated list of KMS ARNs [$SOPS_KMS_ARN]
# @option --aws-profile <file>                   The AWS profile to use for requests to AWS
# @option --gcp-kms*, <value>                    comma separated list of GCP KMS resource IDs [$SOPS_GCP_KMS_IDS]
# @option --azure-kv*, <value>                   comma separated list of Azure Key Vault URLs [$SOPS_AZURE_KEYVAULT_URLS]
# @option --hc-vault-transit*, <value>           comma separated list of vault's key URI (e.g. 'https://vault.example.org:8200/v1/transit/keys/dev') [$SOPS_VAULT_URIS]
# @option -p --pgp*, <value>                     comma separated list of PGP fingerprints [$SOPS_PGP_FP]
# @option -a --age*, <value>                     comma separated list of age recipients [$SOPS_AGE_RECIPIENTS]
# @flag -i --in-place                            write output back to the same file instead of stdout
# @option --extract <value>                      extract a specific key or branch from the input document.
# @option --input-type[json|yaml|dotenv|binary] <value>  currently json, yaml, dotenv and binary are supported.
# @option --output-type[json|yaml|dotenv|binary] <value>  currently json, yaml, dotenv and binary are supported.
# @flag -s --show-master-keys                    display master encryption keys in the file during editing
# @option --add-gcp-kms*, <value>                add the provided comma-separated list of GCP KMS key resource IDs to the list of master keys on the given file
# @option --rm-gcp-kms*, <value>                 remove the provided comma-separated list of GCP KMS key resource IDs from the list of master keys on the given file
# @option --add-azure-kv*, <value>               add the provided comma-separated list of Azure Key Vault key URLs to the list of master keys on the given file
# @option --rm-azure-kv*, <value>                remove the provided comma-separated list of Azure Key Vault key URLs from the list of master keys on the given file
# @option --add-kms*, <value>                    add the provided comma-separated list of KMS ARNs to the list of master keys on the given file
# @option --rm-kms*, <value>                     remove the provided comma-separated list of KMS ARNs from the list of master keys on the given file
# @option --add-hc-vault-transit*, <value>       add the provided comma-separated list of Vault's URI key to the list of master keys on the given file ( eg.
# @option --rm-hc-vault-transit*, <value>        remove the provided comma-separated list of Vault's URI key from the list of master keys on the given file ( eg.
# @option --add-age <file>                       add the provided comma-separated list of age recipients fingerprints to the list of master keys on the given file
# @option --rm-age <file>                        remove the provided comma-separated list of age recipients from the list of master keys on the given file
# @option --add-pgp*, <value>                    add the provided comma-separated list of PGP fingerprints to the list of master keys on the given file
# @option --rm-pgp*, <value>                     remove the provided comma-separated list of PGP fingerprints from the list of master keys on the given file
# @flag --ignore-mac                             ignore Message Authentication Code during decryption
# @flag --mac-only-encrypted                     compute MAC only over values which end up encrypted
# @option --unencrypted-suffix <value>           override the unencrypted key suffix.
# @option --encrypted-suffix <value>             override the encrypted key suffix.
# @option --unencrypted-regex <value>            set the unencrypted key regex.
# @option --encrypted-regex <value>              set the encrypted key regex.
# @option --unencrypted-comment-regex <value>    set the unencrypted comment suffix.
# @option --encrypted-comment-regex <value>      set the encrypted comment suffix.
# @option --config <file>                        path to sops' config file.
# @option --encryption-context*, <value>         comma separated list of KMS encryption context key:value pairs
# @option --set <value>                          set a specific key or branch in the input document.
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @option --indent <file>                        the number of spaces to indent YAML or JSON encoded file (default: 0)
# @flag --verbose                                Enable verbose logging output
# @option --output <file>                        Save the output after encryption or decryption to the file specified
# @option --filename-override <file>             Use this filename instead of the provided argument for loading configuration, and for determining input type and output type
# @option --decryption-order <value>             comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --enable-local-keyservice                use local key service
# @option --keyservice <value>                   Specify the key services to use in addition to the local one.
# @flag -h --help                                show help
# @flag -v --version                             print the version

# {{ sops exec-env
# @cmd execute a command with decrypted values inserted into the environment
# @flag --background                 background the process and don't wait for it to complete (DEPRECATED)
# @flag --pristine                   insert only the decrypted values into the environment without forwarding existing environment variables
# @option --user <value>             the user to run the command as
# @flag --enable-local-keyservice    use local key service
# @option --keyservice <value>       Specify the key services to use in addition to the local one.
# @arg file-to-decrypt <file to decrypt>
# @arg command-to-run <command to run>
exec-env() {
    :;
}
# }} sops exec-env

# {{ sops exec-file
# @cmd execute a command with the decrypted contents as a temporary file
# @flag --background                 background the process and don't wait for it to complete (DEPRECATED)
# @flag --no-fifo                    use a regular file instead of a fifo to temporarily hold the decrypted contents
# @option --user <value>             the user to run the command as
# @option --input-type <value>       currently ini, json, yaml, dotenv and binary are supported.
# @option --output-type <value>      currently ini, json, yaml, dotenv and binary are supported.
# @option --filename <file>          filename for the temporarily file (default: tmp-file)
# @flag --enable-local-keyservice    use local key service
# @option --keyservice <value>       Specify the key services to use in addition to the local one.
# @arg file-to-decrypt <file to decrypt>
# @arg command-to-run <command to run>
exec-file() {
    :;
}
# }} sops exec-file

# {{ sops publish
# @cmd Publish sops file or directory to a configured destination
# @flag -y --yes                     pre-approve all changes and run non-interactively
# @flag --omit-extensions            Omit file extensions in destination path when publishing sops file to configured destinations
# @flag --recursive                  If the source path is a directory, publish all its content recursively
# @flag --verbose                    Enable verbose logging output
# @flag --enable-local-keyservice    use local key service
# @option --keyservice <value>       Specify the key services to use in addition to the local one.
# @arg file
publish() {
    :;
}
# }} sops publish

# {{ sops keyservice
# @cmd start a SOPS key service server
# @option --network <value>    network to listen on, e.g. 'tcp' or 'unix' (default: "tcp")
# @option --net <value>        network to listen on, e.g. 'tcp' or 'unix' (default: "tcp")
# @option --address <value>    address to listen on, e.g. '127.0.0.1:5000' or '/tmp/sops.sock' (default: "127.0.0.1:5000")
# @option --addr <value>       address to listen on, e.g. '127.0.0.1:5000' or '/tmp/sops.sock' (default: "127.0.0.1:5000")
# @flag --prompt               Prompt user to confirm every incoming request
# @flag --verbose              Enable verbose logging output
keyservice() {
    :;
}
# }} sops keyservice

# {{ sops filestatus
# @cmd check the status of the file, returning encryption status
# @arg file
filestatus() {
    :;
}
# }} sops filestatus

# {{ sops groups
# @cmd modify the groups on a SOPS file
# @flag -h --help    show help
groups() {
    :;
}

# {{{ sops groups add
# @cmd add a new group to a SOPS file
# @option -f --file <value>                 the file to add the group to
# @option --pgp <value>                     the PGP fingerprints the new group should contain.
# @option --kms <value>                     the KMS ARNs the new group should contain.
# @option --aws-profile <file>              The AWS profile to use for requests to AWS
# @option --gcp-kms <value>                 the GCP KMS Resource ID the new group should contain.
# @option --azure-kv <value>                the Azure Key Vault key URL the new group should contain.
# @option --hc-vault-transit <path>         the full vault path to the key used to encrypt/decrypt.
# @option --age <value>                     the age recipient the new group should contain.
# @flag -i --in-place                       write output back to the same file instead of stdout
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @option --encryption-context*, <value>    comma separated list of KMS encryption context key:value pairs
# @flag --enable-local-keyservice           use local key service
# @option --keyservice <value>              Specify the key services to use in addition to the local one.
groups::add() {
    :;
}
# }}} sops groups add

# {{{ sops groups delete
# @cmd delete a key group from a SOPS file
# @option -f --file <value>          the file to add the group to
# @flag -i --in-place                write output back to the same file instead of stdout
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @flag --enable-local-keyservice    use local key service
# @option --keyservice <value>       Specify the key services to use in addition to the local one.
# @arg index
groups::delete() {
    :;
}
# }}} sops groups delete
# }} sops groups

# {{ sops updatekeys
# @cmd update the keys of SOPS files using the config file
# @flag -y --yes                     pre-approve all changes and run non-interactively
# @option --input-type <value>       currently ini, json, yaml, dotenv and binary are supported.
# @flag --enable-local-keyservice    use local key service
# @option --keyservice <value>       Specify the key services to use in addition to the local one.
# @arg file
updatekeys() {
    :;
}
# }} sops updatekeys

# {{ sops decrypt
# @cmd decrypt a file, and output the results to stdout
# @flag -i --in-place                   write output back to the same file instead of stdout
# @option --extract <value>             extract a specific key or branch from the input document.
# @option --output <file>               Save the output after decryption to the file specified
# @option --input-type <value>          currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>         currently json, yaml, dotenv and binary are supported.
# @flag --ignore-mac                    ignore Message Authentication Code during decryption
# @option --filename-override <file>    Use this filename instead of the provided argument for loading configuration, and for determining input type and output type
# @option --decryption-order <value>    comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --enable-local-keyservice       use local key service
# @option --keyservice <value>          Specify the key services to use in addition to the local one.
# @arg file
decrypt() {
    :;
}
# }} sops decrypt

# {{ sops encrypt
# @cmd encrypt a file, and output the results to stdout
# @flag -i --in-place                     write output back to the same file instead of stdout
# @option --output <file>                 Save the output after decryption to the file specified
# @option -k --kms <value>                comma separated list of KMS ARNs [$SOPS_KMS_ARN]
# @option --aws-profile <file>            The AWS profile to use for requests to AWS
# @option --gcp-kms <value>               comma separated list of GCP KMS resource IDs [$SOPS_GCP_KMS_IDS]
# @option --azure-kv <value>              comma separated list of Azure Key Vault URLs [$SOPS_AZURE_KEYVAULT_URLS]
# @option --hc-vault-transit <value>      comma separated list of vault's key URI (e.g. 'https://vault.example.org:8200/v1/transit/keys/dev') [$SOPS_VAULT_URIS]
# @option -p --pgp <value>                comma separated list of PGP fingerprints [$SOPS_PGP_FP]
# @option -a --age <value>                comma separated list of age recipients [$SOPS_AGE_RECIPIENTS]
# @option --input-type <value>            currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>           currently json, yaml, dotenv and binary are supported.
# @option --unencrypted-suffix <value>    override the unencrypted key suffix.
# @option --encrypted-suffix <value>      override the encrypted key suffix.
# @option --unencrypted-regex <value>     set the unencrypted key regex.
# @option --encrypted-regex <value>       set the encrypted key regex.
# @option --encryption-context <value>    comma separated list of KMS encryption context key:value pairs
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @option --filename-override <file>      Use this filename instead of the provided argument for loading configuration, and for determining input type and output type
# @flag --enable-local-keyservice         use local key service
# @option --keyservice <value>            Specify the key services to use in addition to the local one.
# @arg file
encrypt() {
    :;
}
# }} sops encrypt

# {{ sops rotate
# @cmd generate a new data encryption key and reencrypt all values with the new key
# @flag -i --in-place                      write output back to the same file instead of stdout
# @option --output <file>                  Save the output after decryption to the file specified
# @option --input-type <value>             currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>            currently json, yaml, dotenv and binary are supported.
# @option --encryption-context <value>     comma separated list of KMS encryption context key:value pairs
# @option --add-gcp-kms <file>             add the provided comma-separated list of GCP KMS key resource IDs to the list of master keys on the given file
# @option --rm-gcp-kms <file>              remove the provided comma-separated list of GCP KMS key resource IDs from the list of master keys on the given file
# @option --add-azure-kv <file>            add the provided comma-separated list of Azure Key Vault key URLs to the list of master keys on the given file
# @option --rm-azure-kv <file>             remove the provided comma-separated list of Azure Key Vault key URLs from the list of master keys on the given file
# @option --add-kms <file>                 add the provided comma-separated list of KMS ARNs to the list of master keys on the given file
# @option --rm-kms <file>                  remove the provided comma-separated list of KMS ARNs from the list of master keys on the given file
# @option --add-hc-vault-transit <file>    add the provided comma-separated list of Vault's URI key to the list of master keys on the given file ( eg.
# @option --rm-hc-vault-transit <file>     remove the provided comma-separated list of Vault's URI key from the list of master keys on the given file ( eg.
# @option --add-age <file>                 add the provided comma-separated list of age recipients fingerprints to the list of master keys on the given file
# @option --rm-age <file>                  remove the provided comma-separated list of age recipients from the list of master keys on the given file
# @option --add-pgp <file>                 add the provided comma-separated list of PGP fingerprints to the list of master keys on the given file
# @option --rm-pgp <file>                  remove the provided comma-separated list of PGP fingerprints from the list of master keys on the given file
# @option --filename-override <file>       Use this filename instead of the provided argument for loading configuration, and for determining input type and output type
# @option --decryption-order <value>       comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --enable-local-keyservice          use local key service
# @option --keyservice <value>             Specify the key services to use in addition to the local one.
# @arg file
rotate() {
    :;
}
# }} sops rotate

# {{ sops edit
# @cmd edit an encrypted file
# @option -k --kms <value>                comma separated list of KMS ARNs [$SOPS_KMS_ARN]
# @option --aws-profile <file>            The AWS profile to use for requests to AWS
# @option --gcp-kms <value>               comma separated list of GCP KMS resource IDs [$SOPS_GCP_KMS_IDS]
# @option --azure-kv <value>              comma separated list of Azure Key Vault URLs [$SOPS_AZURE_KEYVAULT_URLS]
# @option --hc-vault-transit <value>      comma separated list of vault's key URI (e.g. 'https://vault.example.org:8200/v1/transit/keys/dev') [$SOPS_VAULT_URIS]
# @option -p --pgp <value>                comma separated list of PGP fingerprints [$SOPS_PGP_FP]
# @option -a --age <value>                comma separated list of age recipients [$SOPS_AGE_RECIPIENTS]
# @option --input-type <value>            currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>           currently json, yaml, dotenv and binary are supported.
# @option --unencrypted-suffix <value>    override the unencrypted key suffix.
# @option --encrypted-suffix <value>      override the encrypted key suffix.
# @option --unencrypted-regex <value>     set the unencrypted key regex.
# @option --encrypted-regex <value>       set the encrypted key regex.
# @option --encryption-context <value>    comma separated list of KMS encryption context key:value pairs
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @flag -s --show-master-keys             display master encryption keys in the file during editing
# @flag --ignore-mac                      ignore Message Authentication Code during decryption
# @option --decryption-order <value>      comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --enable-local-keyservice         use local key service
# @option --keyservice <value>            Specify the key services to use in addition to the local one.
# @arg file
edit() {
    :;
}
# }} sops edit

# {{ sops set
# @cmd set a specific key or branch in the input document.
# @option --input-type <value>          currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>         currently json, yaml, dotenv and binary are supported.
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @flag --ignore-mac                    ignore Message Authentication Code during decryption
# @option --decryption-order <value>    comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --enable-local-keyservice       use local key service
# @option --keyservice <value>          Specify the key services to use in addition to the local one.
# @arg file
# @arg index
# @arg value
set() {
    :;
}
# }} sops set

# {{ sops unset
# @cmd unset a specific key or branch in the input document.
# @option --input-type <value>          currently json, yaml, dotenv and binary are supported.
# @option --output-type <value>         currently json, yaml, dotenv and binary are supported.
# @option --shamir-secret-sharing-threshold <value>  the number of master keys required to retrieve the data key with shamir (default: 0)
# @flag --ignore-mac                    ignore Message Authentication Code during decryption
# @option --decryption-order <value>    comma separated list of decryption key types [$SOPS_DECRYPTION_ORDER]
# @flag --idempotent                    do nothing if the given index does not exist
# @flag --enable-local-keyservice       use local key service
# @option --keyservice <value>          Specify the key services to use in addition to the local one.
# @arg file
# @arg index
unset() {
    :;
}
# }} sops unset

command eval "$(argc --argc-eval "$0" "$@")"