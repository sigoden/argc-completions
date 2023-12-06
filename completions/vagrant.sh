#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help             Print this help.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output

# {{ vagrant autocomplete
# @cmd manages autocomplete installation on host
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
autocomplete() {
    :;
}

# {{{ vagrant autocomplete install
# @cmd
# @flag -b --bash             Install bash autocomplete
# @flag -z --zsh              Install zsh autocomplete
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg shell-name <shell name>
autocomplete::install() {
    :;
}
# }}} vagrant autocomplete install
# }} vagrant autocomplete

# {{ vagrant box
# @cmd manages boxes: installation, removal, etc.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
box() {
    :;
}

# {{{ vagrant box add
# @cmd
# @flag -c --clean                          Clean any temporary download files
# @flag -f --force                          Overwrite an existing box if it exists
# @flag --insecure                          Do not validate SSL certificates
# @option --cacert <FILE>                   CA certificate for SSL download
# @option --capath <DIR>                    CA certificate directory for SSL download
# @option --cert <FILE>                     A client SSL cert, if needed
# @flag --location-trusted                  Trust 'Location' header from HTTP redirects and use the same credentials for subsequent urls as for the initial one
# @option --provider[`_choice_provider`]    Provider the box should satisfy
# @option --box-version <VERSION>           Constrain version of the added box
# @option --checksum                        Checksum for the box
# @option --checksum-type[md5|sha1|sha256] <TYPE>  Checksum type
# @option --name <BOX>                      Name of the box
# @flag --color                             Enable or disable color output
# @flag --no-color                          Enable or disable color output
# @flag --machine-readable                  Enable machine readable output
# @flag -v --version                        Display Vagrant version
# @flag --debug                             Enable debug output
# @flag --timestamp                         Enable timestamps on log output
# @flag --debug-timestamp                   Enable debug output with timestamps
# @flag --no-tty                            Enable non-interactive output
# @flag -h --help                           Print this help
# @arg name-url-or-path![`_choice_box_add`] <name url or path>
box::add() {
    :;
}
# }}} vagrant box add

# {{{ vagrant box list
# @cmd
# @flag -i --box-info         Displays additional information about the boxes
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
box::list() {
    :;
}
# }}} vagrant box list

# {{{ vagrant box outdated
# @cmd
# @flag --global              Check all boxes installed
# @flag -f --force            Force checks for latest box updates
# @flag --insecure            Do not validate SSL certificates
# @option --cacert <FILE>     CA certificate for SSL download
# @option --capath <DIR>      CA certificate directory for SSL download
# @option --cert <FILE>       A client SSL cert, if needed
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
box::outdated() {
    :;
}
# }}} vagrant box outdated

# {{{ vagrant box prune
# @cmd
# @option -p --provider[`_choice_provider`]    The specific provider type for the boxes to destroy.
# @flag -n --dry-run                           Only print the boxes that would be removed.
# @option --name[`_choice_box`]                The specific box name to check for outdated versions.
# @flag -f --force                             Destroy without confirmation even when box is in use.
# @flag -k --keep-active-boxes                 When combined with `--force`, will keep boxes still actively in use.
# @flag --color                                Enable or disable color output
# @flag --no-color                             Enable or disable color output
# @flag --machine-readable                     Enable machine readable output
# @flag -v --version                           Display Vagrant version
# @flag --debug                                Enable debug output
# @flag --timestamp                            Enable timestamps on log output
# @flag --debug-timestamp                      Enable debug output with timestamps
# @flag --no-tty                               Enable non-interactive output
# @flag -h --help                              Print this help
box::prune() {
    :;
}
# }}} vagrant box prune

# {{{ vagrant box remove
# @cmd
# @flag -f --force                              Remove without confirmation.
# @option --provider[`_choice_box_provider`]    The specific provider type for the box to remove
# @option --box-version[`_choice_box_version`] <VERSION>  The specific version of the box to remove
# @flag --all                                   Remove all available versions of the box
# @flag --color                                 Enable or disable color output
# @flag --no-color                              Enable or disable color output
# @flag --machine-readable                      Enable machine readable output
# @flag -v --version                            Display Vagrant version
# @flag --debug                                 Enable debug output
# @flag --timestamp                             Enable timestamps on log output
# @flag --debug-timestamp                       Enable debug output with timestamps
# @flag --no-tty                                Enable non-interactive output
# @flag -h --help                               Print this help
# @arg name![`_choice_box`]
box::remove() {
    :;
}
# }}} vagrant box remove

