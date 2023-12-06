#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version       show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -h --help       show this help message and exit
# @flag -v --verbose    Causes Ansible to print more debug messages.
# @arg type*

# {{ ansible-galaxy collection
# @cmd Manage an Ansible Galaxy collection.
# @flag -h --help    show this help message and exit
# @arg collection_action*
collection() {
    :;
}

# {{{ ansible-galaxy collection download
# @cmd Download collections and their dependencies as a tarball for an offline install.
# @flag -h --help                               show this help message and exit
# @option -s --server <API_SERVER>              The Galaxy API server URL
# @option --token <API_KEY>                     The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>                   The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                       Ignore SSL certificate validation errors.
# @option --timeout                             The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                            Causes Ansible to print more debug messages.
# @flag --clear-response-cache                  Clear the existing server response cache.
# @flag --no-cache                              Do not use the server response cache.
# @flag -n --no-deps                            Don't download collection(s) listed as dependencies.
# @option -p --download-path <DOWNLOAD_PATH>    The directory to download the collections to.
# @option -r --requirements-file <REQUIREMENTS_FILE>  A file containing a list of collections to be downloaded.
# @flag --pre                                   Include pre-release versions.
# @arg collection[`_choice_collection`]         Collection(s)
collection::download() {
    :;
}
# }}} ansible-galaxy collection download

# {{{ ansible-galaxy collection init
# @cmd Initialize new collection with the base structure of a collection.
# @flag -h --help                     show this help message and exit
# @option -s --server <API_SERVER>    The Galaxy API server URL
# @option --token <API_KEY>           The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>         The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs             Ignore SSL certificate validation errors.
# @option --timeout                   The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                  Causes Ansible to print more debug messages.
# @flag -f --force                    Force overwriting an existing role or collection
# @option --init-path <INIT_PATH>     The path in which the skeleton collection will be created.
# @option --collection-skeleton <COLLECTION_SKELETON>  The path to a collection skeleton that the new collection should be based upon.
# @arg collection_path                Collection name
collection::init() {
    :;
}
# }}} ansible-galaxy collection init

# {{{ ansible-galaxy collection build
# @cmd Build an Ansible collection artifact that can be published to Ansible Galaxy.
# @flag -h --help                          show this help message and exit
# @option -s --server <API_SERVER>         The Galaxy API server URL
# @option --token <API_KEY>                The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>              The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                  Ignore SSL certificate validation errors.
# @option --timeout                        The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                       Causes Ansible to print more debug messages.
# @flag -f --force                         Force overwriting an existing role or collection
# @option --output-path <OUTPUT_PATH>      The path in which the collection is built to.
# @arg collection[`_choice_collection`]    Path to the collection(s) directory to build.
collection::build() {
    :;
}
# }}} ansible-galaxy collection build

# {{{ ansible-galaxy collection publish
# @cmd Publish a collection artifact to Ansible Galaxy.
# @flag -h --help                              show this help message and exit
# @option -s --server <API_SERVER>             The Galaxy API server URL
# @option --token <API_KEY>                    The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>                  The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                      Ignore SSL certificate validation errors.
# @option --timeout                            The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                           Causes Ansible to print more debug messages.
# @flag --no-wait                              Don't wait for import validation results.
# @option --import-timeout <IMPORT_TIMEOUT>    The time to wait for the collection import process to finish.
# @arg collection_path                         The path to the collection tarball to publish.
collection::publish() {
    :;
}
# }}} ansible-galaxy collection publish

