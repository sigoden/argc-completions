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
# @option --manifest-path <MANIFEST_PATH>          Path to the `Cargo.toml` of the contract to build
# @flag --release                                  By default the contract is compiled with debug functionality included.
# @flag --offline                                  Build offline
# @flag --lint                                     Performs extra linting checks for ink! specific issues during the build process.
# @option --generate <BUILD_ARTIFACT>              Which build artifacts to generate.
# @option --features*,[`_choice_feature`]          Space or comma separated list of features to activate
# @flag --quiet                                    No output printed to stdout
# @flag --verbose                                  Use verbose output
# @option -Z --unstable-options <OPTIONS>          Use the original manifest (Cargo.toml), do not modify for build optimizations
# @option --optimization-passes <OPTIMIZATION_PASSES>  Number of optimization passes, passed as an argument to `wasm-opt`.
# @flag --keep-debug-symbols                       Do not remove symbols (Wasm name section) when optimizing.
# @flag --output-json                              Export the build output in JSON format
# @flag --skip-wasm-validation                     Don't perform wasm validation checks e.g. for permitted imports
# @option --target[`_choice_target`]               Which bytecode to build the contract into
# @option --max-memory-pages <MAX_MEMORY_PAGES>    The maximum number of pages available for a wasm contract to allocate
# @flag --verifiable                               Executes the build inside a docker container to produce a verifiable bundle.
# @option --image                                  Specify a custom image for the verifiable build
# @flag -h --help                                  Print help (see a summary with '-h')
build() {
    :;
}
# }} cargo contract build

# {{ cargo contract check
# @cmd Check that the code builds as Wasm; does not output any `<name>.contract` artifact to the `target/` directory
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract to build
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -h --help                            Print help
check() {
    :;
}
# }} cargo contract check

# {{ cargo contract upload
# @cmd Upload contract code
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag -y --skip-confirm                    Before submitting a transaction, do not ask the user for confirmation
# @option --url <url>                        Websockets url of a Substrate node
# @option --config <config>                  Chain config to be used as part of the call
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
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
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag -y --skip-confirm                    Before submitting a transaction, do not ask the user for confirmation
# @option --url <url>                        Websockets url of a Substrate node
# @option --config <config>                  Chain config to be used as part of the call
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
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
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag -y --skip-confirm                    Before submitting a transaction, do not ask the user for confirmation
# @option --url <url>                        Websockets url of a Substrate node
# @option --config <config>                  Chain config to be used as part of the call
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
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
# @flag -h --help    Print help
decode() {
    :;
}

# {{{ cargo contract decode message
# @cmd
# @option -d --data    The data to decode; this has to be a hex value starting with `0x`
# @flag -h --help      Print help
# @arg data!
decode::message() {
    :;
}
# }}} cargo contract decode message

# {{{ cargo contract decode constructor
# @cmd Upload contract code
# @option -d --data    The data to decode; this has to be a hex value starting with `0x`
# @flag -h --help      Print help
# @arg data!
decode::constructor() {
    :;
}
# }}} cargo contract decode constructor

# {{{ cargo contract decode event
# @cmd Decode an event as input
# @option -s --signature-topic <SIGNATURE_TOPIC>  The signature topic of the event to be decoded; this has to be a hex value starting with `0x`
# @option -d --data    The data to decode; this has to be a hex value starting with `0x`
# @flag -h --help      Print help
# @arg signature_topic!
# @arg data!
decode::event() {
    :;
}
# }}} cargo contract decode event
# }} cargo contract decode

# {{ cargo contract remove
# @cmd Remove contract code
# @option --code-hash <CODE_HASH>            The hash of the smart contract code already uploaded to the chain
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @option -s --suri <suri>                   Secret key URI for the account deploying the contract.
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag -x --execute                         Submit the extrinsic for on-chain execution
# @option --storage-deposit-limit <STORAGE_DEPOSIT_LIMIT>  The maximum amount of balance that can be charged from the caller to pay for the storage.
# @flag --skip-dry-run                       Before submitting a transaction, do not dry-run it via RPC first
# @flag -y --skip-confirm                    Before submitting a transaction, do not ask the user for confirmation
# @option --url <url>                        Websockets url of a Substrate node
# @option --config <config>                  Chain config to be used as part of the call
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
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
# @flag --output-json              Export the instantiate output in JSON format
# @flag --binary                   Display the contract's Wasm bytecode
# @flag --all                      Display all contracts addresses
# @option --url <url>              Websockets url of a Substrate node [default: ws://localhost:9944]
# @option --config <config>        Chain config to be used as part of the call [default: Polkadot]
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
# @flag -h --help                  Print help
info() {
    :;
}
# }} cargo contract info

# {{ cargo contract storage
# @cmd Inspect the on-chain storage of a contract
# @option --contract <contract>              The address of the contract to inspect storage of [env: CONTRACT=]
# @flag --raw                                Fetch the "raw" storage keys and values for the contract
# @flag --output-json                        Export the instantiate output in JSON format
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract
# @flag -v --version                         Fetch the storage version of the pallet contracts (state query: contracts::palletVersion())
# @option --url <url>                        Websockets url of a Substrate node [default: ws://localhost:9944]
# @option --config <config>                  Chain config to be used as part of the call [default: Polkadot]
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
# @flag -h --help                            Print help
# @arg file                                  Path to a contract build artifact file: a raw `.wasm` file, a `.contract` bundle, or a `.json` metadata file
storage() {
    :;
}
# }} cargo contract storage

# {{ cargo contract verify
# @cmd Verifies that a given contract binary matches the build result of the specified workspace
# @option --manifest-path <MANIFEST_PATH>    Path to the `Cargo.toml` of the contract to verify
# @option --contract                         The reference Wasm contract (`*.contract`) that the workspace will be checked against
# @option --wasm                             The reference Wasm contract binary (`*.wasm`) that the workspace will be checked against
# @flag --quiet                              No output printed to stdout
# @flag --verbose                            Use verbose output
# @flag --output-json                        Output the result in JSON format
# @flag -h --help                            Print help
verify() {
    :;
}
# }} cargo contract verify

# {{ cargo contract generate-schema
# @cmd Generates schema from the current metadata specification
# @option --metadata    What type of metadata to generate
# @flag -h --help       Print help (see a summary with '-h')
generate-schema() {
    :;
}
# }} cargo contract generate-schema

# {{ cargo contract verify-schema
# @cmd Verify schema from the current metadata specification
# @option --schema             The path to metadata
# @option --bundle <bundle>    The .contract path to verify the metadata
# @option --metadata           What type of metadata to verify
# @flag --quiet                No output printed to stdout
# @flag --verbose              Use verbose output
# @flag --output-json          Output the result in JSON format
# @flag -h --help              Print help
# @arg schema!
verify-schema() {
    :;
}
# }} cargo contract verify-schema

# {{ cargo contract rpc
# @cmd Make a raw RPC call
# @flag --output-json          Export the call output in JSON format
# @option --url <url>          Websockets url of a Substrate node [default: ws://localhost:9944]
# @option --config <config>    Chain config to be used as part of the call [default: Polkadot]
# @option --chain[aleph-zero|astar|shiden|krest] <chain>  Name of a production chain to be communicated with
# @flag -h --help              Print help
# @arg method!                 The name of the method to call
# @arg params*                 The arguments of the method to call
rpc() {
    :;
}
# }} cargo contract rpc

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