# {{{ vagrant box repackage
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name!
# @arg provider!
# @arg version!
box::repackage() {
    :;
}
# }}} vagrant box repackage

# {{{ vagrant box update
# @cmd
# @option --box               Update a specific box
# @option --provider          Update box with specific provider
# @flag -f --force            Overwrite an existing box if it exists
# @flag --insecure            Do not validate SSL certificates
# @option --cacert <FILE>     CA certificate for SSL download
# @option --capath <DIR>      CA certificate directory for SSL download
# @option --cert <FILE>       A client SSL cert, if needed
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
box::update() {
    :;
}
# }}} vagrant box update
# }} vagrant box

# {{ vagrant cloud
# @cmd manages everything related to Vagrant Cloud
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
cloud() {
    :;
}

# {{{ vagrant cloud auth
# @cmd For various authorization operations on Vagrant Cloud
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
cloud::auth() {
    :;
}

# {{{{ vagrant cloud auth login
# @cmd
# @flag -c --check            Checks if currently logged in
# @option -d --description    Set description for the Vagrant Cloud token
# @option -t --token          Set the Vagrant Cloud token
# @flag -u --username         USERNAME_OR_EMAIL Vagrant Cloud username or email address
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
cloud::auth::login() {
    :;
}
# }}}} vagrant cloud auth login

# {{{{ vagrant cloud auth logout
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
cloud::auth::logout() {
    :;
}
# }}}} vagrant cloud auth logout

# {{{{ vagrant cloud auth whoami
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg token
cloud::auth::whoami() {
    :;
}
# }}}} vagrant cloud auth whoami
# }}} vagrant cloud auth

# {{{ vagrant cloud box
# @cmd For managing a Vagrant box entry on Vagrant Cloud
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
cloud::box() {
    :;
}

# {{{{ vagrant cloud box create
# @cmd
# @option -d --description    Full description of the box
# @option -s <DESCRIPTION>    Short description of the box
# @flag --short-description
# @flag -p                    Makes box private
# @flag --private             Makes box private
# @flag --no-private          Makes box private
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
cloud::box::create() {
    :;
}
# }}}} vagrant cloud box create

# {{{{ vagrant cloud box delete
# @cmd
# @flag -f                    Do not prompt for deletion confirmation
# @flag --force               Do not prompt for deletion confirmation
# @flag --no-force            Do not prompt for deletion confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
cloud::box::delete() {
    :;
}
# }}}} vagrant cloud box delete

# {{{{ vagrant cloud box show
# @cmd
# @option --versions <VERSION>    Display box information for a specific version (can be defined multiple times)
# @flag --auth                    Authenticate with Vagrant Cloud if required before searching
# @flag --no-auth                 Authenticate with Vagrant Cloud if required before searching
# @flag --color                   Enable or disable color output
# @flag --no-color                Enable or disable color output
# @flag --machine-readable        Enable machine readable output
# @flag -v --version              Display Vagrant version
# @flag --debug                   Enable debug output
# @flag --timestamp               Enable timestamps on log output
# @flag --debug-timestamp         Enable debug output with timestamps
# @flag --no-tty                  Enable non-interactive output
# @flag -h --help                 Print this help
# @arg organization-box-name <organization/box-name>
cloud::box::show() {
    :;
}
# }}}} vagrant cloud box show

# {{{{ vagrant cloud box update
# @cmd
# @option -d --description    Full description of the box
# @option -s <DESCRIPTION>    Short description of the box
# @flag --short-description
# @flag -p                    Makes box private
# @flag --private             Makes box private
# @flag --no-private          Makes box private
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
cloud::box::update() {
    :;
}
# }}}} vagrant cloud box update
# }}} vagrant cloud box

# {{{ vagrant cloud provider
# @cmd For managing a Vagrant box's provider options
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
cloud::provider() {
    :;
}

