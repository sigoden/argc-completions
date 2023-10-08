#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    help for sftpgo
# @flag -v --version

# {{ sftpgo acme
# @cmd Obtain TLS certificates from ACME-based CAs like Let's Encrypt
# @flag -h --help    help for acme
acme() {
    :;
}

# {{{ sftpgo acme run
# @cmd Register your account and obtain certificates
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag -h --help                  help for run
acme::run() {
    :;
}
# }}} sftpgo acme run
# }} sftpgo acme

# {{ sftpgo gen
# @cmd A collection of useful generators
# @flag -h --help    help for gen
gen() {
    :;
}

# {{{ sftpgo gen completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help    help for completion
gen::completion() {
    :;
}

# {{{{ sftpgo gen completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help    help for bash
gen::completion::bash() {
    :;
}
# }}}} sftpgo gen completion bash

# {{{{ sftpgo gen completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help    help for fish
gen::completion::fish() {
    :;
}
# }}}} sftpgo gen completion fish

# {{{{ sftpgo gen completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help    help for powershell
gen::completion::powershell() {
    :;
}
# }}}} sftpgo gen completion powershell

# {{{{ sftpgo gen completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help    help for zsh
gen::completion::zsh() {
    :;
}
# }}}} sftpgo gen completion zsh
# }}} sftpgo gen completion

# {{{ sftpgo gen man
# @cmd Generate man pages for sftpgo
# @option -d --dir <dir>    The directory to write the man pages (default "man")
# @flag -h --help           help for man
gen::man() {
    :;
}
# }}} sftpgo gen man
# }} sftpgo gen

# {{ sftpgo initprovider
# @cmd Initialize and/or updates the configured data provider
# @option -c --config-dir <dir>     Location for the config dir.
# @option --config-file <file>      Path to SFTPGo configuration file.
# @flag -h --help                   help for initprovider
# @flag --loaddata-clean            Determine if the loaddata-from file should be removed after a successful load.
# @option --loaddata-from <file>    Load users and folders from this file.
# @option --loaddata-mode <int>     Restore mode for data to load: 0 - new users are added, existing users are
initprovider() {
    :;
}
# }} sftpgo initprovider

# {{ sftpgo ping
# @cmd Issues an health check to SFTPGo
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag -h --help                  help for ping
ping() {
    :;
}
# }} sftpgo ping

# {{ sftpgo portable
# @cmd Serve a single directory/account
# @option --allowed-patterns* <file>           Allowed file patterns case insensitive.
# @option --az-access-tier <string>            Leave empty to use the default container setting
# @option --az-account-key <string>
# @option --az-account-name <string>
# @option --az-container <string>
# @option --az-download-concurrency <int>      How many parts are downloaded in parallel (default 5)
# @option --az-download-part-size <int>        The buffer size for multipart downloads (MB) (default 5)
# @option --az-endpoint <string>               Leave empty to use the default: "blob.core.windows.net"
# @option --az-key-prefix <string>             Allows to restrict access to the virtual folder identified by this prefix and its contents
# @option --az-sas-url <string>                Shared access signature URL
# @option --az-upload-concurrency <int>        How many parts are uploaded in parallel (default 5)
# @option --az-upload-part-size <int>          The buffer size for multipart uploads (MB) (default 5)
# @flag --az-use-emulator
# @option --crypto-passphrase <string>         Passphrase for encryption/decryption
# @option --denied-patterns* <file>            Denied file patterns case insensitive.
# @option -d --directory <dir>                 Path to the directory to serve.
# @option -f --fs-provider <file>              osfs => local filesystem (legacy value: 0) s3fs => AWS S3 compatible (legacy: 1) gcsfs => Google Cloud Storage (legacy: 2) azblobfs => Azure Blob Storage (legacy: 3) cryptfs => Encrypted local filesystem (legacy: 4) sftpfs => SFTP (legacy: 5) (default "osfs")
# @option --ftpd-cert <file>                   Path to the certificate file for FTPS
# @option --ftpd-key <file>                    Path to the key file for FTPS
# @option --ftpd-port <int>                    0 means a random unprivileged port, < 0 disabled (default -1)
# @option --gcs-automatic-credentials <int>    0 means explicit credentials using a JSON credentials file, 1 automatic
# @option --gcs-bucket <string>
# @option --gcs-credentials-file <file>        Google Cloud Storage JSON credentials file
# @option --gcs-key-prefix <string>            Allows to restrict access to the virtual folder identified by this prefix and its contents
# @option --gcs-storage-class <string>
# @option --grace-time <int>                   This grace time defines the number of seconds allowed for existing transfers to get completed before shutting down.
# @flag -h --help                              help for portable
# @option -l --log-file-path <file>            Leave empty to disable logging
# @option --log-level[debug|info|warn|error] <string>  Set the log level.
# @flag --log-utc-time                         Use UTC time for logging
# @option -p --password <string>               Leave empty to use an auto generated value
# @option --password-file <file>               Read the password from the specified file path.
# @option -g --permissions* <string>           User's permissions.
# @option -k --public-key* <string>
# @option --s3-access-key <string>
# @option --s3-access-secret <string>
# @option --s3-acl <string>
# @option --s3-bucket <string>
# @option --s3-endpoint <string>
# @flag --s3-force-path-style                  Force path style bucket URL
# @option --s3-key-prefix <string>             Allows to restrict access to the virtual folder identified by this prefix and its contents
# @option --s3-region <string>
# @option --s3-role-arn <string>
# @option --s3-storage-class <string>
# @option --s3-upload-concurrency <int>        How many parts are uploaded in parallel (default 2)
# @option --s3-upload-part-size <int>          The buffer size for multipart uploads (MB) (default 5)
# @option --sftp-buffer-size <int>             The size of the buffer (in MB) to use for transfers.
# @flag --sftp-disable-concurrent-reads        Concurrent reads are safe to use and disabling them will degrade performance.
# @option --sftp-endpoint <string>             SFTP endpoint as host:port for SFTP provider
# @option --sftp-fingerprints* <string>        SFTP fingerprints to verify remote host key for SFTP provider
# @option --sftp-key-path <path>               SFTP private key path for SFTP provider
# @option --sftp-password <string>             SFTP password for SFTP provider
# @option --sftp-prefix <path>                 SFTP prefix allows restrict all operations to a given path within the remote SFTP server
# @option --sftp-username <string>             SFTP user for SFTP provider
# @option -s --sftpd-port <int>                0 means a random unprivileged port, < 0 disabled
# @option -c --ssh-commands*[md5sum|sha1sum|sha256sum|cd|pwd|scp] <string>  SSH commands to enable.
# @option --start-directory <dir>              Alternate start directory.
# @option -u --username <string>               Leave empty to use an auto generated value
# @option --webdav-cert <file>                 Path to the certificate file for WebDAV over HTTPS
# @option --webdav-key <file>                  Path to the key file for WebDAV over HTTPS
# @option --webdav-port <int>                  0 means a random unprivileged port, < 0 disabled (default -1)
portable() {
    :;
}
# }} sftpgo portable