# {{{ ansible-galaxy collection install
# @cmd Install collection(s) from file(s), URL(s) or Ansible Galaxy
# @flag -h --help                     show this help message and exit
# @option -s --server <API_SERVER>    The Galaxy API server URL
# @option --token <API_KEY>           The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>         The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs             Ignore SSL certificate validation errors.
# @option --timeout                   The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                  Causes Ansible to print more debug messages.
# @flag -f --force                    Force overwriting an existing role or collection
# @flag --clear-response-cache        Clear the existing server response cache.
# @flag --no-cache                    Do not use the server response cache.
# @flag -i --ignore-errors            Ignore errors during installation and continue with the next specified collection.
# @flag -n --no-deps                  Don't download collections listed as dependencies.
# @flag --force-with-deps             Force overwriting an existing collection and its dependencies.
# @option -p --collections-path <COLLECTIONS_PATH>  The path to the directory containing your collections.
# @option -r --requirements-file <REQUIREMENTS_FILE>  A file containing a list of collections to be installed.
# @flag --pre                         Include pre-release versions.
# @flag -U --upgrade                  Upgrade installed collection artifacts.
# @option --keyring                   The keyring used during signature verification
# @flag --disable-gpg-verify          Disable GPG signature verification when installing collections from a Galaxy server
# @option --signature <SIGNATURES>    An additional signature source to verify the authenticity of the MANIFEST.json before installing the collection from a Galaxy server.
# @option --required-valid-signature-count <REQUIRED_VALID_SIGNATURE_COUNT>  The number of signatures that must successfully verify the collection.
# @option --ignore-signature-status-code[EXPSIG|EXPKEYSIG|REVKEYSIG|BADSIG|ERRSIG|NO_PUBKEY|MISSING_PASSPHRASE|BAD_PASSPHRASE|NODATA|UNEXPECTED|ERROR|FAILURE|BADARMOR|KEYEXPIRED|KEYREVOKED|NO_SECKEY]  ==SUPPRESS==.
# @option --ignore-signature-status-codes*[EXPSIG|EXPKEYSIG|REVKEYSIG|BADSIG|ERRSIG|NO_PUBKEY|MISSING_PASSPHRASE|BAD_PASSPHRASE|NODATA|UNEXPECTED|ERROR|FAILURE|BADARMOR|KEYEXPIRED|KEYREVOKED|NO_SECKEY]  A space separated list of status codes to ignore during signature verification (for example, NO_PUBKEY FAILURE).
# @flag --offline                     Install collection artifacts (tarballs) without contacting any distribution servers.
# @arg collection_path                The collection(s) name or path/url to a tar.gz collection artifact.
collection::install() {
    :;
}
# }}} ansible-galaxy collection install

# {{{ ansible-galaxy collection list
# @cmd Show the name and version of each collection installed in the collections_path.
# @flag -h --help                          show this help message and exit
# @option -s --server <API_SERVER>         The Galaxy API server URL
# @option --token <API_KEY>                The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>              The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                  Ignore SSL certificate validation errors.
# @option --timeout                        The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                       Causes Ansible to print more debug messages.
# @option -p --collections-path <COLLECTIONS_PATH>  One or more directories to search for collections in addition to the default COLLECTIONS_PATHS.
# @option --format[human|yaml|json]        Format to display the list of collections in.
# @arg collection[`_choice_collection`]    Collection
collection::list() {
    :;
}
# }}} ansible-galaxy collection list

# {{{ ansible-galaxy collection verify
# @cmd Compare checksums with the collection(s) found on the server and the installed copy.
# @flag -h --help                     show this help message and exit
# @option -s --server <API_SERVER>    The Galaxy API server URL
# @option --token <API_KEY>           The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>         The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs             Ignore SSL certificate validation errors.
# @option --timeout                   The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                  Causes Ansible to print more debug messages.
# @option -p --collections-path <COLLECTIONS_PATH>  One or more directories to search for collections in addition to the default COLLECTIONS_PATHS.
# @flag -i --ignore-errors            Ignore errors during verification and continue with the next specified collection.
# @flag --offline                     Validate collection integrity locally without contacting server for canonical manifest hash.
# @option -r --requirements-file <REQUIREMENTS_FILE>  A file containing a list of collections to be verified.
# @option --keyring                   The keyring used during signature verification
# @option --signature <SIGNATURES>    An additional signature source to verify the authenticity of the MANIFEST.json before using it to verify the rest of the contents of a collection from a Galaxy server.
# @option --required-valid-signature-count <REQUIRED_VALID_SIGNATURE_COUNT>  The number of signatures that must successfully verify the collection.
# @option --ignore-signature-status-code[EXPSIG|EXPKEYSIG|REVKEYSIG|BADSIG|ERRSIG|NO_PUBKEY|MISSING_PASSPHRASE|BAD_PASSPHRASE|NODATA|UNEXPECTED|ERROR|FAILURE|BADARMOR|KEYEXPIRED|KEYREVOKED|NO_SECKEY]  ==SUPPRESS==.
# @option --ignore-signature-status-codes*[EXPSIG|EXPKEYSIG|REVKEYSIG|BADSIG|ERRSIG|NO_PUBKEY|MISSING_PASSPHRASE|BAD_PASSPHRASE|NODATA|UNEXPECTED|ERROR|FAILURE|BADARMOR|KEYEXPIRED|KEYREVOKED|NO_SECKEY]  A space separated list of status codes to ignore during signature verification (for example, NO_PUBKEY FAILURE).
# @arg collection_path                The installed collection(s) name.
collection::verify() {
    :;
}
# }}} ansible-galaxy collection verify
# }} ansible-galaxy collection