# {{{{ vagrant cloud provider create
# @cmd
# @option -c --checksum <CHECKSUM_VALUE>    Checksum of the box for this provider.
# @option -C --checksum-type[md5|sha1|sha256|sha384|sha512] <TYPE>  Type of checksum used.
# @flag --color                             Enable or disable color output
# @flag --no-color                          Enable or disable color output
# @flag --machine-readable                  Enable machine readable output
# @flag -v --version                        Display Vagrant version
# @flag --debug                             Enable debug output
# @flag --timestamp                         Enable timestamps on log output
# @flag --debug-timestamp                   Enable debug output with timestamps
# @flag --no-tty                            Enable non-interactive output
# @flag -h --help                           Print this help
# @arg organization-box-name <organization/box-name>
# @arg provider-name
# @arg version
# @arg url
cloud::provider::create() {
    :;
}
# }}}} vagrant cloud provider create

# {{{{ vagrant cloud provider delete
# @cmd
# @flag -f                    Force deletion of box version provider without confirmation
# @flag --force               Force deletion of box version provider without confirmation
# @flag --no-force            Force deletion of box version provider without confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg provider-name
# @arg version
cloud::provider::delete() {
    :;
}
# }}}} vagrant cloud provider delete

# {{{{ vagrant cloud provider update
# @cmd
# @option -c --checksum <CHECKSUM_VALUE>    Checksum of the box for this provider.
# @option -C --checksum-type[md5|sha1|sha256|sha384|sha512] <TYPE>  Type of checksum used.
# @flag --color                             Enable or disable color output
# @flag --no-color                          Enable or disable color output
# @flag --machine-readable                  Enable machine readable output
# @flag -v --version                        Display Vagrant version
# @flag --debug                             Enable debug output
# @flag --timestamp                         Enable timestamps on log output
# @flag --debug-timestamp                   Enable debug output with timestamps
# @flag --no-tty                            Enable non-interactive output
# @flag -h --help                           Print this help
# @arg organization-box-name <organization/box-name>
# @arg provider-name
# @arg version
# @arg url
cloud::provider::update() {
    :;
}
# }}}} vagrant cloud provider update

# {{{{ vagrant cloud provider upload
# @cmd
# @flag -D                    Upload asset directly to backend storage
# @flag --direct              Upload asset directly to backend storage
# @flag --no-direct           Upload asset directly to backend storage
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg provider-name
# @arg version
# @arg box-file
cloud::provider::upload() {
    :;
}
# }}}} vagrant cloud provider upload
# }}} vagrant cloud provider

# {{{ vagrant cloud publish
# @cmd A complete solution for creating or updating a new box on Vagrant Cloud
# @option --box-version <VERSION>                Version of box to create
# @option --url                                  Remote URL to download this provider (cannot be used with provider-file)
# @option -d --description                       Full description of box
# @option --version-description <DESCRIPTION>    Description of the version to create
# @flag -f                                       Disables confirmation to create or update box
# @flag --force                                  Disables confirmation to create or update box
# @flag --no-force                               Disables confirmation to create or update box
# @flag -p                                       Makes box private
# @flag --private                                Makes box private
# @flag --no-private                             Makes box private
# @flag -r                                       Releases box
# @flag --release                                Releases box
# @flag --no-release                             Releases box
# @option -s <DESCRIPTION>                       Short description of the box
# @flag --short-description
# @option -c --checksum <CHECKSUM_VALUE>         Checksum of the box for this provider.
# @option -C --checksum-type[md5|sha1|sha256|sha384|sha512] <TYPE>  Type of checksum used.
# @flag --direct-upload                          Upload asset directly to backend storage
# @flag --no-direct-upload                       Upload asset directly to backend storage
# @flag --color                                  Enable or disable color output
# @flag --no-color                               Enable or disable color output
# @flag --machine-readable                       Enable machine readable output
# @flag -v --version                             Display Vagrant version
# @flag --debug                                  Enable debug output
# @flag --timestamp                              Enable timestamps on log output
# @flag --debug-timestamp                        Enable debug output with timestamps
# @flag --no-tty                                 Enable non-interactive output
# @flag -h --help                                Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
# @arg provider-name
# @arg provider-file
cloud::publish() {
    :;
}
# }}} vagrant cloud publish