# {{ sftpgo resetprovider
# @cmd Reset the configured provider, any data will be lost
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag --force                    reset the provider without asking for confirmation
# @flag -h --help                  help for resetprovider
resetprovider() {
    :;
}
# }} sftpgo resetprovider

# {{ sftpgo resetpwd
# @cmd Reset the password for the specified administrator
# @option --admin <string>         Administrator username whose password to reset
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag -h --help                  help for resetpwd
resetpwd() {
    :;
}
# }} sftpgo resetpwd

# {{ sftpgo revertprovider
# @cmd Revert the configured data provider to a previous version
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag -h --help                  help for revertprovider
# @option --to-version <int>       23 means the version supported in v2.4.x (default 23)
revertprovider() {
    :;
}
# }} sftpgo revertprovider

# {{ sftpgo serve
# @cmd Start the SFTPGo service
# @option -c --config-dir <dir>         Location for the config dir.
# @option --config-file <file>          Path to SFTPGo configuration file.
# @option --grace-time <int>            Graceful shutdown is an option to initiate a shutdown without abrupt cancellation of the currently ongoing client-initiated transfer sessions.
# @flag -h --help                       help for serve
# @flag --loaddata-clean                Determine if the loaddata-from file should be removed after a successful load.
# @option --loaddata-from <file>        Load users and folders from this file.
# @option --loaddata-mode <int>         Restore mode for data to load: 0 - new users are added, existing users are
# @option --loaddata-scan <int>         Quota scan mode after data load: 0 - no quota scan 1 - scan quota 2 - scan quota if the user has quota restrictions This flag can be set using SFTPGO_LOADDATA_QUOTA_SCAN env var too.
# @flag -z --log-compress               Determine if the rotated log files should be compressed using gzip.
# @option -l --log-file-path <file>     Location for the log file.
# @option --log-level <string>          Set the log level.
# @option -a --log-max-age <int>        Maximum number of days to retain old log files.
# @option -b --log-max-backups <int>    Maximum number of old log files to retain.
# @option -s --log-max-size <int>       Maximum size in megabytes of the log file before it gets rotated.
# @flag --log-utc-time                  Use UTC time for logging.
serve() {
    :;
}
# }} sftpgo serve

# {{ sftpgo smtptest
# @cmd Test the SMTP configuration
# @option -c --config-dir <dir>    Location for the config dir.
# @option --config-file <file>     Path to SFTPGo configuration file.
# @flag -h --help                  help for smtptest
# @option --recipient <string>     email address to send the test e-mail to
smtptest() {
    :;
}
# }} sftpgo smtptest

# {{ sftpgo startsubsys
# @cmd Use sftpgo as SFTP file transfer subsystem
# @option -d --base-home-dir <dir>    If the user does not exist specify an alternate starting directory.
# @option -c --config-dir <dir>       Location for the config dir.
# @option --config-file <file>        Path to SFTPGo configuration file.
# @flag -h --help                     help for startsubsys
# @option --log-level <string>        Set the log level.
# @flag -j --log-to-journald          Send logs to journald.
# @flag --log-utc-time                Use UTC time for logging.
# @flag -p --preserve-home            If the user already exists, the existing home directory will not be changed
startsubsys() {
    :;
}
# }} sftpgo startsubsys

command eval "$(argc --argc-eval "$0" "$@")"