# {{ ansible-galaxy role
# @cmd Manage an Ansible Galaxy role.
# @flag -h --help    show this help message and exit
# @arg role_action*
role() {
    :;
}

# {{{ ansible-galaxy role init
# @cmd Initialize new role with the base structure of a role.
# @flag -h --help                            show this help message and exit
# @option -s --server <API_SERVER>           The Galaxy API server URL
# @option --token <API_KEY>                  The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>                The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                    Ignore SSL certificate validation errors.
# @option --timeout                          The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                         Causes Ansible to print more debug messages.
# @flag -f --force                           Force overwriting an existing role or collection
# @flag --offline                            Don't query the galaxy API when creating roles
# @option --init-path <INIT_PATH>            The path in which the skeleton role will be created.
# @option --role-skeleton <ROLE_SKELETON>    The path to a role skeleton that the new role should be based upon.
# @option --type <ROLE_TYPE>                 Initialize using an alternate role type.
# @arg role_name                             Role name
role::init() {
    :;
}
# }}} ansible-galaxy role init

# {{{ ansible-galaxy role remove
# @cmd Delete roles from roles_path.
# @flag -h --help                         show this help message and exit
# @option -s --server <API_SERVER>        The Galaxy API server URL
# @option --token <API_KEY>               The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>             The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                 Ignore SSL certificate validation errors.
# @option --timeout                       The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                      Causes Ansible to print more debug messages.
# @option -p --roles-path <ROLES_PATH>    The path to the directory containing your roles.
# @arg role                               Role(s)
role::remove() {
    :;
}
# }}} ansible-galaxy role remove

# {{{ ansible-galaxy role delete
# @cmd Removes the role from Galaxy.
# @flag -h --help                     show this help message and exit
# @option -s --server <API_SERVER>    The Galaxy API server URL
# @option --token <API_KEY>           The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>         The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs             Ignore SSL certificate validation errors.
# @option --timeout                   The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                  Causes Ansible to print more debug messages.
# @arg github_user                    GitHub username
# @arg github_repo                    GitHub repository
role::delete() {
    :;
}
# }}} ansible-galaxy role delete

# {{{ ansible-galaxy role list
# @cmd Show the name and version of each role installed in the roles_path.
# @flag -h --help                         show this help message and exit
# @option -s --server <API_SERVER>        The Galaxy API server URL
# @option --token <API_KEY>               The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>             The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                 Ignore SSL certificate validation errors.
# @option --timeout                       The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                      Causes Ansible to print more debug messages.
# @option -p --roles-path <ROLES_PATH>    The path to the directory containing your roles.
# @arg role                               Role
role::list() {
    :;
}
# }}} ansible-galaxy role list

# {{{ ansible-galaxy role search
# @cmd Search the Galaxy database by tags, platforms, author and multiple keywords.
# @flag -h --help                        show this help message and exit
# @option -s --server <API_SERVER>       The Galaxy API server URL
# @option --token <API_KEY>              The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>            The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                Ignore SSL certificate validation errors.
# @option --timeout                      The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                     Causes Ansible to print more debug messages.
# @option --platforms                    list of OS platforms to filter by
# @option --galaxy-tags <GALAXY_TAGS>    list of galaxy tags to filter by
# @option --author                       GitHub username
# @arg searchterm                        Search terms
role::search() {
    :;
}
# }}} ansible-galaxy role search