# {{{ vagrant cloud search
# @cmd Search Vagrant Cloud for available boxes
# @flag -j --json             Formats results in JSON
# @option --page              The page to display Default: 1
# @flag -s --short            Shows a simple list of box names
# @option -o --order          Order to display results ('desc' or 'asc') Default: 'desc'
# @option -l --limit          Max number of search results Default: 25
# @option -p --provider       Filter search results to a single provider.
# @option --sort-by[created|downloads|updated] <SORT>  Field to sort results on Default: downloads
# @flag --auth                Authenticate with Vagrant Cloud if required before searching
# @flag --no-auth             Authenticate with Vagrant Cloud if required before searching
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg query
cloud::search() {
    :;
}
# }}} vagrant cloud search

# {{{ vagrant cloud version
# @cmd For managing a Vagrant box's versions
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
cloud::version() {
    :;
}

# {{{{ vagrant cloud version create
# @cmd
# @option -d --description    A description for this version
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
cloud::version::create() {
    :;
}
# }}}} vagrant cloud version create

# {{{{ vagrant cloud version delete
# @cmd
# @flag -f                    Force deletion without confirmation
# @flag --force               Force deletion without confirmation
# @flag --no-force            Force deletion without confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
cloud::version::delete() {
    :;
}
# }}}} vagrant cloud version delete

# {{{{ vagrant cloud version release
# @cmd
# @flag -f                    Release without confirmation
# @flag --force               Release without confirmation
# @flag --no-force            Release without confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
cloud::version::release() {
    :;
}
# }}}} vagrant cloud version release

# {{{{ vagrant cloud version revoke
# @cmd
# @flag -f                    Force revocation without confirmation
# @flag --force               Force revocation without confirmation
# @flag --no-force            Force revocation without confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
cloud::version::revoke() {
    :;
}
# }}}} vagrant cloud version revoke

# {{{{ vagrant cloud version update
# @cmd
# @option -d --description    A description for this version
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg organization-box-name <organization/box-name>
# @arg version
cloud::version::update() {
    :;
}
# }}}} vagrant cloud version update
# }}} vagrant cloud version
# }} vagrant cloud

# {{ vagrant destroy
# @cmd stops and deletes all traces of the vagrant machine
# @flag -f --force            Destroy without confirmation.
# @flag --parallel            Enable or disable parallelism if provider supports it (automatically enables force)
# @flag --no-parallel         Enable or disable parallelism if provider supports it (automatically enables force)
# @flag -g --graceful         Gracefully poweroff of VM
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
destroy() {
    :;
}
# }} vagrant destroy

# {{ vagrant global-status
# @cmd outputs status Vagrant environments for this user
# @flag --prune               Prune invalid entries.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
global-status() {
    :;
}
# }} vagrant global-status

# {{ vagrant halt
# @cmd stops the vagrant machine
# @flag -f --force            Force shut down (equivalent of pulling power)
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
halt() {
    :;
}
# }} vagrant halt

# {{ vagrant init
# @cmd initializes a new Vagrant environment by creating a Vagrantfile
# @option --box-version[`_choice_box_version`] <VERSION>  Version of the box to add
# @flag -f --force             Overwrite existing Vagrantfile
# @flag -m --minimal           Use minimal Vagrantfile template (no help comments).
# @option --output <FILE>      Output path for the box.
# @option --template <FILE>    Path to custom Vagrantfile template
# @flag --color                Enable or disable color output
# @flag --no-color             Enable or disable color output
# @flag --machine-readable     Enable machine readable output
# @flag -v --version           Display Vagrant version
# @flag --debug                Enable debug output
# @flag --timestamp            Enable timestamps on log output
# @flag --debug-timestamp      Enable debug output with timestamps
# @flag --no-tty               Enable non-interactive output
# @flag -h --help              Print this help
# @arg name[`_choice_box_search`]
# @arg url
init() {
    :;
}
# }} vagrant init

# {{ vagrant login
# @cmd
login() {
    :;
}
# }} vagrant login

