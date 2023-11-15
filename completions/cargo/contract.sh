#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ cargo contract new
# @cmd Setup and create a new smart contract project
# @option -t --target-dir <TARGET_DIR>    The optional target directory for the contract project
# @flag -h --help                         Print help
# @arg name!                              The name of the newly created smart contract
new() {
    :;
}
# }} cargo contract new

# {{ cargo contract build
# @cmd Compiles the contract, generates metadata, bundles both together in a `<name>.contract` file
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract to build
# @flag --release                            By default the contract is compiled with debug functionality included.
# @flag --offline                            Build offline
# @flag --lint                               Performs linting checks during the build process
# @option --generate <BUILD_ARTIFACT>        Which build artifacts to generate.
# @option --features*,[`_choice_feature`]    Space or comma separated list of features to activate
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @option -Z --unstable-options <OPTIONS>    Use the original manifest (Cargo.toml), do not modify for build optimizations
# @option --optimization-passes <OPTIMIZATION_PASSES>  Number of optimization passes, passed as an argument to `wasm-opt`.
# @flag --keep-debug-symbols                 Do not remove symbols (Wasm name section) when optimizing.
# @flag --output-json                        Export the build output in JSON format
# @flag --skip-wasm-validation               Don't perform wasm validation checks e.g. for permitted imports
# @option --target[`_choice_target`]         Which bytecode to build the contract into
# @flag -h --help                            Print help (see a summary with '-h')
build() {
    :;
}
# }} cargo contract build

# {{ cargo contract check
# @cmd Check that the code builds as Wasm; does not output any `<name>.contract` artifact to the `target/` directory
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract to build
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @option --features*,[`_choice_feature`]    Space or comma separated list of features to activate
# @option -Z --unstable-options <OPTIONS>    Use the original manifest (Cargo.toml), do not modify for build optimizations
# @option --target[`_choice_target`]         [default: wasm]
# @flag -h --help                            Print help (see a summary with '-h')
check() {
    :;
}
# }} cargo contract check

# {{ cargo contract upload
# @cmd Upload contract code
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option --url <url>                        Websockets url of a substrate node
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag --skip-confirm                       Before submitting a transaction, do not ask the user for confirmation
# @flag --output-json                        Export the call output in JSON format
# @flag -h --help                            Print help (see a summary with '-h')
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
upload() {
    :;
}
# }} cargo contract upload

# {{ cargo contract instantiate
# @cmd Instantiate a contract
# @option --constructor <constructor>        The name of the contract constructor to call
# @option --args*                            The constructor arguments, encoded as strings
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option --url <url>                        Websockets url of a substrate node
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag --skip-confirm                       Before submitting a transaction, do not ask the user for confirmation
# @option --value <value>                    Transfers an initial balance to the instantiated contract
# @option --gas <gas>                        Maximum amount of gas to be used for this command.
# @option --proof-size <PROOF_SIZE>          Maximum proof size for this instantiation.
# @option --salt                             A salt used in the address derivation of the new contract.
# @flag --output-json                        Export the instantiate output in JSON format
# @flag -h --help                            Print help (see a summary with '-h')
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
instantiate() {
    :;
}
# }} cargo contract instantiate

# {{ cargo contract call
# @cmd Call a contract
# @option --contract <contract>              The address of the the contract to call
# @option -m --message                       The name of the contract message to call
# @option --args*                            The arguments of the contract message to call
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option --url <url>                        Websockets url of a substrate node
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag --skip-confirm                       Before submitting a transaction, do not ask the user for confirmation
# @option --gas <gas>                        Maximum amount of gas (execution time) to be used for this command.
# @option --proof-size <PROOF_SIZE>          Maximum proof size for this call.
# @option --value <value>                    The value to be transferred as part of the call
# @flag --output-json                        Export the call output in JSON format
# @flag -h --help                            Print help (see a summary with '-h')
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
call() {
    :;
}
# }} cargo contract call

# {{ cargo contract encode
# @cmd Encodes a contracts input calls and their arguments
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option -m --message                       The name of the contract message to encode
# @option --args*                            The arguments to encode
# @flag -h --help                            Print help
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
encode() {
    :;
}
# }} cargo contract encode

# {{ cargo contract decode
# @cmd Decodes a contracts input or output data (supplied in hex-encoding)
# @option -t --type[event|message|constructor]    The type of data to encode
# @option -d --data                               The data to decode; this has to be a hex value starting with `0x`
# @flag -h --help                                 Print help
# @arg type!
# @arg data!
decode() {
    :;
}
# }} cargo contract decode

# {{ cargo contract remove
# @cmd Remove contract code
# @option --code-hash <CODE_HASH>            The hash of the smart contract code already uploaded to the chain
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option --url <url>                        Websockets url of a substrate node
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag --skip-confirm                       Before submitting a transaction, do not ask the user for confirmation
# @flag --output-json                        Export the call output as JSON
# @flag -h --help                            Print help (see a summary with '-h')
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
remove() {
    :;
}
# }} cargo contract remove

# {{ cargo contract info
# @cmd Display information about a contract
# @option --contract <contract>    The address of the contract to display info of [env: CONTRACT=]
# @option --url <url>              Websockets url of a substrate node [default: ws://localhost:9944]
# @flag --output-json              Export the instantiate output in JSON format
# @flag -h --help                  Print help
# @arg contract!
info() {
    :;
}
# }} cargo contract info

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_feature() {
    _helper_package_json | yq '.features | keys | .[]'
}

_choice_target() {
    rustup target list --installed
}

_helper_metadata_json() {
    cargo metadata --format-version 1 --no-deps
}

_helper_package_json() {
    metadata_json="$(_helper_metadata_json)"
    if [[ -n "$argc_package" ]]; then
        echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
    else
        workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
        manifest_path="$(_argc_util_path_resolve -p "$workspace_root" Cargo.toml)"
        echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"