# {{{ ansible-galaxy role import
# @cmd Import a role into a galaxy server
# @flag -h --help                     show this help message and exit
# @option -s --server <API_SERVER>    The Galaxy API server URL
# @option --token <API_KEY>           The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>         The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs             Ignore SSL certificate validation errors.
# @option --timeout                   The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                  Causes Ansible to print more debug messages.
# @flag --no-wait                     Don't wait for import results.
# @option --branch <REFERENCE>        The name of a branch to import.
# @option --role-name <ROLE_NAME>     The name the role should have, if different than the repo name
# @flag --status                      Check the status of the most recent import request for given github_user/github_repo.
# @arg github_user                    GitHub username
# @arg github_repo                    GitHub repository
role::import() {
    :;
}
# }}} ansible-galaxy role import

# {{{ ansible-galaxy role setup
# @cmd Manage the integration between Galaxy and the given source.
# @flag -h --help                         show this help message and exit
# @option -s --server <API_SERVER>        The Galaxy API server URL
# @option --token <API_KEY>               The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>             The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                 Ignore SSL certificate validation errors.
# @option --timeout                       The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                      Causes Ansible to print more debug messages.
# @option -p --roles-path <ROLES_PATH>    The path to the directory containing your roles.
# @option --remove <REMOVE_ID>            Remove the integration matching the provided ID value.
# @flag --list                            List all of your integrations.
# @arg source                             Source
# @arg github_user                        GitHub username
# @arg github_repo                        GitHub repository
# @arg secret                             Secret
role::setup() {
    :;
}
# }}} ansible-galaxy role setup

# {{{ ansible-galaxy role info
# @cmd View more details about a specific role.
# @flag -h --help                                 show this help message and exit
# @option -s --server <API_SERVER>                The Galaxy API server URL
# @option --token <API_KEY>                       The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>                     The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                         Ignore SSL certificate validation errors.
# @option --timeout                               The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                              Causes Ansible to print more debug messages.
# @option -p --roles-path <ROLES_PATH>            The path to the directory containing your roles.
# @flag --offline                                 Don't query the galaxy API when creating roles
# @arg role_name-version <role_name[,version]>    role
role::info() {
    :;
}
# }}} ansible-galaxy role info

# {{{ ansible-galaxy role install
# @cmd Install role(s) from file(s), URL(s) or Ansible Galaxy
# @flag -h --help                          show this help message and exit
# @option -s --server <API_SERVER>         The Galaxy API server URL
# @option --token <API_KEY>                The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @option --api-key <API_KEY>              The Ansible Galaxy API key which can be found at https://galaxy.ansible.com/me/preferences.
# @flag -c --ignore-certs                  Ignore SSL certificate validation errors.
# @option --timeout                        The time to wait for operations against the galaxy server, defaults to 60s.
# @flag -v --verbose                       Causes Ansible to print more debug messages.
# @flag -f --force                         Force overwriting an existing role or collection
# @option -p --roles-path <ROLES_PATH>     The path to the directory containing your roles.
# @flag -i --ignore-errors                 Ignore errors and continue with the next specified role.
# @flag -n --no-deps                       Don't download roles listed as dependencies.
# @flag --force-with-deps                  Force overwriting an existing role and its dependencies.
# @option -r --role-file <REQUIREMENTS>    A file containing a list of roles to be installed.
# @flag -g --keep-scm-meta                 Use tar instead of the scm archive option when packaging the role.
# @arg role_name                           Role name, URL or tar file
role::install() {
    :;
}
# }}} ansible-galaxy role install
# }} ansible-galaxy role

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_collection() {
    ansible-galaxy collection list | _argc_util_transform_table 'Collection;Version' '\t'   
}

command eval "$(argc --argc-eval "$0" "$@")"