# {{ vagrant package
# @cmd packages a running vagrant environment into a box
# @option --base <NAME>              Name of a VM in VirtualBox to package as a base box (VirtualBox Only)
# @option --output <NAME>            Name of the file to output
# @option --include*, <FILE,FILE>    Comma separated additional files to package with the box
# @option --info <FILE>              Path to a custom info.json file containing additional box information
# @option --vagrantfile <FILE>       Vagrantfile to package with the box
# @flag --color                      Enable or disable color output
# @flag --no-color                   Enable or disable color output
# @flag --machine-readable           Enable machine readable output
# @flag -v --version                 Display Vagrant version
# @flag --debug                      Enable debug output
# @flag --timestamp                  Enable timestamps on log output
# @flag --debug-timestamp            Enable debug output with timestamps
# @flag --no-tty                     Enable non-interactive output
# @flag -h --help                    Print this help
# @arg name-id <name|id>
package() {
    :;
}
# }} vagrant package

# {{ vagrant plugin
# @cmd manages plugins: install, uninstall, update, etc.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
plugin() {
    :;
}

# {{{ vagrant plugin expunge
# @cmd
# @flag --force               Do not prompt for confirmation
# @flag --local               Include plugins from local project for expunge
# @flag --local-only          Only expunge local project plugins
# @flag --global-only         Only expunge global plugins
# @flag --reinstall           Reinstall current plugins after expunge
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
plugin::expunge() {
    :;
}
# }}} vagrant plugin expunge

# {{{ vagrant plugin install
# @cmd
# @option --entry-point <NAME>                 The name of the entry point file for loading the plugin.
# @flag --plugin-clean-sources                 Remove all plugin sources defined so far (including defaults)
# @option --plugin-source <PLUGIN_SOURCE>      Add a RubyGems repository source
# @option --plugin-version <PLUGIN_VERSION>    Install a specific version of the plugin
# @flag --local                                Install plugin for local project only
# @flag --verbose                              Enable verbose output for plugin installation
# @flag --color                                Enable or disable color output
# @flag --no-color                             Enable or disable color output
# @flag --machine-readable                     Enable machine readable output
# @flag -v --version                           Display Vagrant version
# @flag --debug                                Enable debug output
# @flag --timestamp                            Enable timestamps on log output
# @flag --debug-timestamp                      Enable debug output with timestamps
# @flag --no-tty                               Enable non-interactive output
# @flag -h --help                              Print this help
# @arg name+
plugin::install() {
    :;
}
# }}} vagrant plugin install

# {{{ vagrant plugin license
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name!
# @arg license-file!
plugin::license() {
    :;
}
# }}} vagrant plugin license

# {{{ vagrant plugin list
# @cmd
# @flag --local               Include local project plugins
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
plugin::list() {
    :;
}
# }}} vagrant plugin list

# {{{ vagrant plugin repair
# @cmd
# @flag --local               Repair plugins in local project
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
plugin::repair() {
    :;
}
# }}} vagrant plugin repair

# {{{ vagrant plugin uninstall
# @cmd
# @flag --local               Remove plugin from local project
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg names*[`_choice_plugin`]
plugin::uninstall() {
    :;
}
# }}} vagrant plugin uninstall

# {{{ vagrant plugin update
# @cmd
# @flag --local               Update plugin in local project
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg names*[`_choice_plugin`]
plugin::update() {
    :;
}
# }}} vagrant plugin update
# }} vagrant plugin

# {{ vagrant port
# @cmd displays information about guest port mappings
# @option --guest <PORT>      Output the host port that maps to the given guest port
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
port() {
    :;
}
# }} vagrant port

# {{ vagrant powershell
# @cmd connects to machine via powershell remoting
# @option -c --command        Execute a powershell command directly
# @flag -e --elevated         Execute a powershell command with elevated permissions
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg extra-powershell-args* <extra powershell args>
powershell() {
    :;
}
# }} vagrant powershell

# {{ vagrant provision
# @cmd provisions the vagrant machine
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg vm-name[`_choice_machine`]
provision() {
    :;
}
# }} vagrant provision

# {{ vagrant push
# @cmd deploys code in this environment to a configured destination
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg strategy[atlas|ftp|heroku|sftp|local-exec]
push() {
    :;
}
# }} vagrant push

# {{ vagrant rdp
# @cmd connects to machine via RDP
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
# @arg extra-args* <extra args>
rdp() {
    :;
}
# }} vagrant rdp

# {{ vagrant reload
# @cmd restarts vagrant machine, loads new Vagrantfile configuration
# @flag --provision                   Enable or disable provisioning
# @flag --no-provision                Enable or disable provisioning
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag -f --force                    Force shut down (equivalent of pulling power)
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg vm-name[`_choice_machine`]
reload() {
    :;
}
# }} vagrant reload

# {{ vagrant resume
# @cmd resume a suspended vagrant machine
# @flag --provision                   Enable or disable provisioning
# @flag --no-provision                Enable or disable provisioning
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg vm-name[`_choice_machine`]
resume() {
    :;
}
# }} vagrant resume

# {{ vagrant serve
# @cmd start Vagrant server
serve() {
    :;
}
# }} vagrant serve

# {{ vagrant snapshot
# @cmd manages snapshots: saving, restoring, etc.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
snapshot() {
    :;
}

# {{{ vagrant snapshot delete
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg vm-name[`_choice_machine`]
# @arg name![`_choice_snapshot`]
snapshot::delete() {
    :;
}
# }}} vagrant snapshot delete

# {{{ vagrant snapshot list
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg vm-name[`_choice_machine`]
snapshot::list() {
    :;
}
# }}} vagrant snapshot list

# {{{ vagrant snapshot pop
# @cmd
# @flag --provision                   Enable or disable provisioning
# @flag --no-provision                Enable or disable provisioning
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag --no-delete                   Don't delete the snapshot after the restore
# @flag --no-start                    Don't start the snapshot after the restore
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg vm-name[`_choice_machine`]
snapshot::pop() {
    :;
}
# }}} vagrant snapshot pop

# {{{ vagrant snapshot push
# @cmd
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg vm-name[`_choice_machine`]
snapshot::push() {
    :;
}
# }}} vagrant snapshot push

# {{{ vagrant snapshot restore
# @cmd
# @flag --provision                   Enable or disable provisioning
# @flag --no-provision                Enable or disable provisioning
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag --no-start                    Don't start the snapshot after the restore
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg vm-name[`_choice_machine`]
# @arg name![`_choice_snapshot`]
snapshot::restore() {
    :;
}
# }}} vagrant snapshot restore

# {{{ vagrant snapshot save
# @cmd
# @flag -f --force            Replace snapshot without confirmation
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg vm-name[`_choice_machine`]
# @arg name![`_choice_snapshot`]
snapshot::save() {
    :;
}
# }}} vagrant snapshot save
# }} vagrant snapshot

# {{ vagrant ssh
# @cmd connects to machine via SSH
# @option -c --command        Execute an SSH command directly
# @flag -p --plain            Plain mode, leaves authentication up to user
# @flag -t                    Enables tty when executing an ssh command (defaults to true)
# @flag --tty                 Enables tty when executing an ssh command (defaults to true)
# @flag --no-tty              Enables tty when executing an ssh command (defaults to true)
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
# @arg extra-ssh-args* <extra ssh args>
ssh() {
    :;
}
# }} vagrant ssh

# {{ vagrant ssh-config
# @cmd outputs OpenSSH valid configuration to connect to the machine
# @option --host <NAME>       Name the host for the config
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
ssh-config() {
    :;
}
# }} vagrant ssh-config

# {{ vagrant status
# @cmd outputs status of the vagrant machine
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
status() {
    :;
}
# }} vagrant status

# {{ vagrant suspend
# @cmd suspends the machine
# @flag -a --all-global       Suspend all running vms globally.
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
suspend() {
    :;
}
# }} vagrant suspend

# {{ vagrant up
# @cmd starts and provisions the vagrant environment
# @flag --provision                   Enable or disable provisioning
# @flag --no-provision                Enable or disable provisioning
# @option --provision-with <x,y,z>    Enable only certain provisioners, by type or by name.
# @flag --destroy-on-error            Destroy machine if any fatal error happens (default to true)
# @flag --no-destroy-on-error         Destroy machine if any fatal error happens (default to true)
# @flag --parallel                    Enable or disable parallelism if provider supports it
# @flag --no-parallel                 Enable or disable parallelism if provider supports it
# @option --provider                  Back the machine with a specific provider
# @flag --install-provider            If possible, install the provider if it isn't installed
# @flag --no-install-provider         If possible, install the provider if it isn't installed
# @flag --color                       Enable or disable color output
# @flag --no-color                    Enable or disable color output
# @flag --machine-readable            Enable machine readable output
# @flag -v --version                  Display Vagrant version
# @flag --debug                       Enable debug output
# @flag --timestamp                   Enable timestamps on log output
# @flag --debug-timestamp             Enable debug output with timestamps
# @flag --no-tty                      Enable non-interactive output
# @flag -h --help                     Print this help
# @arg name-id[`_choice_machine`] <name|id>
up() {
    :;
}
# }} vagrant up

# {{ vagrant upload
# @cmd upload to machine via communicator
# @flag -t --temporary                             Upload source to temporary directory
# @flag -c --compress                              Use gzip compression for upload
# @option -C --compression-type[tgz|zip] <TYPE>    Type of compression to use
# @flag --color                                    Enable or disable color output
# @flag --no-color                                 Enable or disable color output
# @flag --machine-readable                         Enable machine readable output
# @flag -v --version                               Display Vagrant version
# @flag --debug                                    Enable debug output
# @flag --timestamp                                Enable timestamps on log output
# @flag --debug-timestamp                          Enable debug output with timestamps
# @flag --no-tty                                   Enable non-interactive output
# @flag -h --help                                  Print this help
# @arg path
# @arg destination
# @arg name-id[`_choice_machine`] <name|id>
upload() {
    :;
}
# }} vagrant upload

# {{ vagrant validate
# @cmd validates the Vagrantfile
# @flag -p --ignore-provider    Ignores provider config options
# @flag --color                 Enable or disable color output
# @flag --no-color              Enable or disable color output
# @flag --machine-readable      Enable machine readable output
# @flag -v --version            Display Vagrant version
# @flag --debug                 Enable debug output
# @flag --timestamp             Enable timestamps on log output
# @flag --debug-timestamp       Enable debug output with timestamps
# @flag --no-tty                Enable non-interactive output
# @flag -h --help               Print this help
validate() {
    :;
}
# }} vagrant validate

# {{ vagrant version
# @cmd prints current and latest Vagrant version
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
version() {
    :;
}
# }} vagrant version

# {{ vagrant winrm
# @cmd executes commands on a machine via WinRM
# @option -c --command                  Execute a WinRM command directly
# @flag -e --elevated                   Run with elevated credentials
# @option -s --shell[powershell|cmd]    Use specified shell
# @flag --color                         Enable or disable color output
# @flag --no-color                      Enable or disable color output
# @flag --machine-readable              Enable machine readable output
# @flag -v --version                    Display Vagrant version
# @flag --debug                         Enable debug output
# @flag --timestamp                     Enable timestamps on log output
# @flag --debug-timestamp               Enable debug output with timestamps
# @flag --no-tty                        Enable non-interactive output
# @flag -h --help                       Print this help
# @arg name-id[`_choice_machine`] <name|id>
winrm() {
    :;
}
# }} vagrant winrm

# {{ vagrant winrm-config
# @cmd outputs WinRM configuration to connect to the machine
# @option --host <NAME>       Name the host for the config
# @flag --color               Enable or disable color output
# @flag --no-color            Enable or disable color output
# @flag --machine-readable    Enable machine readable output
# @flag -v --version          Display Vagrant version
# @flag --debug               Enable debug output
# @flag --timestamp           Enable timestamps on log output
# @flag --debug-timestamp     Enable debug output with timestamps
# @flag --no-tty              Enable non-interactive output
# @flag -h --help             Print this help
# @arg name-id[`_choice_machine`] <name|id>
winrm-config() {
    :;
}
# }} vagrant winrm-config

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"